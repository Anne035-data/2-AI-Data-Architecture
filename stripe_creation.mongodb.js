// MongoDB Playground
// les collections créées doivent être ajoutés à la liste des drop "Nettoyer les collections existantes" car je suis en Developpements.
// Créer la base de données strip_nosql
use('strip_nosql');

// Nettoyer les collections existantes
db.transactions.drop();
db.error_logs.drop();
db.user_interactions.drop();
db.machine_learning_features.drop();
db.customer_feedback.drop();
db.merchant.drop();
db.currency_exchange_rates.drop()
db.product.drop();
db.country_region_codes.drop();


// Créer la collection "transactions" 
db.transactions.insertMany([
  {
      "transaction_id": "TX1003",
      "customer_id": "CUST004",
      "merchant_id": "MERCH002",
      "date": {
          "date": "2024-10-18T08:45:00Z",
          "year": 2024,
          "month": 10,
          "day": 18
      },
      "amount": 350,
      "currency": {
          "currency_code": "EUR",
          "exchange_rate": 1.1
      },
      "fraud_score": 0.2,
      "status": "completed",
      "location": {
          "country_code": "FR",
          "city": "Lyon"
      },
      "payment_method": {
          "type": "paypal",
          "provider": "Paypal"
      },
      "device": {
          "type": "desktop",
          "operating_system": "macOS"
      }
  },
  {
    "transaction_id": "TX12345",
    "customer_id": "CUST001",
    "merchant_id": "MERCH001",
    "date": {
        "date": "2024-10-17T12:30:00Z",
        "year": 2024,
        "month": 10,
        "day": 17
    },
    "amount": 100.50,
    "currency": {
        "currency_code": "USD",
        "exchange_rate": 1.0
    },
    "fraud_score": 0.85,
    "status": "completed",
    "location": {
        "country_code": "US",
        "city": "San Francisco"
    },
    "payment_method": {
        "type": "credit_card",
        "provider": "Visa"
    },
    "device": {
        "type": "mobile",
        "operating_system": "iOS"
    }
  },
  {
      "transaction_id": "TX1004",
      "customer_id": "CUST003",
      "merchant_id": "MERCH002",
      "date": {
          "date": "2024-10-18T08:45:00Z",
          "year": 2024,
          "month": 10,
          "day": 18
      },
      "amount": 350,
      "currency": {
          "currency_code": "EUR",
          "exchange_rate": 1.1
      },
      "fraud_score": 0.2,
      "status": "completed",
      "location": {
          "country_code": "FR",
          "city": "Lyon"
      },
      "payment_method": {
          "type": "paypal",
          "provider": "Paypal"
      },
      "device": {
          "type": "desktop",
          "operating_system": "macOS"
      }
  },
  {
      "transaction_id": "TX1005",
      "customer_id": "CUST005",
      "merchant_id": "MERCH003",
      "date": {
          "date": "2024-10-19T16:00:00Z",
          "year": 2024,
          "month": 10,
          "day": 19
      },
      "amount": 890.5,
      "currency": {
          "currency_code": "GBP",
          "exchange_rate": 1.3
      },
      "fraud_score": 0.75,
      "status": "fraudulent",
      "location": {
          "country_code": "UK",
          "city": "London"
      },
      "payment_method": {
          "type": "credit_card",
          "provider": "Visa"
      },
      "device": {
          "type": "mobile",
          "operating_system": "iOS"
      }
  },
  {
    "transaction_id": "TX54321",
    "customer_id": "CUST002",
    "merchant_id": "MERCH001",
    "date": {
      "date": "2024-11-05T14:20:00Z",
      "year": 2024,
      "month": 11,
      "day": 5
    },
    "amount": 249.99,
    "currency": {
      "currency_code": "USD",
      "exchange_rate": 1.0
    },
    "fraud_score": 0.3,
    "status": "completed",
    "location": {
      "country_code": "US",
      "city": "New York"
    },
    "payment_method": {
      "type": "credit_card",
      "provider": "Mastercard"
    },
    "device": {
      "type": "tablet",
      "operating_system": "Android"
    }
  },
  {
    "transaction_id": "TX67890",
    "customer_id": "CUST003",
    "merchant_id": "MERCH003",
    "date": {
      "date": "2024-12-01T10:45:00Z",
      "year": 2024,
      "month": 12,
      "day": 1
    },
    "amount": 45.25,
    "currency": {
      "currency_code": "GBP",
      "exchange_rate": 1.3
    },
    "fraud_score": 0.1,
    "status": "completed",
    "location": {
      "country_code": "UK",
      "city": "Manchester"
    },
    "payment_method": {
      "type": "bank_transfer",
      "provider": "HSBC"
    },
    "device": {
      "type": "desktop",
      "operating_system": "Windows"
    }
  },
  {
    "transaction_id": "TX98765",
    "customer_id": "CUST004",
    "merchant_id": "MERCH002",
    "date": {
      "date": "2024-09-30T18:30:00Z",
      "year": 2024,
      "month": 9,
      "day": 30
    },
    "amount": 89.99,
    "currency": {
      "currency_code": "EUR",
      "exchange_rate": 1.1
    },
    "fraud_score": 0.4,
    "status": "completed",
    "location": {
      "country_code": "FR",
      "city": "Paris"
    },
    "payment_method": {
      "type": "paypal",
      "provider": "PayPal"
    },
    "device": {
      "type": "mobile",
      "operating_system": "iOS"
    }
  }
]);

