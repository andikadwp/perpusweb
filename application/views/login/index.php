      <!-- Outer Row -->
    <div class="container">
    <center>  
    <div class="row justify-content-center">
    
        <div class="col-lg-12  my-5 mx-5" >
        
                   <div class="card shadow-lg p-5" style="width: 430px; height: 520px;" >

                              
                                <div class="judul">
                                    <div class="text-center" style="font-size: 18px;">
                                        <p><b>PERPUSTAKAAN</b></p>
                                        <p><b>SUKA SUKA</b></p>
                                    </div>
                                    
                                <center>
                                <img width="140px" src="<?= base_url() ?>assets/icon/buku.png" alt="">
                                </center>
            
                                <br>
                                    
                                
                                <form class="user">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user"
                                            id="user" name="user" aria-describedby="usernameHelp"
                                            placeholder="Username" autocomplete="off">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="pwd" name="pwd" placeholder="Password">
                                    </div>
                                    <hr>
                                    <a href="#" onclick="proses_login()" id="login"
                                        class="btn btn-primary btn-user btn-block">
                                        Login
                                    </a>
                                    </div>
                           
                     
                    </div>
                    <br>
                    <!--
                    <footer>
                     <div class=" sticky-footer text-center">
                        <a style="color: White; font-size: 14px;"> <b>Copyright &copy; Perpustakaan SD Negeri Buana Mekar <?= Date('Y') ?></b>
                     </div>
                    </footer>
                    -->
        
            

        </div>
        
    </div>
    </center>
    </div>
<script src="<?= base_url(); ?>assets/js/jquery.min.js"></script>
<script src="<?= base_url(); ?>assets/js/login.js"></script>
