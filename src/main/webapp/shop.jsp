<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/CSS/shop.css">
</head>
<body>

<div class="header">
  <div class="botheader">
    <p id="name">Welcome, ${name}</p>
    <p id="balance">Balance: $${balance}</p>
  </div>
  <div class="navbar">
    <p>The Bake Shop</p>
    <ul>
      <li><a href="cart.html">Store</a></li>
      <li><a href="HTML/aboutPage.html">About</a></li>
    </ul>
  </div>
  <div class="navbar-b">
    <div class="dropdown">
      <select name="">
        <option value = "1"> All Products</option>
        <option value = "2"> Sandwich Breads</option>
        <option value = "3"> Pastries</option>
        <option value = "4"> French Bread</option>
      </select>
    </div>
    <div class="play"><span class="material-symbols-outlined">
                    casino
                    </span><p>Play!</p></div>
    <div class="cart"><span class="material-symbols-outlined">
                    shopping_cart</span>
      <p id="count">0</p>
    </div>
  </div>
</div>

<!-- Slot/Play Button Popup -->
<div id="slotModal" class="modal" style="display: none;">
  <div class="modal-content">
    <span id="closeModal" class="close">&times;</span>
    <h2>Play!</h2>
    <p>Guess a number between 1 and 10:</p>
    <input type="number" id="guess" min="1" max="10" placeholder="Your guess">
    <button id="playGameButton">Play</button>
    <p> id="result"</p>
  </div>
</div>

<script>
  const checkoutButton = document.getElementById('checkoutButton');
  const balanceElement = document.getElementById('balance');
  <%--const balance = parseFloat(localStorage.getItem('balance')) || 0;--%>
  <%--balanceElement.textContent=`Balance: $${balance.toFixed(2)}`;--%>

  const cartTotal = parseFloat(localStorage.getItem('cartTotal')) || 0;
  document.getElementById('total').textContent=`$${cartTotal.toFixed(2)}`;

  checkoutButton.addEventListener('click', () => {
    <%--if (${balance} < cartTotal) {--%>
    <%--  alert('Not enough money.');--%>
    <%--} else {--%>
    <%--  const newBalance = balance - cartTotal;--%>
    <%--  localStorage.setItem('balance', newBalance.toFixed(2));--%>

      window.location.href='checkout.html';
    })
</script>

<div class="container">
  <div id="root"></div>
  <div class="sidebar">
    <div class="head"><p>My Cart</p></div>
    <div id="cartItem">Your cart is empty</div>
    <div class="foot">
      <h3>Total</h3>
      <h2 id="total" >$${cartPrice}</h2>
    </div>
    <div class="checkout">
      <a href="HTML/checkOut.html">
        <button id="checkoutButton">Checkout</button>
      </a>
    </div>
  </div>
</div>
<script src ="JS/shop.js"></script>
</body>
</html>