-- Вказуємо Workbench, з якою базою працюємо
USE goit_hw3;

-- 1.1. Вибираємо всі стовпчики з таблиці products
SELECT * FROM products;

-- Завдання 1.2: Вибираємо тільки стовпці name та phone з таблиці shippers
SELECT name, phone FROM shippers;

-- Завдання 2: Середнє, максимальне та мінімальне значення стовпчика price з таблиці products

SELECT 
    AVG(price) AS середня_ціна,
    MAX(price) AS максимальна_ціна,
    MIN(price) AS мінімальна_ціна
FROM products;




-- Завдання 3: Унікальні комбінації category_id та price, 
-- сортування за спаданням price, тільки перші 10 рядків

SELECT DISTINCT 
    category_id, 
    price
FROM products
ORDER BY price DESC
LIMIT 10;





-- Завдання 4: Кількість продуктів з ціною від 20 до 100 включно
SELECT COUNT(*) AS кількість_продуктів
FROM products
WHERE price BETWEEN 20 AND 100;






-- Завдання 5: Кількість продуктів та середня ціна для кожного постачальника (supplier_id)

SELECT 
    supplier_id,
    COUNT(*) AS кількість_продуктів,
    AVG(price) AS середня_ціна
FROM products
GROUP BY supplier_id
ORDER BY supplier_id;

