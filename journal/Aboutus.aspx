<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AboutUs.aspx.vb" Inherits="journal.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MuscleMan - About Us</title>
    <style>
        
        body { background-color: #212832; font-family: Arial, sans-serif; color: #FFFFFF; margin: 0; padding: 0; }
        .navbar { background-color: #2C3E50; padding: 15px 20px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2); }
        .nav-link { color: wheat; text-decoration: none; margin-left: 20px; font-weight: bold; transition: color 0.3s; }
        .nav-link:hover { color: #00AEEF; }
        
        /* LAYOUT & CARDS */
        .content-container { display: flex; justify-content: center; /* Center the single card */
            padding: 30px 50px; max-width: 1200px; margin: 0 auto; 
        }
        .about-card { background-color: #3B4F81; padding: 35px; border-radius: 8px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); width: 100%; max-width: 800px; /* Wider card for text content */
            text-align: center;
        }
        .form-title { color: wheat; border-bottom: 2px solid #FFFFFF; padding-bottom: 10px; margin-bottom: 20px; font-size: x-large; }

        .about-text {
            color: white;
            line-height: 1.6;
            text-align: left;
            margin-bottom: 20px;
        }

        .feature-list {
            list-style-type: none;
            padding: 0;
            text-align: left;
            color: wheat;
        }

        .feature-list li {
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="%2300AEEF" d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"/></svg>') no-repeat left 5px;
            padding-left: 25px;
            margin-bottom: 10px;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="navbar">
            <div style="display: flex; align-items: center;">
                <asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/MuscleMan logo.png" Width="80px" />
                <span style="color: white; font-size: x-large; font-weight: bold; margin-left: 10px;">MUSCLEMAN</span>
            </div>
            <div style="text-align:right">
                <a href="home.aspx" class="nav-link">Dashboard</a>
                <a href="AboutUs.aspx" class="nav-link">About Us</a> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx" CssClass="nav-link">Log Out</asp:HyperLink>
            </div>
        </div>

        <div class="content-container">
            <div class="about-card">
                <h2 class="form-title">💪 About MuscleMan</h2>
                
                <p class="about-text">
                    MuscleMan is your dedicated digital fitness log, built to help you track every rep, set, and lift. We believe that consistent tracking is the cornerstone of progress, and our goal is to provide a clean, powerful, and distraction-free platform for logging your daily workouts.
                </p>

                <h3 style="color: wheat; border-bottom: 1px solid #5F739E; padding-bottom: 10px; margin-top: 30px; text-align: left;">Key Features:</h3>
                <ul class="feature-list">
                    <li>**Comprehensive Logging:** Easily record the date, workout type, exercise name, sets, reps, and weight/unit for every session.</li>
                    <li>**Instant History:** View your complete workout history right next to your logging form, giving you immediate insight into your progress.</li>
                    <li>**Focus on Progress:** By digitizing your log, you can identify trends, track personal bests, and stay motivated to achieve your fitness goals.</li>
                </ul>

                <p class="about-text" style="margin-top: 30px;">
                    Start logging today and turn your effort into measurable gains!
                </p>
            </div>
        </div>
    </form>
</body>
</html>