-- Comments in SQL Start with dash-dash --
-- 1. Add chair
INSERT INTO products (name, price, can_be_returned)
VALUES ('chair', 44.00, false);

-- 2. Add stool
INSERT INTO products (name, price, can_be_returned)
VALUES ('stool', 25.99, true);

-- 3. Add table
INSERT INTO products (name, price, can_be_returned)
VALUES ('table', 124.00, false);

-- 4. Display all products
SELECT * FROM products;

-- 5. Display all product names
SELECT name FROM products;

-- 6. Display names and prices
SELECT name, price FROM products;

-- 7. Add lamp
INSERT INTO products (name, price, can_be_returned)
VALUES ('lamp', 35.50, true);

-- 8. Display returnable products
SELECT * FROM products
WHERE can_be_returned = true;

-- 9. Display products under 44
SELECT * FROM products
WHERE price < 44.00;

-- 10. Display products priced between 22.50 and 99.99
SELECT * FROM products
WHERE price BETWEEN 22.50 AND 99.99;

-- 11. Apply $20 sale to all products
UPDATE products
SET price = price - 20.00;

-- 12. Remove products under $25
DELETE FROM products
WHERE price < 25.00;

-- 13. Sale over, add $20 back
UPDATE products
SET price = price + 20.00;

-- 14. Update all products to be returnable
UPDATE products
SET can_be_returned = true;

