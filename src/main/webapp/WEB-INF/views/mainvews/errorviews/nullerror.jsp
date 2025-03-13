<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка регистрации</title>
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
        .empty-fields-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        .empty-fields-container h2 {
            color: #f57c00; /* Оранжевый цвет для заголовка */
            font-size: 24px;
            margin-bottom: 20px;
        }
        .empty-fields-container p {
            font-size: 18px;
            margin: 10px 0;
        }
        .empty-fields-container button {
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
        .empty-fields-container button:hover {
            background-color: #e65100; /* Темно-оранжевый при наведении */
        }
    </style>
</head>
<body>
    <div class="empty-fields-container">
        <h2>Заполните все поля</h2>
        <p>Пожалуйста, убедитесь, что все обязательные поля заполнены, и попробуйте снова.</p>
        <button onclick="location.href='/registration'">Вернуться к регистрации</button>
    </div>
</body>
</html>