// Créer la collection "error_logs"
db.error_logs.insertMany([
  {
      "log_id": "LOG12345",
      "timestamp": "2024-10-17T14:00:00Z",
      "transaction_id": "TX12345",
      "severity": "error",
      "message": "Payment gateway timeout",
      "error_code": "504",
      "merchant_id": "MERCH001",
      "device_id": "DEV12345",
      "location": {
          "country_code": "US",
          "city": "San Francisco"
      }
  },
  {
      "log_id": "LOG1004",
      "timestamp": "2024-10-18T08:50:00Z",
      "transaction_id": "TX1004",
      "severity": "info",
      "message": "Transaction completed",
      "error_code": "200",
      "merchant_id": "MERCH002",
      "device_id": "DEV1004",
      "location": {
          "country_code": "FR",
          "city": "Lyon"
      }
  },
  {
      "log_id": "LOG1003",
      "timestamp": "2024-10-15T11:15:00Z",
      "transaction_id": "TX1003",
      "severity": "info",
      "message": "Transaction successful",
      "error_code": "200",
      "merchant_id": "MERCH001",
      "device_id": "DEV1003",
      "location": {
          "country_code": "US",
          "city": "San Francisco"
      }
  },
  {
      "log_id": "LOG1005",
      "timestamp": "2024-10-19T16:05:00Z",
      "transaction_id": "TX1005",
      "severity": "error",
      "message": "Transaction marked as fraudulent",
      "error_code": "400",
      "merchant_id": "MERCH003",
      "device_id": "DEV1005",
      "location": {
          "country_code": "UK",
          "city": "London"
      }
  }
]);

