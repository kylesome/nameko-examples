#!/bin/sh

curl -X POST "${SERVICE}/orders" -d '{
  "order_details": [
    {
      "product_id": "the_odyssey",
      "price": "100000.99",
      "quantity": 1
    }
  ]
}'
