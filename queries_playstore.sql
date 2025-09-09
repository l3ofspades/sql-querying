-- Comments in SQL Start with dash-dash --
-- 1. Find app with ID 1880
SELECT * FROM analytics
WHERE id = 1880;

-- 2. Apps updated on 2018-08-01
SELECT id, app
FROM analytics
WHERE last_updated = '2018-08-01';

-- 3. Count of apps per category
SELECT category, COUNT(*) AS app_count
FROM analytics
GROUP BY category;

-- 4. Top 5 most-reviewed apps
SELECT app, reviews
FROM analytics
ORDER BY reviews DESC
LIMIT 5;

-- 5. Most-reviewed app with rating >= 4.8
SELECT app, reviews, rating
FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

-- 6. Average rating per category
SELECT category, AVG(rating) AS avg_rating
FROM analytics
GROUP BY category
ORDER BY avg_rating DESC;

-- 7. Most expensive app with rating < 3
SELECT app, price, rating
FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

-- 8. Apps with min_installs <= 50
SELECT *
FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating DESC;

-- 9. Apps with rating < 3 and reviews >= 10000
SELECT app
FROM analytics
WHERE rating < 3 AND reviews >= 10000;

-- 10. Top 10 most-reviewed paid apps between $0.10 and $1.00
SELECT app, reviews, price
FROM analytics
WHERE price BETWEEN 0.10 AND 1.00
ORDER BY reviews DESC
LIMIT 10;

-- 11. Most out-of-date app
SELECT *
FROM analytics
WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- 12. Most expensive app
SELECT *
FROM analytics
WHERE price = (SELECT MAX(price) FROM analytics);

-- 13. Total number of reviews
SELECT SUM(reviews) AS total_reviews
FROM analytics;

-- 14. Categories with more than 300 apps
SELECT category, COUNT(*) AS app_count
FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

-- 15. Highest proportion of min_installs to reviews (min_installs >= 100000)
SELECT app, reviews, min_installs, (min_installs::FLOAT / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion DESC
LIMIT 1;
