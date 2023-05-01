INSERT INTO roles(title) 
VALUES 
('admin'), 
('blogger');

INSERT INTO permissions(action) 
VALUES
('post'), 
('manage-users');

INSERT INTO roles_permissions (role_id, permission_id)
VALUES
(1, 2),
(2, 1);

INSERT INTO users (role_id, email, first_name, last_name)
VALUES
(1, 'semiteprofessor@gmail.com', 'Taiwo', 'Olapade');


INSERT INTO blog_categories (label, description)
VALUES
('Javascript', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('React', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('Vue', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('Tech News', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('Tech Culture', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('Brain Health', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.'),
('Cloud Services', 'Category description here.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.');

INSERT INTO blog_posts (author_id, title, text, image, active, keyword1, keyword2, bg_src, bg_type)
VALUES
(1, 'Can Anyone Code ?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 'pexels-antonio-batinić-4164418.jpg', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'Using AWS S3 for Storing Blog Images', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'Popular Programming Language in 2020', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'Brain Hack for Learning to Prorgram', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'Software engineering salary in 2022', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'GraphQL vs REST', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'A day in the Life of a Programmer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'Brain Hacks from Learning to Programme', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image'),
(1, 'React vs Vue', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam neque praesentium eaque dignissimos blanditiis voluptatem dolores aliquam modi amet! Suscipit optio ullam, sit pariatur saepe ipsa! Ad corporis voluptas laborum.', 1, 'Functional programming', 'ES6', 'logo.jpg', 'Image');

INSERT INTO blog_post_comments (post_id, author_id, comment)
VALUES
(1, 1, 'Totally broooo!'),
(1, 1, 'Figgin awesome');

INSERT INTO blog_post_categories (post_id, category_id)
VALUES
(1, 4),
(1, 5),
(2, 7),
(3, 4),
(3, 5),
(4, 6),
(5, 4),
(6, 1),
(6, 2),
(7, 4),
(8, 6),
(9, 2),
(9, 3);