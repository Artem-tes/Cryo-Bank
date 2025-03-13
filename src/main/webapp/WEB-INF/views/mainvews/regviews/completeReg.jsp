<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Успешная регистрация</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff3e0; /* Желтый фон */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .success-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .success-container h2 {
            color: #f57c00; /* Оранжевый цвет для заголовка */
            font-size: 24px;
            margin-bottom: 20px;
        }
        .success-container p {
            font-size: 18px;
            margin: 10px 0;
        }
        .success-container a {
            color: #f57c00; /* Оранжевый цвет для ссылок */
            text-decoration: none;
        }
        .success-container a:hover {
            text-decoration: underline;
        }
        .success-container button {
            background-color: #f57c00; /* Оранжевая кнопка */
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }
        .success-container button:hover {
            background-color: #e65100; /* Темно-оранжевый при наведении */
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h2>Успешная регистрация!</h2>
        <p>Успешно! Теперь вы сможете пользоватся нашим банком,
        чтобы зайти в личный кабнинет нужно в главном меню зайти в ваккаунт</p>
        <button onclick="location.href='/'">На главную</button>
    </div>
</body>
</html>