// Créer la collection user_interactions
db.user_interactions.insertMany([
  {
      "session_id": "SES12345",
      "customer_id": "CUST001",
      "start_time": "2024-10-17T12:00:00Z",
      "end_time": "2024-10-17T12:30:00Z",
      "clickstream": [
          {
              "timestamp": "2024-10-17T12:05:00Z",
              "page": "homepage",
              "action": "view",
              "element": "banner"
          },
          {
              "timestamp": "2024-10-17T12:15:00Z",
              "page": "product_page",
              "action": "click",
              "element": "add_to_cart"
          }
      ],
      "total_time_spent": 1800,
      "bounce_rate": 0.25
  },
  {
    "session_id": "SES1004",
    "customer_id": "CUST004",
    "start_time": "2024-10-18T07:30:00Z",
    "end_time": "2024-10-18T08:15:00Z",
    "clickstream": [
      {
        "timestamp": "2024-10-18T07:35:00Z",
        "page": "product_page",
        "action": "click",
        "element": "add_to_cart_button"
      }
    ],
    "total_time_spent": 2700,
    "bounce_rate": 0.2
  },
  {
    "session_id": "SES1003",
    "customer_id": "CUST003",
    "start_time": "2024-10-15T10:30:00Z",
    "end_time": "2024-10-15T11:00:00Z",
    "clickstream": [
      {
        "timestamp": "2024-10-15T10:35:00Z",
        "page": "homepage",
        "action": "view",
        "element": "promo_banner"
      },
      {
        "timestamp": "2024-10-15T10:55:00Z",
        "page": "checkout",
        "action": "click",
        "element": "buy_now_button"
      }
    ],
    "total_time_spent": 1800,
    "bounce_rate": 0.4
  },
  {
    "session_id": "SES1005",
    "customer_id": "CUST002",
    "start_time": "2024-10-15T10:30:00Z",
    "end_time": "2024-10-15T11:00:00Z",
    "clickstream": [
      {
        "timestamp": "2024-10-15T10:35:00Z",
        "page": "homepage",
        "action": "view",
        "element": "promo_banner"
      },
      {
        "timestamp": "2024-10-15T10:55:00Z",
        "page": "checkout",
        "action": "click",
        "element": "buy_now_button"
      }
    ],
    "total_time_spent": 1800,
    "bounce_rate": 0.4
  },
  {
    "session_id": "SES2468",
    "customer_id": "CUST005",
    "start_time": "2024-11-01T09:00:00Z",
    "end_time": "2024-11-01T09:45:00Z",
    "clickstream": [
      {
        "timestamp": "2024-11-01T09:10:00Z",
        "page": "category_page",
        "action": "view",
        "element": "product_list"
      },
      {
        "timestamp": "2024-11-01T09:25:00Z",
        "page": "product_page",
        "action": "click",
        "element": "add_to_cart"
      },
      {
        "timestamp": "2024-11-01T09:40:00Z",
        "page": "checkout",
        "action": "click",
        "element": "place_order"
      }
    ],
    "total_time_spent": 2700,
    "bounce_rate": 0.15
  },
  {
    "session_id": "SES3579",
    "customer_id": "CUST006",
    "start_time": "2024-11-15T14:00:00Z",
    "end_time": "2024-11-15T14:45:00Z",
    "clickstream": [
      {
        "timestamp": "2024-11-15T14:05:00Z",
        "page": "homepage",
        "action": "view",
        "element": "search_bar"
      },
      {
        "timestamp": "2024-11-15T14:15:00Z",
        "page": "search_results",
        "action": "click",
        "element": "product_card"
      },
      {
        "timestamp": "2024-11-15T14:35:00Z",
        "page": "cart",
        "action": "click",
        "element": "place_order"
      }
    ],
    "total_time_spent": 2700,
    "bounce_rate": 0.3
  },
  {
    "session_id": "SES4680",
    "customer_id": "CUST007",
    "start_time": "2024-12-01T18:00:00Z",
    "end_time": "2024-12-01T18:45:00Z",
    "clickstream": [
      {
        "timestamp": "2024-12-01T18:10:00Z",
        "page": "category_page",
        "action": "view",
        "element": "filters"
      },
      {
        "timestamp": "2024-12-01T18:25:00Z",
        "page": "product_page",
        "action": "click",
        "element": "add_to_wishlist"
      },
      {
        "timestamp": "2024-12-01T18:40:00Z",
        "page": "account",
        "action": "click",
        "element": "logout"
      }
    ],
    "total_time_spent": 2700,
    "bounce_rate": 0.2
  }
]);

