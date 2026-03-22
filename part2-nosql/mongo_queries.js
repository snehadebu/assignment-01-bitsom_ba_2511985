// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
  {
    product_id: "E001",
    name: "Smartphone",
    category: "Electronics",
    price: 20000,
    specifications: {
      brand: "Samsung",
      warranty: "1 year",
      voltage: "220V"
    },
    features: ["Touchscreen", "5G", "Dual SIM"]
  },
  {
    product_id: "C001",
    name: "T-Shirt",
    category: "Clothing",
    price: 500,
    details: {
      size: "M",
      fabric: "Cotton",
      color: "Blue"
    },
    available_sizes: ["S", "M", "L", "XL"]
  },
  {
    product_id: "G001",
    name: "Milk",
    category: "Groceries",
    price: 60,
    product_info: {
      expiry_date: "2024-01-10",
      weight: "1L"
    },
    nutrition: {
      calories: 150,
      protein: "8g",
      fat: "5g"
    }
  }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  "product_info.expiry_date": { $lt: "2025-01-01" }
});

// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({ category: 1 });

// This index improves query performance when filtering products by category,
// because MongoDB can quickly locate matching documents instead of scanning the entire collection.
