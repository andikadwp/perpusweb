<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between ml-3 mb-5">
        <h1 class="h2 mb-0 text-gray-800"></h1>
        <a href="<?= base_url() ?>profile/ubah/<?= $this->session->userdata('id_user') ?>" class="mr-3 btn btn-sm btn-primary btn-icon-split">
            <span class="text text-white">Ubah Profil</span>
            <span class="icon text-white-50">
                <i class="fas fa-pen"></i>
            </span>
        </a>
    </div>

    <div class="col-lg-12 mb-4">

        <!-- Illustrations -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <center>
                    <div class="col-lg-12 mb-4">
                        <div class="box-circle bg-primary posisi">
                            <img class="img-profile rounded-circle" id="outputImg" width="100%" height="100%"
                                src="<?= base_url() ?>assets/upload/pengguna/user.png">
                        </div>
                        <br>
                        <input type="hidden" name="iduser" id="iduser" value="<?= $this->session->userdata('id_user') ?>">
                        <h1 class="h1 mb-0 text-gray-800 posisi" id="namaL">-</h1>
                    </div>
                </center>

                <div class="row posisi3">
                    <div class="col-lg-6">
                        <center>
                            <h3 class="h3 mb-0 text-gray-800 d-sm-flex justify-content-center">
                                <i class="fa fa-envelope"></i>
                                &nbsp;
                                <div class="div" id="email">-</div>
                            </h3>
                        <!-- Divider -->
                        <div class="col-6">
                            <center>
                                <hr class="sidebar-divider">
                            </center>
                        </div>
                        </center>
                    </div>
                    <div class="col-lg-6">
                        <center>
                            <h3 class="h3 mb-0 text-gray-800 d-sm-flex justify-content-center">
                                <i class="fa fa-phone"></i>
                                &nbsp;
                                <div class="div" id="notelp">-</div>
                            </h3>
                        <div class="col-6">
                            <center>
                                <hr class="sidebar-divider">
                            </center>
                        </div>
                        </center>
                    </div>
                </div>

                <div class="row posisi4">
                    <div class="col-lg-6">
                        <center>
                        <div class="form-group mb-4 ">
                            <h3 class="h3 mb-0 text-gray-800 d-sm-flex justify-content-center">
                                <i class="fa fa-check-circle"></i>
                                &nbsp;
                                <div class="div" id="status">-</div>
                            </h3>
                        </div>
                        <!-- Divider -->
                        <div class="col-6">
                            <center>
                                <hr class="sidebar-divider">
                            </center>
                        </div>
                        </center>
                    </div>
                    <div class="col-lg-6">
                        <center>
                         <h3 class="h3 mb-0 text-gray-800 d-sm-flex justify-content-center">
                                <i class="fa fa-user"></i>
                                &nbsp;
                                <div class="div" id="level">-</div>
                            </h3>
                        <div class="col-6">
                            <center>
                                <hr class="sidebar-divider">
                            </center>
                        </div>
                        </center>
                    </div>
                </div>
                
            </div>
        </div>

    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


<script src="<?= base_url(); ?>assets/js/jquery.min.js"></script>
<script src="<?= base_url(); ?>assets/js/profile.js"></script>

<?php if($this->session->flashdata('Pesan')): ?>
<?= $this->session->flashdata('Pesan') ?>
<?php else: ?>
<script>
$(document).ready(function() {
    let timerInterval
    Swal.fire({
        title: 'Memuat...',
        timer: 50,
        onBeforeOpen: () => {
            Swal.showLoading()
        },
        onClose: () => {
            clearInterval(timerInterval)
        }
    }).then((result) => {
        
    })
});
</script>
<?php endif; ?>