// Créer la collection machine_learning_features
db.machine_learning_features.insertMany([
  {
      "model_id": "ML12345",
      "customer_id": "CUST001",
      "session_id": "SES12345",
      "features": {
          "total_transactions": 50,
          "average_transaction_value": 75.20,
          "fraud_score": 0.85,
          "session_duration": 300
      },
      "prediction": "low_risk",
      "model_score": 0.95
  },
  {
      "model_id": "ML1003",
      "customer_id": "CUST003",
      "session_id": "SES1003",
      "features": {
          "total_transactions": 20,
          "average_transaction_value": 75,
          "fraud_score": 0.4,
          "session_duration": 1800
      },
      "prediction": "low_risk",
      "model_score": 0.95
  },
  {
      "model_id": "ML1004",
      "customer_id": "CUST004",
      "session_id": "SES1004",
      "features": {
          "total_transactions": 15,
          "average_transaction_value": 150,
          "fraud_score": 0.2,
          "session_duration": 2700
      },
      "prediction": "low_risk",
      "model_score": 0.85
  }
]);

// Créer la collection customer_feedback
db.customer_feedback.insertMany([
  {
      "feedback_id": "FB12345",
      "customer_id": "CUST001",
      "merchant_id": "MERCH001",
      "timestamp": "2024-10-17T14:15:00Z",
      "rating": 4,
      "review": "Great service, fast delivery!",
      "survey_responses": [
          {
              "question": "How satisfied are you with the product?",
              "answer": "Very satisfied"
          },
          {
              "question": "Would you recommend this product?",
              "answer": "Yes"
          }
      ]
  },
  {
      "feedback_id": "FB1004",
      "customer_id": "CUST004",
      "merchant_id": "MERCH002",
      "timestamp": "2024-10-18T14:30:00Z",
      "rating": 5,
      "review": "Excellent product and fast delivery.",
      "survey_responses": [
          {
              "question": "How would you rate the product quality?",
              "answer": "Excellent"
          },
          {
              "question": "How would you rate the delivery time?",
              "answer": "Fast"
          }
      ]
  },
  {
      "feedback_id": "FB1003",
      "customer_id": "CUST003",
      "merchant_id": "MERCH001",
      "timestamp": "2024-10-15T12:00:00Z",
      "rating": 4,
      "review": "Good product, but delivery was slow.",
      "survey_responses": [
          {
              "question": "How would you rate the product quality?",
              "answer": "Good"
          },
          {
              "question": "How would you rate the delivery time?",
              "answer": "Slow"
          }
      ]
  }
]);

// Créer la collection merchant
db.merchant.insertMany([
  {
      "merchant_id": "MERCH001",
      "merchant_name": "Super Shop",
      "merchant_category": "Retail",
      "contact_info": {
          "email": "contact@supershop.com",
          "phone": "+123456789"
      }
  },
  {
      "merchant_id": "MERCH002",
      "merchant_name": "Fashion Hub",
      "merchant_category": "Fashion",
      "contact_info": {
          "email": "contact@fashionhub.com",
          "phone": "+123456790"
      }
  },
  {
      "merchant_id": "MERCH003",
      "merchant_name": "QuickMart",
      "merchant_category": "Grocery",
      "contact_info": {
          "email": "contact@quickmart.com",
          "phone": "+123456791"
      }
  },
  {
    "merchant_id": "MERCH004",
    "merchant_name": "Electronics Emporium",
    "merchant_category": "Electronics",
    "contact_info": {
      "email": "info@electronicsemporium.com",
      "phone": "+123456792"
    }
  },
  {
    "merchant_id": "MERCH005",
    "merchant_name": "Luxury Boutique",
    "merchant_category": "Fashion",
    "contact_info": {
      "email": "contact@luxuryboutique.com",
      "phone": "+123456793" 
    }
  },
  {
    "merchant_id": "MERCH006",
    "merchant_name": "Gourmet Grocery",
    "merchant_category": "Grocery",
    "contact_info": {
      "email": "orders@gourmetgrocery.com",
      "phone": "+123456794"
    }
  },
  {
    "merchant_id": "MERCH007",
    "merchant_name": "Sports Emporium",
    "merchant_category": "Sports",
    "contact_info": {
      "email": "support@sportsemporium.com",
      "phone": "+123456795"
    }
  },
  {
    "merchant_id": "MERCH008",
    "merchant_name": "Home Décor",
    "merchant_category": "Home",
    "contact_info": {
      "email": "info@homedecor.com",
      "phone": "+123456796"
    }
  }
]);

