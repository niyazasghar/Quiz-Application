CREATE TABLE Question (
    id SERIAL PRIMARY KEY,
    question_title TEXT NOT NULL,
    option1 TEXT NOT NULL,
    option2 TEXT NOT NULL,
    option3 TEXT NOT NULL,
    option4 TEXT NOT NULL,
    right_answer TEXT NOT NULL,
    difficulty_level TEXT NOT NULL,
    category TEXT NOT NULL
);


INSERT INTO Question (question_title, option1, option2, option3, option4, right_answer, difficulty_level, category)
VALUES
    ('What is a class in Java?', 'A function', 'An object', 'A data structure', 'A loop', 'An object', 'Easy', 'java'),
    ('What does OOP stand for?', 'Object-Oriented Programming', 'Object Ordering Process', 'Operating Overloaded Pointers', 'Order of Operations', 'Object-Oriented Programming', 'Easy', 'java'),
    ('What is a list in Python?', 'A type of loop', 'A built-in function', 'A data structure', 'An object', 'A data structure', 'Easy', 'python'),
    ('Which data structure uses First-In-First-Out (FIFO) order?', 'Stack', 'Queue', 'Array', 'LinkedList', 'Queue', 'Medium', 'python'),
    ('What is a constructor?', 'A member of a class', 'A loop in Python', 'A data type', 'A special method', 'A special method', 'Medium', 'java'),
    ('Which sorting algorithm has the worst-case time complexity of O(n^2)?', 'Merge Sort', 'Quick Sort', 'Insertion Sort', 'Bubble Sort', 'Bubble Sort', 'Hard', 'python'),
    ('In Java, what is used to create an instance of a class?', 'Class', 'Method', 'Object', 'Constructor', 'Constructor', 'Easy', 'java'),
    ('Which keyword is used to define a variable that won’t be reassigned?', 'static', 'final', 'constant', 'immutable', 'final', 'Easy', 'java'),
    ('What is the output of 4 ^ 3 in Python?', '7', '64', '81', '12', '64', 'Easy', 'python'),
    ('What does the term "polymorphism" refer to in programming?', 'Using multiple inheritance', 'Ability to take multiple forms', 'Manipulating data', 'Using multiple programming languages', 'Ability to take multiple forms', 'Medium', 'java'),
    ('What is the purpose of the "self" parameter in Python class methods?', 'It refers to the current instance of the class', 'It is used to call parent class methods', 'It is a keyword for loops', 'It is a data type', 'It refers to the current instance of the class', 'Medium', 'python'),
    ('Which of the following is not a primitive data type in Java?', 'int', 'boolean', 'char', 'string', 'string', 'Medium', 'java'),
    ('What is the time complexity of a binary search?', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)', 'O(log n)', 'Medium', 'python'),
    ('What keyword is used to inherit a class in Python?', 'extends', 'inherits', 'super', 'class', 'class', 'Easy', 'python'),
    ('Which type of loop is ideal for situations where the number of iterations is known?', 'for loop', 'while loop', 'do-while loop', 'until loop', 'for loop', 'Easy', 'java'),
    ('What is the purpose of "import" in Python?', 'To export data', 'To create a backup', 'To include external modules', 'To print output', 'To include external modules', 'Easy', 'python'),
    ('In Java, which access modifier provides the widest visibility?', 'public', 'private', 'protected', 'package-private', 'public', 'Easy', 'java'),
    ('What is a lambda function in Python?', 'A function that uses the "lambda" keyword', 'A function with multiple return values', 'A function with no parameters', 'An anonymous inline function', 'An anonymous inline function', 'Medium', 'python'),
    ('What is a linked list?', 'A type of array', 'A linear data structure', 'A collection of objects', 'A group of classes', 'A linear data structure', 'Medium', 'java'),
    ('Which operator is used to concatenate strings in Python?', '&', '+', '*', '++', '+', 'Easy', 'python'),
    ('What does JVM stand for?', 'Java Virtual Machine', 'Just Virtual Memory', 'JavaScript Virtual Machine', 'Java Version Manager', 'Java Virtual Machine', 'Easy', 'java'),
    ('In Python, what is the main difference between a tuple and a list?', 'Tuples are mutable, lists are not', 'Lists are ordered, tuples are not', 'Tuples can store mixed data types, lists cannot', 'Lists have a fixed size, tuples do not', 'Tuples can store mixed data types, lists cannot', 'Medium', 'python'),
    ('What is the purpose of the "finally" block in a try-catch-finally statement?', 'To handle exceptions', 'To define a fallback value', 'To execute code regardless of exceptions', 'To terminate the program', 'To execute code regardless of exceptions', 'Medium', 'java'),
    ('What is a dictionary in Python?', 'A sorted collection of elements', 'A data structure used for searching', 'An ordered sequence of elements', 'A key-value store', 'A key-value store', 'Easy', 'python'),
    ('Which keyword is used to define a subclass in Java?', 'child', 'extends', 'inherits', 'subclass', 'extends', 'Easy', 'java'),
    ('What is the purpose of the "pass" statement in Python?', 'To stop the execution of a loop', 'To indicate an empty code block', 'To raise an exception', 'To terminate the program', 'To indicate an empty code block', 'Easy', 'python');