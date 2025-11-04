<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="journal.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MuscleMan - Workout Log</title>
    <style>
        
        body { background-color: #212832; font-family: Arial, sans-serif; color: #FFFFFF; margin: 0; padding: 0; }
        .navbar { background-color: #2C3E50; padding: 15px 20px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2); }
        .nav-link { color: wheat; text-decoration: none; margin-left: 20px; font-weight: bold; transition: color 0.3s; }
        .nav-link:hover { color: #00AEEF; }
        
        
        .content-container { display: flex; justify-content: space-around; padding: 30px 50px; gap: 30px; max-width: 1200px; margin: 0 auto; }
        .log-card { background-color: #3B4F81; padding: 25px; border-radius: 8px; box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); flex: 1; min-width: 450px; }
        .form-title { color: wheat; border-bottom: 2px solid #FFFFFF; padding-bottom: 10px; margin-bottom: 20px; font-size: x-large; }

       
        .textbox { border-color:black;padding:8px;width:90%;margin-top:8px;margin-bottom:10px;border:solid; }
        .lbl-form { color: white; font-weight: bold; display: block; margin-top: 10px; }
        .exercise-metrics { display: flex; gap: 10px; align-items: flex-end; }
        .metric-group { flex: 1; min-width: 80px; }
        .metric-input { width: 90% !important; margin: 0 !important; }
        .btns{ background-color: wheat; border: none; font-weight: bold; color: #212832; padding: 8px 15px; border-radius: 4px; cursor: pointer; height: 40px; width: 70px; margin-left: auto; margin-bottom: 15px; }
        .btns:hover {
    background-color: #00AEEF;
    border-color: black;
}
        .btn-log { height: 45px; width: 200px; background-color: wheat; border: none; font-weight: bold; font-size: 1.1em; color: #212832; border-radius: 4px; cursor: pointer; margin-top: 25px; }
       .btn-log:hover {
    background-color: #00AEEF;
    border-color: black;
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
                <a href="Aboutus.aspx" class="nav-link">About Us</a>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx" CssClass="nav-link">Log Out</asp:HyperLink>
            </div>
        </div>

        <div class="content-container">
            
            <div class="log-card">
                <h2 class="form-title">Log New Workout</h2>
                
                <asp:Label ID="lbl_date" runat="server" Text="Date" CssClass="lbl-form"></asp:Label>
                <asp:TextBox ID="txtbox_date" runat="server" TextMode="Date" CssClass="textbox"></asp:TextBox>
                
                <asp:Label ID="lbl_workout_type" runat="server" Text="Workout Type" CssClass="lbl-form"></asp:Label>
                <asp:TextBox ID="txtbox_workout_type" runat="server" placeholder="e.g., Chest & Triceps" CssClass="textbox"></asp:TextBox>
                
                <h3 style="color: white; margin-top: 25px; border-bottom: 1px solid #5F739E; padding-bottom: 10px;">Add Exercises</h3>
                
                <div class="exercise-entry">
                    <asp:Label ID="lbl_exercise_name" runat="server" Text="Exercise Name" CssClass="lbl-form"></asp:Label>
                    <asp:TextBox ID="txtbox_exercise_name" runat="server" placeholder="e.g., Squats or Bench Press" CssClass="textbox"></asp:TextBox>
                    
                    <div class="exercise-metrics">
                        <div class="metric-group">
                            <asp:Label ID="lbl_sets" runat="server" Text="Sets" CssClass="lbl-form"></asp:Label>
                            <asp:TextBox ID="txtbox_sets" runat="server" TextMode="Number" placeholder="3" CssClass="textbox metric-input"></asp:TextBox>
                        </div>
                        <div class="metric-group">
                            <asp:Label ID="lbl_reps" runat="server" Text="Reps" CssClass="lbl-form"></asp:Label>
                            <asp:TextBox ID="txtbox_reps" runat="server" TextMode="Number" placeholder="10" CssClass="textbox metric-input"></asp:TextBox>
                        </div>
                        <div class="metric-group">
                            <asp:Label ID="lbl_weight" runat="server" Text="Weight/Unit" CssClass="lbl-form"></asp:Label>
                            <asp:TextBox ID="txtbox_weight" runat="server" placeholder="135 lbs" CssClass="textbox metric-input"></asp:TextBox>
                      
                            <br />
                      
                        </div>

                       
                    </div>
                </div>

                 <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                 <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btns" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_delete" runat="server" Text="Delete" CssClass="btns" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_modify" runat="server" Text="Modify" CssClass="btns" />
               
                <center>
                    <asp:Button ID="btn_save" runat="server" Text="SAVE WORKOUT" CssClass="btn-log" />
                </center>
            </div>

            <div class="log-card">
                <h2 class="form-title">Workout History</h2>
                <p class="form-title">
                    <asp:GridView ID="GridView1" runat="server" Width="531px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </p>
                
            </div>
        </div>
    </form>
</body>
</html>