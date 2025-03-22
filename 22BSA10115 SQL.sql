// 1. Find all sales where the item is "Mochas"
db.sales.find({ item: "Mochas" })

// 2. Find all items priced below 15
db.sales.find({ price: { $lt: 15 } })

// 3. Find items with a price less than 10 or greater than 20
db.sales.find({ $or: [{ price: { $lt: 10 } }, { price: { $gt: 20 } }] })

// 4. Find all documents where the "quantity" field exists
db.sales.find({ quantity: { $exists: true } })

// 5. Find all documents where the color array contains "white"
db.products.find({ color: "white" })

// 6. Update the RAM of "xTablet" to 24
db.products.updateOne({ name: "xTablet" }, { $set: { "spec.ram": 24 } })

// 7. Find all products and return only their "spec" field
db.products.find({}, { spec: 1, _id: 0 })

// 8. Find all products and sort them by price in descending order
db.products.find().sort({ price: -1 })

// 9. Find the first 2 products skipping the first one
db.products.find().skip(1).limit(2)

// 10. Find all users whose name starts with "S" and price is greater than 700
db.products.find({ name: { $regex: "^S" }, price: { $gt: 700 } })

// 11. Calculate the total price of all items
db.sales.aggregate([{ $group: { _id: null, totalPrice: { $sum: "$price" } } }])

// 12. Project only the "size" field for each item
db.sales.find({}, { size: 1, _id: 0 })

// 13. Find items that are "Tall" size and group them by item
db.sales.aggregate([{ $match: { size: "Tall" } }, { $group: { _id: "$item", totalQuantity: { $sum: "$quantity" } } }])

// 14. Find the second item when sorted by price in ascending order
db.products.find().sort({ price: 1 }).skip(1).limit(1)

// 15. Group by items and calculate total number of items and average price
db.sales.aggregate([{ $group: { _id: "$item", totalItems: { $sum: "$quantity" }, avgPrice: { $avg: "$price" } } }])
