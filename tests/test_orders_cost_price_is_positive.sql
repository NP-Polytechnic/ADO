models:
  - name: orders
    columns:
      - name: ORDERCOSTPRICE
        tests:
          - greater_than_zero
