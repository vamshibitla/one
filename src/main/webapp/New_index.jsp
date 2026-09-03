<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop | Premium Store</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" crossorigin="anonymous">

<style>
:root{--ink:#171717;--cream:#f7f4ee;--paper:#fffdf9;--orange:#e85d04;--orange2:#c94d00;--yellow:#ffba08;--green:#2a9d62;--gray:#777;--line:#e7e1d7;--shadow:0 14px 45px rgba(30,25,18,.09);--max:1180px}
*{box-sizing:border-box}html{scroll-behavior:smooth}body{margin:0;background:var(--cream);color:var(--ink);font-family:"DM Sans",Arial,sans-serif;line-height:1.5}button,input{font:inherit}button{cursor:pointer}a{color:inherit;text-decoration:none}img{display:block;max-width:100%}
.container{width:min(var(--max),calc(100% - 36px));margin:auto}
.announcement{background:var(--ink);color:white;text-align:center;padding:9px 15px;font-size:12px}.announcement strong{color:#ffcf70}
header{position:sticky;top:0;z-index:100;background:rgba(255,253,249,.95);border-bottom:1px solid var(--line);backdrop-filter:blur(12px)}
.header-row{min-height:74px;display:flex;align-items:center;gap:28px}.logo{display:flex;align-items:center;gap:10px;font-family:Manrope,sans-serif;font-size:21px;font-weight:800;white-space:nowrap}
.logo-icon{width:38px;height:38px;display:grid;place-items:center;border-radius:50%;background:var(--orange);color:white}
.desktop-nav{flex:1;display:flex;justify-content:center}.desktop-nav a{padding:8px 13px;margin:0 2px;color:#555;font-size:13px;font-weight:600;border-radius:20px}.desktop-nav a:hover,.desktop-nav a.active{background:#f0e9dd;color:var(--ink)}
.header-actions{display:flex;align-items:center;gap:5px}.circle-btn{position:relative;width:40px;height:40px;display:grid;place-items:center;border:0;border-radius:50%;background:transparent;color:var(--ink)}.circle-btn:hover{background:#eee7dc}
.cart-badge{position:absolute;top:1px;right:0;min-width:17px;height:17px;padding:0 4px;display:grid;place-items:center;border:2px solid var(--paper);border-radius:20px;background:var(--orange);color:white;font-size:9px;font-weight:800}.mobile-menu-btn{display:none}
.hero{position:relative;min-height:555px;overflow:hidden;background:#202020;color:white}.hero:before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(18,18,18,.95),rgba(18,18,18,.78) 43%,rgba(18,18,18,.16)),url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85") center/cover no-repeat}
.hero-inner{position:relative;z-index:1;min-height:555px;display:flex;align-items:center}.hero-copy{max-width:660px}.hero-kicker{display:inline-flex;gap:8px;align-items:center;margin-bottom:18px;color:#ffca75;font-size:12px;font-weight:800;letter-spacing:.13em;text-transform:uppercase}
.hero h1{margin:0;font-family:Manrope,sans-serif;font-size:clamp(42px,6vw,72px);line-height:1.02;letter-spacing:-.05em}.hero h1 span{color:#ffb703}.hero p{max-width:560px;margin:22px 0 28px;color:#dedede;font-size:16px}
.hero-buttons{display:flex;flex-wrap:wrap;gap:10px}.btn{min-height:45px;padding:0 20px;border:0;border-radius:8px;display:inline-flex;align-items:center;justify-content:center;gap:9px;font-size:13px;font-weight:700;transition:.2s}.btn-orange{background:var(--orange);color:white}.btn-orange:hover{background:var(--orange2);transform:translateY(-2px)}.btn-outline{border:1px solid rgba(255,255,255,.4);background:rgba(255,255,255,.08);color:white}.btn-outline:hover{background:rgba(255,255,255,.16)}
.hero-stats{display:flex;gap:30px;margin-top:42px}.hero-stat strong{display:block;font-size:18px}.hero-stat span{color:#aaa;font-size:11px}
.section{padding:75px 0}.section-head{margin-bottom:30px}.section-head.split{display:flex;align-items:end;justify-content:space-between;gap:20px}.overline{margin:0 0 7px;color:var(--orange);font-size:11px;font-weight:800;letter-spacing:.13em;text-transform:uppercase}h2{margin:0;font-family:Manrope,sans-serif;font-size:clamp(28px,4vw,39px);line-height:1.12;letter-spacing:-.035em}.section-description{margin:9px 0 0;max-width:600px;color:var(--gray);font-size:14px}
.category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}.category{border:1px solid var(--line);border-radius:12px;padding:23px 10px;background:var(--paper);text-align:center;transition:.25s}.category:hover{border-color:#d8bda2;transform:translateY(-5px);box-shadow:var(--shadow)}.category-icon{width:54px;height:54px;margin:0 auto 12px;display:grid;place-items:center;border-radius:50%;background:#f2e8d8;color:var(--orange);font-size:20px}.category h3{margin:0;font-size:13px}.category small{color:#999;font-size:10px}
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}.product{position:relative;overflow:hidden;border:1px solid var(--line);border-radius:14px;background:var(--paper);transition:.25s}.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}.product-photo{position:relative;height:255px;overflow:hidden;background:#eee9e0}.product-photo img{width:100%;height:100%;object-fit:cover;transition:.45s}.product:hover .product-photo img{transform:scale(1.06)}
.product-tag{position:absolute;top:12px;left:12px;z-index:2;padding:5px 8px;border-radius:5px;background:var(--ink);color:white;font-size:9px;font-weight:800;text-transform:uppercase}.product-tag.sale{background:var(--orange)}.heart{position:absolute;top:10px;right:10px;z-index:3;width:34px;height:34px;border:0;border-radius:50%;background:rgba(255,255,255,.92);color:#555}.product-info{padding:17px}.product-category{color:#a17b57;font-size:9px;font-weight:800;letter-spacing:.1em;text-transform:uppercase}.product h3{margin:6px 0 9px;font-size:15px}.rating{color:var(--yellow);font-size:12px}.rating span{color:#999;margin-left:5px;font-size:10px}.price-line{display:flex;align-items:center;justify-content:space-between;margin-top:14px}.price{font-size:19px;font-weight:800}.old-price{margin-left:5px;color:#aaa;font-size:11px;text-decoration:line-through}.add{width:100%;margin-top:15px;height:40px;border:1px solid var(--ink);border-radius:7px;background:var(--ink);color:white;font-size:11px;font-weight:800}.add:hover{background:var(--orange);border-color:var(--orange)}.add:disabled{opacity:.65}
.sale-section{background:var(--ink);color:white}.sale-layout{display:grid;grid-template-columns:1.05fr .95fr;min-height:480px;overflow:hidden;border-radius:18px;background:#292929}.sale-image{width:100%;height:100%;min-height:430px;object-fit:cover}.sale-content{display:flex;flex-direction:column;justify-content:center;padding:50px}.sale-content .overline{color:#ffb703}.sale-content h2{color:white;font-size:43px}.sale-copy{color:#aaa;font-size:14px}.countdown{display:flex;gap:9px;margin:24px 0}.count-box{width:68px;padding:10px 5px;text-align:center;border:1px solid #444;border-radius:8px;background:#1b1b1b}.count-box strong{display:block;color:white;font-size:21px}.count-box small{color:#777;font-size:8px;text-transform:uppercase}.sale-price{margin-bottom:18px;color:white;font-size:29px;font-weight:800}.sale-price del{margin-left:7px;color:#777;font-size:14px}.save-pill{display:inline-block;margin-left:8px;padding:4px 7px;border-radius:5px;background:var(--green);color:white;font-size:9px;vertical-align:middle}
.review-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}.review{padding:25px;border:1px solid var(--line);border-radius:13px;background:var(--paper)}.review-quote{margin:14px 0 22px;color:#444;font-size:14px;line-height:1.7}.person{display:flex;align-items:center;gap:10px}.person img{width:40px;height:40px;border-radius:50%;object-fit:cover}.person strong{display:block;font-size:12px}.person small{color:#999;font-size:10px}
.newsletter{padding:55px 30px;border-radius:18px;text-align:center;background:#eadcc8}.newsletter h2{font-size:34px}.newsletter p{margin:9px auto 22px;color:#766c60;font-size:13px}.subscribe{max-width:520px;margin:auto;display:flex;gap:7px}.subscribe input{min-width:0;flex:1;height:45px;padding:0 14px;border:1px solid #d5c5af;border-radius:7px;outline:none;background:#fffaf2}.subscribe input:focus{border-color:var(--orange)}
footer{padding:55px 0 22px;background:#141414;color:#8f8f8f}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px}.footer-logo{color:white;font-family:Manrope,sans-serif;font-size:20px;font-weight:800}.footer-about{max-width:330px;font-size:12px}.footer-col h4{margin:0 0 13px;color:white;font-size:12px}.footer-col a{display:block;margin:8px 0;font-size:11px}.footer-col a:hover{color:white}.socials{display:flex;gap:7px;margin-top:17px}.socials a{width:32px;height:32px;display:grid;place-items:center;border:1px solid #303030;border-radius:7px}.copyright{margin-top:38px;padding-top:17px;border-top:1px solid #292929;text-align:center;font-size:10px}.empty{grid-column:1/-1;padding:55px 20px;border:1px dashed #d3cabd;border-radius:12px;text-align:center;color:#777;background:var(--paper)}
@media(max-width:1050px){.desktop-nav{display:none}.mobile-menu-btn{display:grid}.category-grid{grid-template-columns:repeat(3,1fr)}.product-grid{grid-template-columns:repeat(3,1fr)}.footer-grid{grid-template-columns:2fr 1fr 1fr}}
@media(max-width:760px){.container{width:min(100% - 26px,var(--max))}.header-row{min-height:65px;gap:8px}.logo{font-size:18px}.hero,.hero-inner{min-height:540px}.hero h1{font-size:45px}.hero p{font-size:14px}.category-grid,.product-grid,.review-grid{grid-template-columns:repeat(2,1fr)}.sale-layout{grid-template-columns:1fr}.sale-image{min-height:270px;max-height:300px}.sale-content{padding:32px}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:480px){.header-actions .desktop-only{display:none}.category-grid,.product-grid,.review-grid{grid-template-columns:1fr}.hero h1{font-size:39px}.hero-stats{gap:18px}.section{padding:55px 0}.section-head.split{display:block}.sale-content h2{font-size:34px}.count-box{width:58px}.subscribe{flex-direction:column}.subscribe input,.subscribe button{width:100%}.footer-grid{grid-template-columns:1fr}}
</style>
</head>

<body>
<div class="announcement"><strong>FREE SHIPPING</strong> on orders over $50 &nbsp; • &nbsp; New members get 10% off</div>

<header>
<div class="container header-row">
<button class="circle-btn mobile-menu-btn" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
<a href="#" class="logo"><span class="logo-icon"><i class="fas fa-bag-shopping"></i></span>NexusShop</a>

<nav class="desktop-nav">
<a href="#" class="active">Home</a>
<a href="#categories">Categories</a>
<a href="#products">Shop</a>
<a href="#deals">Deals</a>
<a href="#reviews">Reviews</a>
</nav>

<div class="header-actions">
<button class="circle-btn" id="searchToggle" aria-label="Search"><i class="fas fa-search"></i></button>
<a class="circle-btn desktop-only" href="#"><i class="far fa-user"></i></a>
<a class="circle-btn desktop-only" href="#"><i class="far fa-heart"></i></a>
<a class="circle-btn" href="#"><i class="fas fa-bag-shopping"></i><span class="cart-badge" id="cartCount">0</span></a>
</div>
</div>

<div id="mobileMenu" style="display:none;border-top:1px solid var(--line);">
<div class="container" style="padding:12px 0 16px;">
<a href="#" style="display:block;padding:8px 0;">Home</a>
<a href="#categories" style="display:block;padding:8px 0;">Categories</a>
<a href="#products" style="display:block;padding:8px 0;">Shop</a>
<a href="#deals" style="display:block;padding:8px 0;">Deals</a>
<a href="#reviews" style="display:block;padding:8px 0;">Reviews</a>
</div></div>
</header>

<div id="searchPanel" style="display:none;background:#fff;border-bottom:1px solid var(--line);">
<div class="container" style="padding:12px 0;display:flex;gap:8px;">
<input id="searchInput" type="search" placeholder="Search products..." style="flex:1;height:42px;padding:0 13px;border:1px solid var(--line);border-radius:8px;outline:none;">
<button class="btn btn-orange" id="searchBtn">Search</button>
</div></div>

<main>
<section class="hero">
<div class="container hero-inner">
<div class="hero-copy">
<div class="hero-kicker"><i class="fas fa-sparkles"></i> Fresh arrivals • Curated for you</div>
<h1>Good things.<br><span>Better prices.</span></h1>
<p>Discover everyday essentials, premium technology, fashion and accessories — all in one place, with deals worth checking out.</p>
<div class="hero-buttons">
<button class="btn btn-orange" id="shopNow">Explore Collection <i class="fas fa-arrow-right"></i></button>
<button class="btn btn-outline" id="exploreDeals">Today's Deals</button>
</div>
<div class="hero-stats">
<div class="hero-stat"><strong>10K+</strong><span>Happy customers</span></div>
<div class="hero-stat"><strong>500+</strong><span>Products</span></div>
<div class="hero-stat"><strong>4.8/5</strong><span>Average rating</span></div>
</div>
</div></div></section>

<section class="section" id="categories">
<div class="container">
<div class="section-head"><p class="overline">Browse our store</p><h2>Find what you need.</h2><p class="section-description">Explore our carefully organized collections and discover your next favorite product.</p></div>
<div class="category-grid" id="categoriesGrid"></div>
</div></section>

<section class="section" id="products" style="background:var(--paper);">
<div class="container">
<div class="section-head split">
<div><p class="overline">Customer favorites</p><h2>Trending now</h2><p class="section-description">Popular products selected by our shoppers.</p></div>
<button class="btn" id="clearSearch" style="display:none;background:white;border:1px solid var(--line);">Clear results</button>
</div>
<div class="product-grid" id="productsGrid"></div>
</div></section>

<section class="section sale-section" id="deals">
<div class="container">
<div class="sale-layout">
<img class="sale-image" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="MacBook Air">
<div class="sale-content">
<p class="overline">Deal of the day</p><h2>Big performance.<br>Small price.</h2>
<p class="sale-copy">MacBook Air M2 — slim, powerful and built for everyday work, creativity and entertainment.</p>
<div class="countdown">
<div class="count-box"><strong id="dealDays">0</strong><small>Days</small></div>
<div class="count-box"><strong id="dealHours">00</strong><small>Hours</small></div>
<div class="count-box"><strong id="dealMinutes">00</strong><small>Minutes</small></div>
<div class="count-box"><strong id="dealSeconds">00</strong><small>Seconds</small></div>
</div>
<div class="sale-price">$999 <del>$1,199</del><span class="save-pill">SAVE $200</span></div>
<button class="btn btn-orange" id="buyDeal">Add Deal to Cart <i class="fas fa-plus"></i></button>
</div></div></div></section>

<section class="section" id="reviews">
<div class="container">
<div class="section-head"><p class="overline">Real experiences</p><h2>Loved by shoppers.</h2><p class="section-description">A few words from customers who have shopped with us.</p></div>
<div class="review-grid">
<article class="review"><div class="rating">★★★★★</div><p class="review-quote">"Fast delivery and exactly what I ordered. The whole experience was simple and professional."</p><div class="person"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Customer"><div><strong>Ava Martin</strong><small>Verified buyer</small></div></div></article>
<article class="review"><div class="rating">★★★★★</div><p class="review-quote">"Great selection and the prices are competitive. Checkout was quick and easy."</p><div class="person"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80" alt="Customer"><div><strong>Michael Lee</strong><small>Frequent buyer</small></div></div></article>
<article class="review"><div class="rating">★★★★☆</div><p class="review-quote">"I found a great deal on a laptop and it arrived in perfect condition. I'll definitely return."</p><div class="person"><img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80" alt="Customer"><div><strong>Sarah Wilson</strong><small>Verified buyer</small></div></div></article>
</div></div></section>

<section class="section"><div class="container"><div class="newsletter">
<p class="overline">Don't miss out</p><h2>Get the good stuff first.</h2><p>New arrivals, private offers and useful shopping updates. No spam.</p>
<form class="subscribe" id="newsletterForm"><input id="newsletterEmail" type="email" placeholder="Your email address" required><button class="btn btn-orange" type="submit">Subscribe</button></form>
<div id="newsletterMsg" style="display:none;margin-top:10px;font-size:12px;"></div>
</div></div></section>
</main>

<footer><div class="container"><div class="footer-grid">
<div><div class="footer-logo">NexusShop</div><p class="footer-about">A clean and modern shopping experience for products you'll actually want.</p><div class="socials"><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-x-twitter"></i></a></div></div>
<div class="footer-col"><h4>Shop</h4><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a></div>
<div class="footer-col"><h4>Company</h4><a href="#reviews">About Us</a><a href="#">Careers</a><a href="#">Contact</a></div>
<div class="footer-col"><h4>Support</h4><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Returns</a></div>
</div><div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div></div></footer>

<script>
const CATEGORIES=[
{id:"phones",name:"Smartphones",icon:"fa-mobile-screen-button"},
{id:"laptops",name:"Laptops",icon:"fa-laptop"},
{id:"clothing",name:"Clothing",icon:"fa-shirt"},
{id:"gadgets",name:"Gadgets",icon:"fa-headphones"},
{id:"footwear",name:"Footwear",icon:"fa-shoe-prints"},
{id:"accessories",name:"Accessories",icon:"fa-watch"}];

const PRODUCTS=[
{id:1,title:"iPhone 14 Pro Max",price:1099,oldPrice:1199,rating:5,reviews:128,badge:"New",img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",category:"phones"},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:"Popular",img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",category:"laptops"},
{id:3,title:"Apple Watch Series 8",price:349,oldPrice:399,rating:5,reviews:214,badge:"-13%",img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",category:"accessories"},
{id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,img:"https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",category:"footwear"},
{id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,badge:"Pro",img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",category:"gadgets"},
{id:6,title:"Premium Fragrance",price:120,rating:5,reviews:189,img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",category:"accessories"},
{id:7,title:"Travel Backpack",price:79,oldPrice:99,rating:4,reviews:67,badge:"-20%",img:"https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",category:"accessories"},
{id:8,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,badge:"Best Seller",img:"https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",category:"gadgets"}];

const NAMES={phones:"Smartphones",laptops:"Laptops",clothing:"Clothing",gadgets:"Gadgets",footwear:"Footwear",accessories:"Accessories"};
let cart=0;
const categoriesGrid=document.getElementById("categoriesGrid"),productsGrid=document.getElementById("productsGrid"),searchInput=document.getElementById("searchInput"),clearSearch=document.getElementById("clearSearch");

function escapeHtml(v){return String(v).replace(/[&<>"']/g,c=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]));}

function renderCategories(){
categoriesGrid.innerHTML=CATEGORIES.map(c=>`<button class="category" data-category="${c.id}"><div class="category-icon"><i class="fas ${c.icon}"></i></div><h3>${c.name}</h3><small>Explore collection</small></button>`).join("");
categoriesGrid.querySelectorAll(".category").forEach(b=>b.onclick=()=>filterProducts(b.dataset.category,true));
}

function renderProducts(list){
if(!list.length){productsGrid.innerHTML='<div class="empty"><i class="fas fa-magnifying-glass"></i><h3>No products found</h3><p>Try another search or choose a category.</p></div>';return;}
productsGrid.innerHTML=list.map(p=>{
const sale=p.badge&&p.badge.startsWith("-");
return `<article class="product">
${p.badge?`<span class="product-tag ${sale?"sale":""}">${escapeHtml(p.badge)}</span>`:""}
<div class="product-photo"><img src="${p.img}" alt="${escapeHtml(p.title)}"><button class="heart"><i class="far fa-heart"></i></button></div>
<div class="product-info"><div class="product-category">${NAMES[p.category]}</div><h3>${escapeHtml(p.title)}</h3>
<div class="rating">${"★".repeat(Math.round(p.rating))}<span>${p.reviews} reviews</span></div>
<div class="price-line"><div><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice?`<span class="old-price">$${p.oldPrice.toLocaleString()}</span>`:""}</div></div>
<button class="add" data-id="${p.id}"><i class="fas fa-plus"></i> Add to Cart</button></div></article>`;
}).join("");
productsGrid.querySelectorAll(".add").forEach(b=>b.onclick=()=>addToCart(Number(b.dataset.id),b));
}

function addToCart(id,b){
if(!PRODUCTS.find(p=>p.id===id))return;
cart++;document.getElementById("cartCount").textContent=cart;
const old=b.innerHTML;b.innerHTML='<i class="fas fa-check"></i> Added';b.disabled=true;
setTimeout(()=>{b.innerHTML=old;b.disabled=false},1200);
}

function filterProducts(query,categoryMode=false){
const q=String(query||"").trim().toLowerCase();
if(!q){renderProducts(PRODUCTS);clearSearch.style.display="none";return;}
const result=PRODUCTS.filter(p=>categoryMode?p.category===query:p.title.toLowerCase().includes(q)||p.category.includes(q)||NAMES[p.category].toLowerCase().includes(q));
renderProducts(result);clearSearch.style.display="inline-flex";
document.getElementById("products").scrollIntoView({behavior:"smooth"});
}

document.getElementById("searchToggle").onclick=()=>{const p=document.getElementById("searchPanel");p.style.display=p.style.display==="block"?"none":"block";if(p.style.display==="block")searchInput.focus();};
document.getElementById("searchBtn").onclick=()=>filterProducts(searchInput.value);
searchInput.onkeydown=e=>{if(e.key==="Enter")filterProducts(searchInput.value)};
searchInput.oninput=()=>{if(!searchInput.value.trim()){renderProducts(PRODUCTS);clearSearch.style.display="none"}};
clearSearch.onclick=()=>{searchInput.value="";renderProducts(PRODUCTS);clearSearch.style.display="none"};
document.getElementById("mobileToggle").onclick=()=>{const m=document.getElementById("mobileMenu");m.style.display=m.style.display==="block"?"none":"block"};
document.getElementById("shopNow").onclick=()=>document.getElementById("products").scrollIntoView({behavior:"smooth"});
document.getElementById("exploreDeals").onclick=()=>document.getElementById("deals").scrollIntoView({behavior:"smooth"});
document.getElementById("buyDeal").onclick=function(){cart++;document.getElementById("cartCount").textContent=cart;const old=this.innerHTML;this.innerHTML='<i class="fas fa-check"></i> Added to Cart';this.disabled=true;setTimeout(()=>{this.innerHTML=old;this.disabled=false},1500)};

document.getElementById("newsletterForm").onsubmit=e=>{
e.preventDefault();const email=document.getElementById("newsletterEmail"),msg=document.getElementById("newsletterMsg");
if(!email.value||!email.value.includes("@")){msg.style.display="block";msg.style.color="#c94d00";msg.textContent="Please enter a valid email address.";return;}
msg.style.display="block";msg.style.color="#2a9d62";msg.textContent="You're subscribed. Welcome to NexusShop!";email.value="";
setTimeout(()=>msg.style.display="none",3500);
};

(function(){
const target=new Date(Date.now()+(24*60+36)*60*1000);
function tick(){const d=Math.max(0,target-new Date()),days=Math.floor(d/86400000),hours=Math.floor(d%86400000/3600000),mins=Math.floor(d%3600000/60000),secs=Math.floor(d%60000/1000);
document.getElementById("dealDays").textContent=days;document.getElementById("dealHours").textContent=String(hours).padStart(2,"0");document.getElementById("dealMinutes").textContent=String(mins).padStart(2,"0");document.getElementById("dealSeconds").textContent=String(secs).padStart(2,"0");if(d<=0)clearInterval(timer)}
tick();const timer=setInterval(tick,1000);
})();
renderCategories();renderProducts(PRODUCTS);document.getElementById("year").textContent=new Date().getFullYear();
</script>
</body>
</html>
