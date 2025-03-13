<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Регистрация в банке</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff3e0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .registration-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .registration-container h2 {
            color: #f57c00;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .registration-container input {
            width: calc(100% - 22px); /* Учитываем padding и border */
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .registration-container input:focus {
            border-color: #f57c00;
            outline: none;
        }
        .registration-container button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }
        .registration-container button:hover {
            background-color: #e65100;
        }
        .registration-container p {
            font-size: 14px;
            margin-top: 20px;
        }
        .registration-container a {
            color: #f57c00;
            text-decoration: none;
        }
        .registration-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Регистрация в банке</h2>
        <form action="/registration" method="POST">
            <input type="text" name="firstName" placeholder="Имя" required>
            <input type="text" name="lastName" placeholder="Фамилия" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="tel" name="phone" placeholder="Телефон" required>
            <input type="password" name="password" placeholder="Пароль" required>
            <input type="password" name="confirmPassword" placeholder="Подтвердите пароль" required>
            <button onclick="">Зарегистрироваться</button>
        </form>
        <p>Уже есть аккаунт? <a href="/login">Войдите</a></p>
    </div>
</body>
</html>