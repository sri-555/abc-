-- MongoDB doesn't use SQL, but here's the equivalent setup for reference
-- This would be the structure if using a SQL database

-- Create products table
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0,
    image VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO products (name, description, price, category, stock, image) VALUES
('Wireless Headphones', 'High-quality wireless headphones with noise cancellation', 199.99, 'Electronics', 25, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300&h=300&fit=crop'),
('Cotton T-Shirt', 'Comfortable 100% cotton t-shirt in various colors', 29.99, 'Clothing', 50, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=300&h=300&fit=crop'),
('JavaScript Guide', 'Complete guide to modern JavaScript development', 49.99, 'Books', 15, 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=300&h=300&fit=crop'),
('Garden Tools Set', 'Essential tools for gardening enthusiasts', 89.99, 'Home & Garden', 12, 'https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=300&h=300&fit=crop'),
('Basketball', 'Official size basketball for indoor and outdoor play', 39.99, 'Sports', 30, 'https://images.unsplash.com/photo-1546519638-68e109498ffc?w=300&h=300&fit=crop'),
('Building Blocks', 'Educational building blocks for creative play', 24.99, 'Toys', 40, 'https://images.unsplash.com/photo-1558060370-d644479cb6f7?w=300&h=300&fit=crop');
