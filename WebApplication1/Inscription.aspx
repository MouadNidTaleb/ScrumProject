<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="WebApplication1.Connexion" ValidateRequest="false" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JavaScript.js" type="text/javascript"></script>
    <script>    
        function bad() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'le login exist déja!'
            })
        }
        function pass() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'mot de passe incorrect!'
            })
        }
    </script>
     <link rel="stylesheet" href="css/style.css" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style type="text/css">
        .auto-style1 {
            right: 934px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Inscription</h2>
                        <form class="register-form" id="register-form">

                            <div class="form-group">
                                <label for="login"><i class="fa fa-user-circle"></i></label>
                                <asp:textBox runat="server" type="text" required name="login" id="login" placeholder="login"></asp:textBox>
                            </div>

                            <div class="form-group">
                                <label for="name" class="auto-style1"><i class="fa fa-user-circle"></i></label>
                                <asp:textBox runat="server" type="text" required name="name" id="name" placeholder="nom"></asp:textBox>
                            </div>
                            <div class="form-group">
                                <label for="prénom"><i class="fa fa-user-circle"></i></label>
                                <asp:textBox runat="server" type="text" required name="prénom" Id="prénom" placeholder="prénom"></asp:textBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="fa fa-envelope"></i></label>
                                <asp:textBox runat="server" required type="email" name="email" id="email" placeholder="Email"></asp:textBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="fa fa-address-card"></i></label>
                                <asp:textBox runat="server" required type="password" name="pass" id="pass" placeholder="Mot de passe"></asp:textBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="fa fa-address-card"></i></label>
                                <asp:textBox runat="server" required type="password" name="re_pass" Id="re_pass" placeholder="Repéter votre mot de passe"></asp:textBox>
                            </div>

                            
                            <div class="form-group form-button">
                                <asp:button runat="server" Id="btn_signup" OnClick="btn_signup_Click" class="form-submit" Text="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/logo.png" alt="sing up image"></figure>
                        <a href="Connexion.aspx" class="signup-image-link">Se Connecter</a>
                    </div>
                </div>
            </div>
        </section>

        </div>
    </div>
    </form>
</body>
</html>
