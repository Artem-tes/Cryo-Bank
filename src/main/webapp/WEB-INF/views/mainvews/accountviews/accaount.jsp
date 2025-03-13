<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Личный кабинет</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff3e0;
            color: #333;
        }
        .account-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            text-align: center;
        }
        .account-container h2 {
            color: #f57c00;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .account-info, .transaction-history, .notifications {
            text-align: left;
            margin-bottom: 20px;
        }
        .account-info p, .notifications p {
            font-size: 18px;
            margin: 10px 0;
        }
        .transaction-history h3, .notifications h3 {
            color: #f57c00;
            font-size: 22px;
            margin-bottom: 10px;
        }
        .transaction-history ul, .notifications ul {
            list-style-type: none;
            padding: 0;
        }
        .transaction-history li, .notifications li {
            background-color: #f9f9f9;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons button {
            background-color: #f57c00;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin: 5px;
        }
        .buttons button:hover {
            background-color: #e65100;
        }
        .card-status {
            font-size: 18px;
            margin: 20px 0;
        }
        .card-status.blocked {
            color: red;
        }
        .card-status.active {
            color: green;
        }
    </style>
</head>
<body>
    <div class="account-container">
        <h2>Личный кабинет</h2>

        <!-- Личная информация -->
        <div class="account-info">
            <p><strong>Имя:</strong> ${account.fullName}</p>
            <p><strong>Email:</strong> ${account.email}</p>
            <p><strong>Баланс:</strong> ${account.balance} RUB</p>
        </div>

        <!-- Статус карты -->
        <div class="card-status ${account.cardBlocked ? 'blocked' : 'active'}">
            Статус карты: ${account.cardBlocked ? 'Заблокирована' : 'Активна'}
        </div>

        <!-- История транзакций -->
        <div class="transaction-history">
            <h3>История транзакций</h3>
            <ul>
                <c:forEach var="transaction" items="${account.transactionHistory}">
                    <li>${transaction}</li>
                </c:forEach>
            </ul>
        </div>

        <!-- Уведомления -->
        <div class="notifications">
            <h3>Уведомления</h3>
            <ul>
                <c:forEach var="notification" items="${account.notifications}">
                    <li>${notification}</li>
                </c:forEach>
            </ul>
        </div>

        <!-- Кнопки управления -->
        <div class="buttons">
            <button onclick="location.href='${pageContext.request.contextPath}/deposit'">Пополнить счет</button>
            <button onclick="location.href='${pageContext.request.contextPath}/transfer'">Перевести средства</button>
            <button onclick="location.href='${pageContext.request.contextPath}/block-card'">
                ${account.cardBlocked ? 'Разблокировать карту' : 'Заблокировать карту'}
            </button>
            <button onclick="location.href='${pageContext.request.contextPath}/download-statement'">Скачать выписку</button>
        </div>
    </div>
</body>
</html>