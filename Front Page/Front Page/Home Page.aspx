<%@ Page Language="C#" CodeBehind="Home Page.aspx.cs" MasterPageFile="Home Page.Master"
    AutoEventWireup="true" Inherits="Front_Page.Front_Page" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /* Reset Styles */
        body, ul {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Typography */
        h1 {
            text-align: left;
            font-family: 'Gloock', serif;
            font-size: 50px;
            line-height: 1.2; /* Adjust for better spacing */
            color: #000000;
            margin-top: 0px; /* Reduce the margin-top */
            margin-bottom: 0px;
        }

            h1 span:nth-child(2) {
                color: #00ADBB;
            }

        h6 {
            text-align: left;
            color: #000000;
            font-family: 'Onest', sans-serif;
            font-size: 24px;
            margin-bottom: 0px; /* Reduce the margin-bottom */
        }

        p {
            text-align: left;
            color: #000000;
            font-size: 16px;
        }

        /* Row Layout */
        .row {
            display: flex;
            align-items: center; /* Align items vertically in the center */
            margin-left: 100px;
        }

        /* Section Styling */
        .section {
            width: 100%;
            padding: 82px 0;
            text-align: center;
        }

        .section1 {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between; /* Ensure items are spaced evenly */
            background-color: #DCFAFF;
            padding-top: 10px;
        }

            .section1 .text-container {
                flex: 1;
                padding-right: 20px;
                padding-left: 40px; /* Increase left padding/margin */
            }

            .section1 h1 {
                font-size: 70px;
                line-height: 1; /* Adjust line-height to reduce space between lines */
                margin-bottom: 5px; /* Adjust margin-bottom to reduce space between h1 and p */
                white-space: nowrap;
            }

            .section1 h6 {
                font-family: 'Onest', sans-serif;
                font-size: 24px; /* Adjust font-size as needed */
                margin-bottom: 0px; /* Reduce the margin-bottom */
                color: #000000;
            }

            .section1 p {
                font-size: 18px; /* Adjust font-size as needed */
                color: #000000;
                margin-top: 0; /* Reduce the margin-top to reduce space between p and h1 */
            }

            .section1 img {
                flex: 1;
                max-width: 60%; /* Increase the image size */
                height: auto;
                margin: 0 auto;
            }
        /* Section 1 Button Styling */
        .btn {
            background-color: #EE970A;
            border-color: #ffc107;
            font-weight: 500;
            font-family: Arial, sans-serif;
            padding: 10px 10px;
            font-size: 14px;
            border-radius: 5px;
            text-align: left;
        }

            .btn:hover {
                background-color: #00ADBB;
                border-color: #00ADBB;
                color: #ffffff;
                font-weight: 500;
                font-family: Arial, sans-serif;
            }



        /* Section 2 */
        .section2-custom {
            background-image: url('Assets/Images/Section%202%20Background%20Image.png');
            background-size: cover;
            text-align: center;
            padding-top: 0px;
        }

            .section2-custom .row-custom {
                justify-content: center; /* Center horizontally */
                margin-left: 0;
                margin-bottom: 30px;
                padding-top: 20px;
            }

        .h2-custom {
            font-size: 40px;
            line-height: 1;
            margin-bottom: 5px;
            font-family: Arial, sans-serif;
        }


        /* Image Hover Effects */
        .image-row-custom .col-md-4-custom {
            margin-bottom: 20px;
            margin-left: 0px;
        }

        .hover-img-custom {
            max-width: 60%; /* Reduce image size */
            transition: opacity 0.3s ease-in-out;
        }




        /* Section 3 */
        .section3 {
            background-color: aquamarine;
        }

        .section4 {
            position: relative;
            padding: 82px 0;
            overflow: hidden;
            background-color: #E6F7F8;
        }

        /* Image Styling */


        .square-img {
            width: 300px;
            height: auto;
            margin-right: -50px;
            border-radius: 10px;
            z-index: 1;
            margin-top: -100px;
        }

        .rectangle-img {
            max-width: 330px;
            height: 200px;
            border-radius: 10px;
            position: absolute;
            bottom: -100px;
            left: -200px;
            z-index: 8;
        }

        .section4 img.img-fluid {
            max-width: 100%;
            height: auto;
            width: 90%;
            max-width: 700px;
        }

        /* Service Card Styling */
        .service-card {
            border: none;
            transition: transform 0.3s ease;
            background-color: red;
            align-content: center;
            height: 300px;
            border-radius: 10px;
        }

            .service-card:hover {
                transform: scale(1.20);
            }

            .service-card .card-body {
                display: flex;
                align-items: center;
                padding: 20px;
                text-align: center;
            }

            .service-card .fa-file-alt {
                color: #FFF;
            }

            .service-card .card-title {
                color: #FFF;
                font-weight: 500;
                text-align: left;
            }

        /* Heading with Line Styling */
        .heading-with-line {
            display: inline-block;
            position: relative;
        }

            .heading-with-line::after {
                content: "";
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 60%;
                height: 2px;
                background-color: #333;
            }

        /* Alignment */
        .align-left {
            display: block;
            width: auto;
            margin-left: 0;
            margin-right: 0;
            text-align: left;
        }

        /* Social Icons */
        .social-icons {
            margin-top: 20px;
            text-align: center;
        }

        .social-icon {
            margin-right: 15px;
            font-size: 32px;
            color: #333;
            text-decoration: none;
            display: inline-block;
            vertical-align: top;
            transition: opacity 0.3s;
        }

            .social-icon:hover {
                opacity: 0.7;
            }

            .social-icon i {
                display: block;
            }

            .social-icon span {
                display: block;
                margin-top: 5px;
                font-size: 14px;
            }

        /* Image Container Styling */
        .image-container {
            position: relative;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .section1 {
                flex-direction: column-reverse;
                text-align: left;
            }

                .section1 h1 {
                    font-size: 45px;
                    line-height: 1; /* Adjust line-height to reduce space between lines */
                    margin-bottom: 10px; /* Adjust margin-bottom to reduce space between h1 and p */
                }

                .section1 h6 {
                    font-family: 'Onest', sans-serif;
                    font-size: 18px; /* Adjust font-size as needed */
                    margin-bottom: 10px; /* Reduce the margin-bottom */
                    color: #000000;
                }

                .section1 img {
                    display: none;
                }

                .section1 p {
                    font-size: 15px; /* Adjust font-size as needed */
                    color: #000000;
                    margin-top: 0; /* Reduce the margin-top to reduce space between p and h1 */
                }

            h1, h6, p {
                text-align: left;
            }

            .btn {
                display: inline-block;
                margin-top: 20px;
                text-align: center;
            }

            .image-container {
                flex-direction: column;
            }

            .square-img,
            .rectangle-img {
                margin: 0;
                position: static;
                width: 100%;
                height: auto;
            }

            .row {
                margin-left: 10px;
            }

            .h2-custom {
                font-size: 20px;
                line-height: 1.5;
            }
        }
    </style>

    <!-- First Section -->
    <div class="section section1">
        <div class="container">
            <div class="row">
                <!-- Text Section -->
                <div class="col-md-6">
                    <h6 style="text-align: left; color: #000000; font-family: Onest;">Instant Everything</h6>
                    <h1 style="text-align: left; font-family: Gloock;">
                        <span style="color: #000000;">Make</span>
                        <span style="color: #00ADBB;">Your Life</span>
                        <br />
                        <span style="color: #000000;">Smarter.</span>
                    </h1>
                    <p style="text-align: left; color: #000000; font-family: Onest;">
                        We provide best services for you and your loved ones
                    </p>
                    <asp:Button ID="button" runat="server" Text="Contact Us" class="btn btn-warning btn-sm align-left" />
                </div>

                <!-- Image Section -->
                <div class="col-md-6" style="text-align: center;">
                    <img src="Assets/Images/Home%20page%20vector.png" class="img-fluid3" />
                </div>
            </div>
        </div>
    </div>


    <!-- Second Section -->
    <div class="section section2-custom">
        <div class="container">
            <div class="row row-custom">
                <div class="col-md-12">
                    <h2 class="h2-custom" style="color: #ffffff;">Experience Our Premium Services 
                    <br />
                        for You and Your Loved Ones
                    </h2>
                </div>
            </div>
            <div class="row mt-5 align-content-center image-row-custom" style="margin-left: 0px;">
                <!-- Image 1 -->
                <div class="col-md-4 col-md-4-custom">
                    <a href="link1.html">
                        <img src="Assets/Images/Policies.png"
                            alt="Policies"
                            class="hover-img-custom img-fluid"
                            onmouseover="this.src='Assets/Images/Policies hover.png'"
                            onmouseout="this.src='Assets/Images/Policies.png'">
                    </a>
                </div>
                <!-- Image 2 -->
                <div class="col-md-4 col-md-4-custom">
                    <a href="link2.html">
                        <img src="Assets/Images/revivals.png"
                            alt="Revivals"
                            class="hover-img-custom img-fluid"
                            onmouseover="this.src='Assets/Images/revivals hover.png'"
                            onmouseout="this.src='Assets/Images/revivals.png'">
                    </a>
                </div>
                <!-- Image 3 -->
                <div class="col-md-4 col-md-4-custom">
                    <a href="link3.html">
                        <img src="Assets/Images/payments.png"
                            alt="Payments"
                            class="hover-img-custom img-fluid"
                            onmouseover="this.src='Assets/Images/payments hover.png'"
                            onmouseout="this.src='Assets/Images/payments.png'">
                    </a>
                </div>
            </div>
        </div>
    </div>





    <!-- Third Section -->
    <div class="section section3">
        <div class="container">
            <div class="row">

                <div class="col-md-6 d-flex align-items-center justify-content-center">
                    <div class="image-container d-flex flex-column justify-content-center align-items-center">
                        <img src="Images/saving.Jpg" class="img-fluid square-img mb-3" />
                        <img src="Images/travel.Jpg" class="img-fluid rectangle-img" />
                    </div>
                </div>

                <div class="col-md-6">
                    <h2 style="text-align: left; color: #1F99A0; font-family: Onest; font-size: 36px;">Your Perfect Partner
                        <br />
                        <span style="font-family: Gloock; font-size: 50px;">Life & General Insurance</span>
                    </h2>
                    <p style="text-align: left; color: #000000;">We are committed to providing you with the best life and general insurance solutions, tailored to your needs.</p>
                    <div class="social-icons">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                            <span>Facebook</span>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                            <span>Twitter</span>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                            <span>LinkedIn</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Fourth Section -->
    <div class="section section4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>We're Here to Help</h2>
                    <h6>Get in touch with us for more information or any assistance you need.</h6>
                    <p>Contact us at 123-456-7890 or email us at support@insurance.com</p>
                    <a href="#">
                        <img src="Images/whatsapp.png" alt="WhatsApp" width="32" height="32" />
                        WhatsApp Us</a>
                </div>

                <div class="col-md-6">
                    <img src="Images/insurance_support.jpg" alt="Customer Support" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

