<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Masterpieces</title>
    <style>
        /* Basic Reset and Font */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: font-family: 'Roboto', 'Roboto', Roboto;
        }

        body {
            background-color: #f4f4f9;
            color: #333;
        }

        /* Navbar */
        .navbar {
            background-color: #f8f8f8;
            padding: 15px;
            display: flex;
            justify-content: space-between; /* Keeps logo on the left and centers menu */
            align-items: center;
            border-bottom: 2px solid #ddd;
        }

        .navbar .logo {
            font-size: 1.5em;
            font-weight: bold;
            color: #333;
            display: flex;
            align-items: center;
        }

        .navbar .logo img {
            width: 125px;
            height: 75px;
            margin-right: 10px;
        }

        .navbar .menu-container {
            flex: 1;
            display: flex;
            justify-content: center; /* Centers the menu items */
        }

        .navbar .menu {
            display: flex;
            gap: 20px;
            font-size: 1em;
        }

        .navbar .menu a {
            color: #333;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar .menu a:hover {
            color: #3498db;
        }

        /* Gallery Container */
        .gallery-container {
            width: 80%;
            margin: auto;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 40px 0;
        }

        /* Individual Art Card */
        .art-card {
            width: 250px;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            background-color: #fff;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .art-card:hover {
            transform: translateY(-5px);
        }

        .art-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .art-card h3 {
            font-size: 1.2em;
            color: #333;
            margin: 10px 0;
        }

        .art-card p {
            color: #1abc9c;
            font-weight: bold;
            font-size: 1em;
            margin-bottom: 10px;
        }

        .art-card .add-to-cart {
            display: inline-block;
            margin-bottom: 15px;
            padding: 8px 20px;
            font-size: 0.9em;
            color: #fff;
            background-color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .art-card .add-to-cart:hover {
            background-color: #1abc9c;
        }
    </style>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %>
   

    <!-- Gallery Section -->
    <div class="gallery-container">
        <!-- Art Card 1 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17279582541727958254jogen_chowdhury_11_75x8_25.jpeg" alt="Art 1">
            <h3>Ganesha</h3>
            <p>INR 125000</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>

        <!-- Art Card 2 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17174156271717415627rabin_mondal48x60.jpeg" alt="Art 2">
            <h3>Musican</h3>
            <p>INR 216450</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>

        <!-- Art Card 3 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17192971031719297102jamini_roy_18x16.jpeg" alt="Art 3">
            <h3>Dancing Gopini</h3>
            <p>INR 325600</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>

        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17174153781717415378vrindavan_solanki_30x28_1.jpeg" alt="Art 4">
            <h3>Ramesh Gorjala's Art</h3>
            <p>INR 230550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17174153421717415342vrindavan_solanki_30x28_2.jpeg" alt="Art 4">
            <h3>Shripa Bhattacharya's Art</h3>
            <p>INR 289550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/16922502101692250209floral_40x40.jpeg" alt="Art 4">
            <h3>Floral</h3>
            <p>INR 125050</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/1700733278170073327836x42_mmoc.jpeg" alt="Art 4">
            <h3>Couple</h3>
            <p>INR 543550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17305340111730534011sachin_akalekar_36x60_acoc.jpeg" alt="Art 4">
            <h3>Nandi</h3>
            <p>INR 36550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17020145411702014541lalu_shaw_22x15_2.jpeg" alt="Art 4">
            <h3>Baba</h3>
            <p>INR 215500</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17020145851702014585lalu_shaw_22x15_1.jpeg" alt="Art 4">
            <h3>Babi</h3>
            <p>INR 215500</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053107811705310781ajay_de_horse_36x13_cop.jpeg" alt="Art 4">
            <h3>Horse</h3>
            <p>INR 120550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053118671705311867subrata_gango_48x72_2.jpeg" alt="Art 4">
            <h3>Daanidiya Raas</h3>
            <p>INR 135550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17292445561729244556cashi_sutar_kailasha_30x36_aoc.jpeg" alt="Art 4">
            <h3>Kailash</h3>
            <p>INR 99550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17292444611729244461cashi_sutar_lord_krishna_34x38_aoc.jpeg" alt="Art 4">
            <h3>Lord Krishna</h3>
            <p>INR 54550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053120311705312031jms_mani_couple_set_12x10_2.jpeg" alt="Art 4">
            <h3>Man</h3>
            <p>INR 100000</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053123211705312321shuva_46x60.jpeg" alt="Art 4">
            <h3>Krishna with Chariot</h3>
            <p>INR 264550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053121361705312136jms_mani_couple_set_12x10_1.jpeg" alt="Art 4">
            <h3>Woman</h3>
            <p>INR 110550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17292431741729243173jyothy_lakshmi_surge_36x24.jpg" alt="Art 4">
            <h3>Surge</h3>
            <p>INR 27550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053127351705312734samir_mondal_shweta_22x30.jpeg" alt="Art 4">
            <h3>Swetha</h3>
            <p>INR 131550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17289972831728997283chetan_catigar_42x57_celestial_couple.jpeg" alt="Art 4">
            <h3>Krishna Leela</h3>
            <p>INR 89550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17289972181728997218chetan_catigar_divine_family_32x45_aoc.jpeg" alt="Art 4">
            <h3>Divine Family</h3>
            <p>INR 78550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17289969421728996942ramakrishna_vasunthala_24x48.jpg" alt="Art 4">
            <h3>RamaKrishna Vasunthala's Art</h3>
            <p>INR 57590</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17289787071728978707somnath_bothe_36x48.jpg" alt="Art 4">
            <h3>Banaras Ghat</h3>
            <p>INR 56250</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17053132531705313253rabin_mondal_40x60_i.jpeg" alt="Art 4">
            <h3>Musicians</h3>
            <p>INR 213500</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17218946591721894659sukanta_das_trishakti___36x48.jpeg" alt="Art 4">
            <h3>Trishakthi</h3>
            <p>INR 52950</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17218945791721894579sukanta_das_satchitananda___30x30.jpeg" alt="Art 4">
            <h3>Satchitananda</h3>
            <p>INR 72550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17218944261721894426sujata_achrekar_24x24_2.jpeg" alt="Art 4">
            <h3>Sujatha Acherakar's Art</h3>
            <p>INR 30550</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
        <!-- Art Card 4 -->
        <div class="art-card">
            <img src="https://www.myindianart.com/uploads/appimage_500/17218940841721894084kandi_narsimlu_2.jpeg" alt="Art 4">
            <h3>Kandi Narasimulu's Art</h3>
            <p>INR 25000</p>
            <a href="/wishlist" class="add-to-cart">Add to Cart</a>
        </div>
        
    </div>
</body>
</html>