// Créer la collection product
db.product.insertMany([
  {
      "product_id": "PROD001",
      "merchant_id": "MERCH001",
      "product_name": "Laptop",
      "category": "Electronics",
      "price": 999.99
  },
  {
    "product_id": "PROD002",
    "merchant_id": "MERCH002",
    "product_name": "Designer Bag",
    "category": "Fashion",
    "price": 1299.99
},
{
    "product_id": "PROD003",
    "merchant_id": "MERCH003",
    "product_name": "Fresh Fruits Pack",
    "category": "Grocery",
    "price": 25.99
},
{
    "product_id": "PROD004",
    "merchant_id": "MERCH001",
    "product_name": "Smartphone",
    "category": "Electronics",
    "price": 799.99
}
]);

// Créer la collection currency_exchange_rates
db.currency_exchange_rates.insertMany([
  {
      "currency_code": "USD",
      "currency_name": "United States Dollar",
      "exchange_rate_to_usd": 1.0
  },
  {
      "currency_code": "EUR",
      "transaction_id": "TX1004",
      "country_code": "FR",
      "product_id": "PROD002",
      "currency_name": "Euro",
      "currency_rate": 1.1
  },
  {
      "currency_code": "GBP",
      "transaction_id": "TX1005",
      "country_code": "UK",
      "product_id": "PROD003",
      "currency_name": "British Pound",
      "currency_rate": 1.3
  }
]);

// Créer la collection country_region_codes
db.country_region_codes.insertMany([
    {
         "country_code": "US",
         "country_name": "United States",
         "region": "North America"
    },
    {
        "country_code": "FR",
        "country_name": "France",
        "region": "Europe"
      },
      {
        "country_code": "CN",
        "country_name": "China",
        "region": "Asia"
      },
      {
        "country_code": "BR",
        "country_name": "Brazil",
        "region": "South America" 
      },
      {
        "country_code": "AU",
        "country_name": "Australia",
        "region": "Oceania"
      },
      {
        "country_code": "ZA",
        "country_name": "South Africa",
        "region": "Africa"
      }
  ]);


// 1. Indexes pour transactions
db.transactions.createIndex({"transaction_id": 1}, {unique: true});
db.transactions.createIndex({"merchant_id": 1});
db.transactions.createIndex({"customer_id": 1});
db.transactions.createIndex({"date.date": 1});

// 2. Indexes pour error_logs
db.error_logs.createIndex({"log_id": 1}, {unique: true});
db.error_logs.createIndex({"transaction_id": 1});
db.error_logs.createIndex({"timestamp": 1});

// 3. Indexes pour product
db.product.createIndex({"product_id": 1}, {unique: true});
db.product.createIndex({"merchant_id": 1});
db.product.createIndex({"category": 1});

// 4. Indexes pour merchant
db.merchant.createIndex({"merchant_id": 1}, {unique: true});
db.merchant.createIndex({"merchant_category": 1});

// 5. Indexes pour user_interactions
db.user_interactions.createIndex({"session_id": 1}, {unique: true});
db.user_interactions.createIndex({"customer_id": 1});

// Obtenir toutes les collections et le nombre de documents
console.log("\nNombre de documents par collection:");
db.getCollectionNames().forEach(function(collname) {
  console.log(collname + ": " + db[collname].countDocuments());
});

