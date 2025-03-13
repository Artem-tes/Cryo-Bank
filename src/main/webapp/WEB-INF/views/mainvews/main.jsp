<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная страница банка</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff3e0;
            color: #333;
        }
        header {
            background-color: #ffeb3b;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }
        .nav-buttons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 10px;
        }
        .nav-buttons button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .nav-buttons button:hover {
            background-color: #e65100;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .section {
            margin-bottom: 40px;
        }
        .section h2 {
            color: #f57c00;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .section p {
            font-size: 18px;
            line-height: 1.6;
        }
        .section img {
            max-width: 100%;
            height: auto;
            margin-top: 20px;
        }
        .advantages {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .advantage {
            flex: 1 1 30%;
            background-color: #fff;
            padding: 20px;
            margin: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .advantage h3 {
            color: #f57c00;
            font-size: 22px;
            margin-bottom: 15px;
        }
        .advantage p {
            font-size: 16px;
            line-height: 1.5;
        }
        footer {
            background-color: #ffeb3b;
            padding: 20px;
            text-align: center;
            font-size: 16px;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <header>
        Добро пожаловать в наш банк!
        <div class="nav-buttons">
            <button onclick="location.href='/registration'">Зарегистрироваться</button>
            <button onclick="location.href='/account'">Личный аккаунт</button>
            <button onclick="location.href='login.jsp'">Войти</button>
            <button onclick="location.href='support.jsp'">Поддержка</button>
            <button onclick="location.href='about-dev.jsp'">О разработчиках</button>
        </div>
    </header>

    <div class="container">
        <div class="section">
            <h2>О нас</h2>
            <p>Мы — современный банк, который предлагает широкий спектр финансовых услуг для наших клиентов. Наша цель — сделать вашу жизнь проще и удобнее.</p>
            <img src="about-us.jpg" alt="О нас">
        </div>

        <div class="section">
            <h2>Преимущества</h2>
            <div class="advantages">
                <div class="advantage">
                    <h3>Низкие проценты</h3>
                    <p>Мы предлагаем одни из самых низких процентных ставок на рынке.</p>
                </div>
                <div class="advantage">
                    <h3>Удобство</h3>
                    <p>Наши услуги доступны онлайн 24/7, что позволяет вам управлять своими финансами в любое время.</p>
                </div>
                <div class="advantage">
                    <h3>Надежность</h3>
                    <p>Мы гарантируем безопасность ваших средств и данных.</p>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>Почему стоит выбрать именно нас</h2>
            <p>Мы стремимся предоставлять нашим клиентам лучшие условия и сервис. Наша команда профессионалов всегда готова помочь вам с любыми вопросами.</p>
            <img src="why-choose-us.jpg" alt="Почему стоит выбрать именно нас">
        </div>
    </div>

    <footer>
        &copy; 2023 Наш банк. Все права защищены.
    </footer>
</body>
</html>

