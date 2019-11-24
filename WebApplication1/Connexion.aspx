<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="WebApplication1.Connexion1"  %>

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
                text: 'le login ou mot de passe est incorrect!'
            })
        }
    </script>
     <link rel="stylesheet" href="css/style.css" />
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="main">
       
                 <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/logo.png" alt="sing up image"></figure>
                        <a href="Inscription.aspx" class="signup-image-link">S'inscrire</a>
                    </div>
      
                    <div class="signin-form">
                        <h2 class="form-title">Se Connecter</h2>
                        <div class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="fa fa-user-circle"></i></label>
                                <asp:textBox runat="server"  required type="text" name="login" Id="login" placeholder="Login"></asp:textBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="fa fa-address-card"></i></label>
                                <asp:textBox runat="server" required type="password" name="mdpstext" Id="mdpstext" placeholder="Mot de passe"></asp:textBox>
                            </div>
                           <div class="form-group">                                
                                <asp:CheckBox runat="server" id="accept_arg" Text="Se Souvenir de moi"/> 
                            </div>
 
                            
                            <div class="form-group form-button">
                                <asp:button runat="server" type="submit" Id="Btn_Cnx" OnClick="btn_SeConnecter_Click" class="form-submit" Text="Log in"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
                
                                 
           
         <!-- Sing in  Form -->
    </div>
    </form>
</body>
</html>
