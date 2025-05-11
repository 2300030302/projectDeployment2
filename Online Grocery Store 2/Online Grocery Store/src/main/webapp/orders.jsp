<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Orders Page</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="number"]:focus {
            border-color: #66afe9;
            outline: none;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
    </style>

</head>
<body>
    <div class="container">
        <h1>Order Details</h1>
        <table>
            <tr>
                <td>Name:</td>
                <td>
                    <input type="text" name="name" id="name" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <input type="email" name="email" id="email" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td>Amount:</td>
                <td>
                    <input type="number" name="amount" id="amount" class="form-control" required />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button id="rzp-button1" class="btn btn-primary">Proceed To Pay</button>
                </td>
            </tr>
        </table>
    </div>

    <script>
        async function createOrder() {
            const response = await fetch("<%= request.getContextPath() %>/createOrder", {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    amount: document.getElementById('amount').value
                })
            });
            const order = await response.json();
            return order;
        }

        document.getElementById('rzp-button1').onclick = async function(e) {
            const order = await createOrder();

            var options = {
                "key": "rzp_test_VfDnABLjynnWfn", // your Razorpay key ID
                "amount": order.amount,
                "currency": "INR",
                "name": "", // Name of your Razorpay account
                "description": "Order for Test",
                "order_id": order.razorpayOrderId,
                "reciept": order.email,
                "callback_url": "<%= request.getContextPath() %>/paymentCallback",
                "prefill": {
                    "name": order.name,
                    "email": order.email
                },
                "theme": {
                    "color": "#339900"
                }
            };

            var rzp1 = new Razorpay(options);
            rzp1.open();
            e.preventDefault();
        }
    </script>
</body>
</html>
