<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          crossorigin="anonymous">

    <style>
        :root {
            --primary: #111827;
            --primary-soft: #1f2937;
            --accent: #2563eb;
            --accent-dark: #1d4ed8;
            --accent-light: #eff6ff;
            --text: #111827;
            --muted: #6b7280;
            --border: #e5e7eb;
            --surface: #f8fafc;
            --white: #ffffff;
            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;
            --radius: 16px;
            --container: 1180px;
            --shadow: 0 8px 30px rgba(15, 23, 42, .07);
            --shadow-hover: 0 18px 45px rgba(15, 23, 42, .12);
        }

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: Inter, system-ui, -apple-system, "Segoe UI", sans-serif;
            color: var(--text);
            background: var(--surface);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: 0 auto;
        }

        /* ---------- Header ---------- */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,.94);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(14px);
        }

        .header-inner {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 24px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: Poppins, sans-serif;
            font-size: 22px;
            font-weight: 800;
            white-space: nowrap;
        }

        .brand-mark {
            width: 38px;
            height: 38px;
            display: grid;
            place-items: center;
            border-radius: 11px;
            color: white;
            background: linear-gradient(135deg, #2563eb, #7c3aed);
            box-shadow: 0 7px 18px rgba(37,99,235,.25);
        }

        .brand .accent {
            color: var(--accent);
        }

        .main-nav {
            flex: 1;
        }

        .main-nav ul {
            display: flex;
            align-items: center;
            gap: 4px;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 12px;
            border-radius: 9px;
            color: #374151;
            font-size: 14px;
            font-weight: 600;
            transition: .2s ease;
        }

        .main-nav a:hover,
        .main-nav a.active {
            color: var(--accent);
            background: var(--accent-light);
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            width: 260px;
            height: 42px;
            display: flex;
            align-items: center;
            gap: 9px;
            padding: 0 13px;
            border: 1px solid var(--border);
            border-radius: 11px;
            background: var(--surface);
            transition: .2s ease;
        }

        .search:focus-within {
            background: white;
            border-color: #93c5fd;
            box-shadow: 0 0 0 4px rgba(37,99,235,.08);
        }

        .search i {
            color: #9ca3af;
        }

        .search input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text);
            font-size: 13px;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border: 0;
            border-radius: 10px;
            background: transparent;
            color: #374151;
            transition: .2s ease;
        }

        .icon-btn:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            min-width: 18px;
            height: 18px;
            padding: 0 5px;
            display: grid;
            place-items: center;
            border-radius: 99px;
            background: var(--danger);
            color: white;
            font-size: 10px;
            font-weight: 800;
            border: 2px solid white;
        }

        .mobile-toggle {
            display: none;
        }

        /* ---------- Hero ---------- */
        .hero {
            min-height: 480px;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            color: white;
            background:
                linear-gradient(90deg, rgba(8,15,31,.88) 0%, rgba(8,15,31,.64) 48%, rgba(8,15,31,.25) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover no-repeat;
        }

        .hero-content {
            max-width: 700px;
            padding: 70px 0;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 7px 12px;
            margin-bottom: 18px;
            border: 1px solid rgba(255,255,255,.18);
            border-radius: 99px;
            background: rgba(255,255,255,.09);
            color: #dbeafe;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: .04em;
            text-transform: uppercase;
        }

        .hero h1 {
            margin: 0 0 18px;
            font-family: Poppins, sans-serif;
            font-size: clamp(38px, 5vw, 62px);
            line-height: 1.08;
            letter-spacing: -.035em;
        }

        .hero h1 span {
            color: #60a5fa;
        }

        .hero p {
            max-width: 610px;
            margin: 0 0 28px;
            color: #e5e7eb;
            font-size: 17px;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            min-height: 44px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 0 19px;
            border: 0;
            border-radius: 10px;
            font-weight: 700;
            font-size: 14px;
            transition: .2s ease;
        }

        .btn-primary {
            color: white;
            background: var(--accent);
            box-shadow: 0 8px 20px rgba(37,99,235,.25);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-light {
            color: white;
            border: 1px solid rgba(255,255,255,.3);
            background: rgba(255,255,255,.08);
        }

        .btn-light:hover {
            background: rgba(255,255,255,.16);
        }

        /* ---------- Common Sections ---------- */
        .section {
            padding: 72px 0;
        }

        .section-head {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 28px;
        }

        .section-head.center {
            display: block;
            text-align: center;
        }

        .section-label {
            margin: 0 0 6px;
            color: var(--accent);
            font-size: 12px;
            font-weight: 800;
            letter-spacing: .1em;
            text-transform: uppercase;
        }

        .section-title {
            margin: 0;
            font-family: Poppins, sans-serif;
            font-size: clamp(25px, 3vw, 34px);
            line-height: 1.2;
            letter-spacing: -.025em;
        }

        .section-subtitle {
            margin: 8px auto 0;
            color: var(--muted);
            font-size: 14px;
            max-width: 620px;
        }

        /* ---------- Categories ---------- */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .cat-card {
            padding: 22px 12px;
            text-align: center;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            background: white;
            box-shadow: 0 4px 15px rgba(15,23,42,.03);
            transition: .25s ease;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            border-color: #bfdbfe;
            box-shadow: var(--shadow-hover);
        }

        .cat-icon {
            width: 50px;
            height: 50px;
            margin: 0 auto 12px;
            display: grid;
            place-items: center;
            border-radius: 14px;
            background: var(--accent-light);
            color: var(--accent);
            font-size: 20px;
        }

        .cat-card h4 {
            margin: 0;
            font-size: 14px;
        }

        .cat-card p {
            margin: 4px 0 0;
            color: var(--muted);
            font-size: 11px;
        }

        /* ---------- Products ---------- */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product {
            position: relative;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            background: white;
            box-shadow: 0 4px 18px rgba(15,23,42,.04);
            transition: .25s ease;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .product-image-wrap {
            position: relative;
            height: 230px;
            overflow: hidden;
            background: #f3f4f6;
        }

        .product-image {
            width: 100%;
            height: 100%;
            display: block;
            object-fit: cover;
            transition: transform .4s ease;
        }

        .product:hover .product-image {
            transform: scale(1.05);
        }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            z-index: 2;
            padding: 5px 9px;
            border-radius: 7px;
            color: white;
            background: var(--success);
            font-size: 10px;
            font-weight: 800;
        }

        .badge.sale {
            background: var(--danger);
        }

        .product-wish {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 2;
            width: 34px;
            height: 34px;
            border: 0;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: #4b5563;
            box-shadow: 0 4px 12px rgba(0,0,0,.08);
        }

        .product-body {
            padding: 17px;
            flex: 1;
        }

        .product-category {
            margin-bottom: 5px;
            color: var(--accent);
            font-size: 10px;
            font-weight: 800;
            letter-spacing: .06em;
            text-transform: uppercase;
        }

        .product h3 {
            margin: 0 0 8px;
            font-size: 15px;
            line-height: 1.35;
        }

        .rating {
            color: var(--warning);
            font-size: 12px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 4px;
        }

        .price-row {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 10px;
            margin-top: 14px;
        }

        .price {
            color: var(--primary);
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            margin-left: 5px;
            color: #9ca3af;
            font-size: 12px;
            font-weight: 500;
            text-decoration: line-through;
        }

        .product-footer {
            display: flex;
            gap: 8px;
            padding: 0 17px 17px;
        }

        .add-btn {
            flex: 1;
            min-height: 40px;
            border: 0;
            border-radius: 9px;
            background: var(--primary);
            color: white;
            font-size: 12px;
            font-weight: 700;
            transition: .2s ease;
        }

        .add-btn:hover {
            background: #1f2937;
        }

        .add-btn:disabled {
            opacity: .7;
            cursor: default;
        }

        .wish-btn {
            width: 40px;
            border: 1px solid var(--border);
            border-radius: 9px;
            background: white;
            color: #6b7280;
        }

        /* ---------- Flash Sale ---------- */
        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            border-radius: 20px;
            background: white;
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
        }

        .deal-image {
            min-height: 370px;
            width: 100%;
            object-fit: cover;
        }

        .deal-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 45px;
        }

        .deal-tag {
            display: inline-block;
            width: fit-content;
            padding: 6px 10px;
            border-radius: 7px;
            background: #fef2f2;
            color: var(--danger);
            font-size: 11px;
            font-weight: 800;
        }

        .deal h3 {
            margin: 15px 0 8px;
            font-family: Poppins, sans-serif;
            font-size: 30px;
        }

        .deal-description {
            margin: 0;
            color: var(--muted);
            font-size: 14px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 24px 0;
        }

        .time-box {
            min-width: 65px;
            padding: 10px 8px;
            text-align: center;
            border-radius: 10px;
            background: var(--primary);
            color: white;
        }

        .time-value {
            font-size: 20px;
            font-weight: 800;
            line-height: 1.1;
        }

        .time-label {
            margin-top: 3px;
            color: #9ca3af;
            font-size: 9px;
            text-transform: uppercase;
        }

        .deal-price {
            margin-bottom: 18px;
            font-size: 27px;
            font-weight: 800;
        }

        .discount {
            display: inline-block;
            margin-left: 8px;
            padding: 5px 8px;
            border-radius: 7px;
            background: #dcfce7;
            color: #15803d;
            font-size: 11px;
            vertical-align: middle;
        }

        /* ---------- Testimonials ---------- */
        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .testimonial {
            padding: 24px;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            background: white;
            box-shadow: 0 4px 15px rgba(15,23,42,.03);
        }

        .testimonial .rating {
            margin-bottom: 12px;
        }

        .testimonial blockquote {
            margin: 0 0 20px;
            color: #374151;
            font-size: 14px;
        }

        .reviewer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .reviewer img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .reviewer strong {
            display: block;
            font-size: 13px;
        }

        .reviewer small {
            color: var(--muted);
            font-size: 11px;
        }

        /* ---------- Newsletter ---------- */
        .newsletter {
            position: relative;
            overflow: hidden;
            padding: 45px 30px;
            border-radius: 20px;
            text-align: center;
            color: white;
            background: linear-gradient(135deg, #111827, #1e3a8a);
        }

        .newsletter h2 {
            margin: 0 0 7px;
            color: white;
            font-family: Poppins, sans-serif;
        }

        .newsletter p {
            margin: 0 0 22px;
            color: #cbd5e1;
            font-size: 14px;
        }

        .newsletter-form {
            max-width: 520px;
            margin: 0 auto;
            display: flex;
            gap: 8px;
        }

        .newsletter input {
            min-width: 0;
            flex: 1;
            height: 44px;
            padding: 0 15px;
            border: 1px solid rgba(255,255,255,.2);
            border-radius: 9px;
            outline: 0;
            background: rgba(255,255,255,.1);
            color: white;
        }

        .newsletter input::placeholder {
            color: #94a3b8;
        }

        #newsletterMsg {
            margin-top: 10px;
            font-size: 12px;
        }

        /* ---------- Footer ---------- */
        footer {
            margin-top: 25px;
            padding: 45px 0 20px;
            background: #0b1120;
            color: #94a3b8;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 35px;
        }

        .footer-brand {
            color: white;
            font-family: Poppins, sans-serif;
            font-size: 20px;
            font-weight: 800;
        }

        .footer-description {
            max-width: 330px;
            margin: 10px 0 18px;
            font-size: 13px;
        }

        .socials {
            display: flex;
            gap: 8px;
        }

        .socials a {
            width: 34px;
            height: 34px;
            display: grid;
            place-items: center;
            border: 1px solid #263244;
            border-radius: 8px;
            color: #cbd5e1;
            transition: .2s ease;
        }

        .socials a:hover {
            color: white;
            background: #1f2937;
        }

        .footer-col h4 {
            margin: 0 0 12px;
            color: white;
            font-size: 13px;
        }

        .footer-col a {
            display: block;
            margin: 8px 0;
            font-size: 12px;
            transition: .2s ease;
        }

        .footer-col a:hover {
            color: white;
        }

        .copyright {
            margin-top: 35px;
            padding-top: 18px;
            border-top: 1px solid #1f2937;
            text-align: center;
            font-size: 11px;
        }

        /* ---------- Empty Search ---------- */
        .empty-state {
            grid-column: 1 / -1;
            padding: 50px 20px;
            text-align: center;
            border: 1px dashed #d1d5db;
            border-radius: var(--radius);
            background: white;
        }

        .empty-state i {
            margin-bottom: 10px;
            color: #9ca3af;
            font-size: 30px;
        }

        .empty-state h3 {
            margin: 0 0 5px;
        }

        .empty-state p {
            margin: 0;
            color: var(--muted);
            font-size: 13px;
        }

        /* ---------- Responsive ---------- */
        @media (max-width: 1050px) {
            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
            }

            .header-inner {
                gap: 10px;
            }

            .search {
                width: min(300px, 35vw);
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media (max-width: 760px) {
            .container {
                width: min(100% - 28px, var(--container));
            }

            .header-inner {
                min-height: 66px;
            }

            .brand {
                font-size: 18px;
            }

            .brand-mark {
                width: 34px;
                height: 34px;
            }

            .search {
                flex: 1;
                width: auto;
                min-width: 120px;
            }

            .header-actions .hide-mobile {
                display: none;
            }

            .hero {
                min-height: 520px;
                background-position: 62% center;
            }

            .hero-content {
                padding: 55px 0;
            }

            .hero p {
                font-size: 15px;
            }

            .section {
                padding: 52px 0;
            }

            .section-head {
                display: block;
            }

            .categories,
            .products,
            .testimonials {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 250px;
            }

            .deal-content {
                padding: 28px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 480px) {
            .categories,
            .products,
            .testimonials {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 37px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter input,
            .newsletter .btn {
                width: 100%;
            }

            .timer {
                gap: 6px;
            }

            .time-box {
                min-width: 57px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="container header-inner">

        <button class="icon-btn mobile-toggle" id="mobileToggle" aria-label="Open menu">
            <i class="fas fa-bars"></i>
        </button>

        <a class="brand" href="#">
            <span class="brand-mark"><i class="fas fa-bag-shopping"></i></span>
            <span>Nexus<span class="accent">Shop</span></span>
        </a>

        <nav class="main-nav" aria-label="Primary navigation">
            <ul>
                <li><a class="active" href="#"><i class="fas fa-house"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#about"><i class="fas fa-circle-info"></i> About</a></li>
            </ul>
        </nav>

        <div class="header-right">
            <div class="search" role="search">
                <i class="fas fa-search"></i>
                <input id="searchInput"
                       type="search"
                       placeholder="Search products..."
                       aria-label="Search products">
                <button class="icon-btn" id="searchBtn" aria-label="Search">
                    <i class="fas fa-arrow-right"></i>
                </button>
            </div>

            <div class="header-actions">
                <a class="icon-btn hide-mobile" href="#" title="Account">
                    <i class="far fa-user"></i>
                </a>

                <a class="icon-btn hide-mobile" href="#" title="Wishlist">
                    <i class="far fa-heart"></i>
                </a>

                <a class="icon-btn cart" href="#" id="cartBtn" title="Shopping cart">
                    <i class="fas fa-cart-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>

    <div id="mobileMenu" style="display:none;">
        <div class="container" style="padding:10px 0 16px;">
            <nav>
                <a href="#" style="display:block;padding:8px 0;">Home</a>
                <a href="#categories" style="display:block;padding:8px 0;">Categories</a>
                <a href="#products" style="display:block;padding:8px 0;">Trending Products</a>
                <a href="#deals" style="display:block;padding:8px 0;">Deals</a>
                <a href="#about" style="display:block;padding:8px 0;">About</a>
            </nav>
        </div>
    </div>
</header>

<main>

    <!-- Hero -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <div class="eyebrow">
                    <i class="fas fa-sparkles"></i>
                    New collection is here
                </div>

                <h1>Find products you'll <span>love.</span></h1>

                <p>
                    Discover premium fashion, technology and everyday essentials,
                    carefully selected to make shopping simple and enjoyable.
                </p>

                <div class="hero-actions">
                    <button class="btn btn-primary" id="shopNow">
                        Shop Now <i class="fas fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-light" id="exploreDeals">
                        View Today's Deals
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="section" id="categories">
        <div class="container">
            <div class="section-head center">
                <p class="section-label">Browse collection</p>
                <h2 class="section-title">Shop by Category</h2>
                <p class="section-subtitle">
                    Explore our most popular categories and find exactly what you're looking for.
                </p>
            </div>

            <div class="categories" id="categoriesGrid"></div>
        </div>
    </section>

    <!-- Products -->
    <section class="section" id="products" style="background:#fff;">
        <div class="container">
            <div class="section-head">
                <div>
                    <p class="section-label">Popular right now</p>
                    <h2 class="section-title">Trending Products</h2>
                    <p class="section-subtitle" style="margin-left:0;">
                        Top picks based on recent customer activity.
                    </p>
                </div>

                <button class="btn" id="clearSearch"
                        style="display:none;border:1px solid var(--border);background:white;">
                    Clear Search
                </button>
            </div>

            <div class="products" id="productsGrid"></div>
        </div>
    </section>

    <!-- Flash Sale -->
    <section class="section" id="deals">
        <div class="container">
            <div class="section-head center">
                <p class="section-label">Limited time</p>
                <h2 class="section-title">Today's Flash Sale</h2>
                <p class="section-subtitle">
                    Grab this special offer before the countdown ends.
                </p>
            </div>

            <div class="deal">
                <img class="deal-image"
                     src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                     alt="MacBook Air M2">

                <div class="deal-content">
                    <span class="deal-tag">17% OFF TODAY</span>

                    <h3>MacBook Air M2</h3>

                    <p class="deal-description">
                        Thin, lightweight and powerful. Experience outstanding
                        performance in a beautifully portable design.
                    </p>

                    <div class="timer">
                        <div class="time-box">
                            <div class="time-value" id="dealDays">0</div>
                            <div class="time-label">Days</div>
                        </div>
                        <div class="time-box">
                            <div class="time-value" id="dealHours">00</div>
                            <div class="time-label">Hours</div>
                        </div>
                        <div class="time-box">
                            <div class="time-value" id="dealMinutes">00</div>
                            <div class="time-label">Minutes</div>
                        </div>
                        <div class="time-box">
                            <div class="time-value" id="dealSeconds">00</div>
                            <div class="time-label">Seconds</div>
                        </div>
                    </div>

                    <div class="deal-price">
                        $999
                        <span class="old-price">$1,199</span>
                        <span class="discount">SAVE $200</span>
                    </div>

                    <p style="margin:0 0 18px;color:var(--muted);font-size:12px;">
                        <i class="fas fa-circle" style="color:var(--success);font-size:7px;"></i>
                        Only <strong>12</strong> items remaining at this price
                    </p>

                    <div>
                        <button class="btn btn-primary" id="buyDeal">
                            Buy Now <i class="fas fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section" id="about" style="background:#fff;">
        <div class="container">
            <div class="section-head center">
                <p class="section-label">Customer feedback</p>
                <h2 class="section-title">What Our Customers Say</h2>
                <p class="section-subtitle">
                    Real feedback from people who shop with NexusShop.
                </p>
            </div>

            <div class="testimonials">
                <article class="testimonial">
                    <div class="rating">★★★★★</div>
                    <blockquote>
                        "Fast shipping, excellent customer support and the product
                        exceeded my expectations."
                    </blockquote>

                    <div class="reviewer">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                             alt="Customer">
                        <div>
                            <strong>Ava Martin</strong>
                            <small>Verified buyer</small>
                        </div>
                    </div>
                </article>

                <article class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <blockquote>
                        "Great product selection and the checkout process was
                        simple and smooth. I'll definitely shop again."
                    </blockquote>

                    <div class="reviewer">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"
                             alt="Customer">
                        <div>
                            <strong>Michael Lee</strong>
                            <small>Frequent buyer</small>
                        </div>
                    </div>
                </article>

                <article class="testimonial">
                    <div class="rating">★★★★★</div>
                    <blockquote>
                        "The deals are excellent and the website is very easy to
                        navigate. Highly recommended."
                    </blockquote>

                    <div class="reviewer">
                        <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=100&q=80"
                             alt="Customer">
                        <div>
                            <strong>Sarah Wilson</strong>
                            <small>Verified buyer</small>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="section">
        <div class="container">
            <div class="newsletter">
                <h2>Stay in the loop</h2>
                <p>Get new arrivals, exclusive offers and special deals delivered to your inbox.</p>

                <form class="newsletter-form" id="newsletterForm">
                    <input id="newsletterEmail"
                           type="email"
                           placeholder="Enter your email address"
                           aria-label="Email address"
                           required>

                    <button class="btn btn-primary" type="submit" id="subscribeBtn">
                        Subscribe
                    </button>
                </form>

                <div id="newsletterMsg" style="display:none;"></div>
            </div>
        </div>
    </section>

</main>

<footer>
    <div class="container">
        <div class="footer-grid">

            <div>
                <div class="footer-brand">
                    Nexus<span style="color:#60a5fa;">Shop</span>
                </div>

                <p class="footer-description">
                    A modern e-commerce experience designed to make discovering
                    and shopping for great products simple.
                </p>

                <div class="socials">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                </div>
            </div>

            <div class="footer-col">
                <h4>Company</h4>
                <a href="#about">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
            </div>

            <div class="footer-col">
                <h4>Support</h4>
                <a href="#">Help Center</a>
                <a href="#">Shipping & Returns</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="footer-col">
                <h4>Shopping</h4>
                <a href="#categories">Categories</a>
                <a href="#products">Products</a>
                <a href="#deals">Today's Deals</a>
            </div>
        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>
    </div>
</footer>

<script>
    /* ---------- Product Data ---------- */

    const CATEGORIES = [
        { id: "phones", name: "Smartphones", icon: "fa-mobile-screen-button" },
        { id: "laptops", name: "Laptops", icon: "fa-laptop" },
        { id: "clothing", name: "Clothing", icon: "fa-shirt" },
        { id: "gadgets", name: "Gadgets", icon: "fa-headphones" },
        { id: "footwear", name: "Footwear", icon: "fa-shoe-prints" },
        { id: "accessories", name: "Accessories", icon: "fa-watch" }
    ];

    const PRODUCTS = [
        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
            category: "phones"
        },
        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            badge: "Popular",
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
            category: "laptops"
        },
        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-13%",
            img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
            category: "accessories"
        },
        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85",
            category: "footwear"
        },
        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            badge: "Pro",
            img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
            category: "gadgets"
        },
        {
            id: 6,
            title: "Premium Fragrance",
            price: 120,
            rating: 5,
            reviews: 189,
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
            category: "accessories"
        },
        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "-20%",
            img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85",
            category: "accessories"
        },
        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            badge: "Best Seller",
            img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85",
            category: "gadgets"
        }
    ];

    const CATEGORY_NAMES = {
        phones: "Smartphones",
        laptops: "Laptops",
        clothing: "Clothing",
        gadgets: "Gadgets",
        footwear: "Footwear",
        accessories: "Accessories"
    };

    let cartCount = 0;

    const categoriesGrid = document.getElementById("categoriesGrid");
    const productsGrid = document.getElementById("productsGrid");
    const searchInput = document.getElementById("searchInput");
    const cartCountEl = document.getElementById("cartCount");
    const clearSearch = document.getElementById("clearSearch");

    function escapeHtml(value) {
        return String(value).replace(/[&<>"']/g, function (char) {
            return {
                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#39;"
            }[char];
        });
    }

    function renderCategories() {
        categoriesGrid.innerHTML = CATEGORIES.map(function (cat) {
            return `
                <button class="cat-card" data-category="${cat.id}">
                    <div class="cat-icon">
                        <i class="fas ${cat.icon}"></i>
                    </div>
                    <h4>${escapeHtml(cat.name)}</h4>
                    <p>Explore products</p>
                </button>
            `;
        }).join("");

        categoriesGrid.querySelectorAll(".cat-card").forEach(function (card) {
            card.addEventListener("click", function () {
                searchInput.value = CATEGORY_NAMES[card.dataset.category];
                filterProducts(card.dataset.category, true);
            });
        });
    }

    function renderProducts(list) {
        if (!list.length) {
            productsGrid.innerHTML = `
                <div class="empty-state">
                    <i class="fas fa-box-open"></i>
                    <h3>No products found</h3>
                    <p>Try another search term or browse our categories.</p>
                </div>
            `;
            return;
        }

        productsGrid.innerHTML = list.map(function (product) {
            const isSale = product.badge && product.badge.startsWith("-");

            return `
                <article class="product">
                    ${product.badge ? `
                        <span class="badge ${isSale ? "sale" : ""}">
                            ${escapeHtml(product.badge)}
                        </span>
                    ` : ""}

                    <button class="product-wish" aria-label="Add to wishlist">
                        <i class="far fa-heart"></i>
                    </button>

                    <div class="product-image-wrap">
                        <img class="product-image"
                             src="${product.img}"
                             alt="${escapeHtml(product.title)}">
                    </div>

                    <div class="product-body">
                        <div class="product-category">
                            ${escapeHtml(CATEGORY_NAMES[product.category])}
                        </div>

                        <h3>${escapeHtml(product.title)}</h3>

                        <div class="rating">
                            ${"★".repeat(Math.round(product.rating))}
                            <span>(${product.reviews} reviews)</span>
                        </div>

                        <div class="price-row">
                            <div>
                                <span class="price">$${product.price.toLocaleString()}</span>
                                ${product.oldPrice ? `
                                    <span class="old-price">$${product.oldPrice.toLocaleString()}</span>
                                ` : ""}
                            </div>
                        </div>
                    </div>

                    <div class="product-footer">
                        <button class="add-btn" data-id="${product.id}">
                            <i class="fas fa-cart-plus"></i> Add to Cart
                        </button>

                        <button class="wish-btn" aria-label="Wishlist">
                            <i class="far fa-heart"></i>
                        </button>
                    </div>
                </article>
            `;
        }).join("");

        productsGrid.querySelectorAll(".add-btn").forEach(function (button) {
            button.addEventListener("click", function () {
                addToCart(Number(button.dataset.id), button);
            });
        });
    }

    function addToCart(productId, button) {
        const product = PRODUCTS.find(function (item) {
            return item.id === productId;
        });

        if (!product) return;

        cartCount++;
        cartCountEl.textContent = cartCount;

        const original = button.innerHTML;
        button.innerHTML = '<i class="fas fa-check"></i> Added';
        button.disabled = true;

        setTimeout(function () {
            button.innerHTML = original;
            button.disabled = false;
        }, 1200);
    }

    function filterProducts(query, categoryMode) {
        const q = String(query || "").trim().toLowerCase();

        if (!q) {
            renderProducts(PRODUCTS);
            clearSearch.style.display = "none";
            return;
        }

        const filtered = PRODUCTS.filter(function (product) {
            if (categoryMode) {
                return product.category === query;
            }

            return product.title.toLowerCase().includes(q) ||
                   product.category.toLowerCase().includes(q) ||
                   CATEGORY_NAMES[product.category].toLowerCase().includes(q);
        });

        renderProducts(filtered);
        clearSearch.style.display = "inline-flex";

        document.getElementById("products").scrollIntoView({
            behavior: "smooth",
            block: "start"
        });
    }

    /* Search */
    document.getElementById("searchBtn").addEventListener("click", function () {
        filterProducts(searchInput.value, false);
    });

    searchInput.addEventListener("keydown", function (event) {
        if (event.key === "Enter") {
            filterProducts(searchInput.value, false);
        }
    });

    searchInput.addEventListener("input", function () {
        if (!searchInput.value.trim()) {
            renderProducts(PRODUCTS);
            clearSearch.style.display = "none";
        }
    });

    clearSearch.addEventListener("click", function () {
        searchInput.value = "";
        renderProducts(PRODUCTS);
        clearSearch.style.display = "none";
    });

    /* Mobile menu */
    document.getElementById("mobileToggle").addEventListener("click", function () {
        const menu = document.getElementById("mobileMenu");
        menu.style.display = menu.style.display === "block" ? "none" : "block";
    });

    /* Hero buttons */
    document.getElementById("shopNow").addEventListener("click", function () {
        document.getElementById("products").scrollIntoView({
            behavior: "smooth"
        });
    });

    document.getElementById("exploreDeals").addEventListener("click", function () {
        document.getElementById("deals").scrollIntoView({
            behavior: "smooth"
        });
    });

    /* Flash sale */
    document.getElementById("buyDeal").addEventListener("click", function () {
        cartCount++;
        cartCountEl.textContent = cartCount;

        const button = this;
        const original = button.innerHTML;

        button.innerHTML = '<i class="fas fa-check"></i> Added to Cart';
        button.disabled = true;

        setTimeout(function () {
            button.innerHTML = original;
            button.disabled = false;
        }, 1500);
    });

    /* Newsletter */
    document.getElementById("newsletterForm").addEventListener("submit", function (event) {
        event.preventDefault();

        const email = document.getElementById("newsletterEmail");
        const message = document.getElementById("newsletterMsg");

        if (!email.value || !email.value.includes("@")) {
            message.style.display = "block";
            message.style.color = "#fecaca";
            message.textContent = "Please enter a valid email address.";
            return;
        }

        message.style.display = "block";
        message.style.color = "#bbf7d0";
        message.textContent = "Thanks! You're successfully subscribed.";

        email.value = "";

        setTimeout(function () {
            message.style.display = "none";
        }, 3500);
    });

    /* Countdown */
    (function setupDealTimer() {
        const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);

        function tick() {
            const diff = Math.max(0, target - new Date());

            const days = Math.floor(diff / (24 * 60 * 60 * 1000));
            const hours = Math.floor((diff % (24 * 60 * 60 * 1000)) / (60 * 60 * 1000));
            const minutes = Math.floor((diff % (60 * 60 * 1000)) / (60 * 1000));
            const seconds = Math.floor((diff % (60 * 1000)) / 1000);

            document.getElementById("dealDays").textContent = days;
            document.getElementById("dealHours").textContent = String(hours).padStart(2, "0");
            document.getElementById("dealMinutes").textContent = String(minutes).padStart(2, "0");
            document.getElementById("dealSeconds").textContent = String(seconds).padStart(2, "0");

            if (diff <= 0) {
                clearInterval(timer);
            }
        }

        tick();
        const timer = setInterval(tick, 1000);
    })();

    /* Initialization */
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById("year").textContent = new Date().getFullYear();
</script>

</body>
</html>
