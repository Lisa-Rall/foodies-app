/* Create user profile schema */
CREATE TABLE IF NOT EXISTS userprofiles(
    id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

/* Create recipe schema */
CREATE TABLE IF NOT EXISTS recipe(
    id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    owner_id BIGINT(20) NOT NULL DEFAULT 0,
    description TEXT,
    instructions LONGTEXT NOT NULL,
    display_pic_url  TEXT,
    time_to_prepare VARCHAR(100),
    difficulty_level VARCHAR(50)
);


/* Grocery Item schema */
CREATE TABLE IF NOT EXISTS shopping_list_item(
    ID BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

/* Create ingredient schema */
CREATE TABLE IF NOT EXISTS recipe_ingredient(
    ID BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    groceryItem BIGINT(20) REFERENCES shoppingItem(id),
    recipe BIGINT(20) REFERENCES recipes(id),
    UnitOfMeasurement VARCHAR(25) NOT NULL,
    Quantity INT NOT NULL,
    MoreInfo TEXT
);

/* Create categories schema */
CREATE TABLE IF NOT EXISTS  categories(
    ID BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    Description TEXT
);


CREATE TABLE IF NOT EXISTS recipe_categories(
    ID BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categorry BIGINT(20) REFERENCES categories(id),
    recipe BIGINT(20) REFERENCES recipes(id)
);


