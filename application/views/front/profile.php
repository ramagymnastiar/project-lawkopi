<link rel="stylesheet" href="<?php echo base_url('assets/css/profile.css');?>">
<div class="row">
    <div class="col-md-6">
        <div class="wrapper mt-sm-5">
            <?php if($this->session->flashdata('success') != ""):?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('success');?>
            </div>
            <?php endif ?>
            <?php $loggedUser = $this->session->userdata('user');?>
            <form action="<?php echo base_url().'profile/edit/'.$loggedUser['user_id']?>" method="POST">
                <h4 class="pb-4 border-bottom">Pengaturan Akun</h4>
                <div class="py-2">
                    <div>
                        <label for="username">Username</label>
                        <input type="text" name="username"
                            class="bg-light form-control <?php echo (form_error('username') != "") ? 'is-invalid' : '';?>"
                            value="<?php echo set_value('username', $user['username']);?>">
                        <?php echo form_error('username'); ?>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="firstname">Nama Depan</label>
                            <input type="text"
                                class="bg-light form-control <?php echo (form_error('firstname') != "") ? 'is-invalid' : '';?>"
                                name="firstname" value="<?php echo set_value('firstname', $user['f_name'])?>">
                            <?php echo form_error('firstname'); ?>
                        </div>
                        <div class="col-md-6">
                            <label for="lastname">Nama Belakang</label>
                            <input type="text"
                                class="bg-light form-control <?php echo (form_error('lastname') != "") ? 'is-invalid' : '';?>"
                                name="lastname" value="<?php echo set_value('lastname', $user['l_name'])?>">
                            <?php echo form_error('lastname'); ?>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="email">Email</label>
                            <input type="text"
                                class="bg-light form-control <?php echo (form_error('email') != "") ? 'is-invalid' : '';?>"
                                name="email" value="<?php echo set_value('email', $user['email'])?>">
                            <?php echo form_error('email'); ?>
                        </div>
                        <div class="col-md-6">
                            <label for="phone">No Telp</label>
                            <input type="tel"
                                class="bg-light form-control <?php echo (form_error('phone') != "") ? 'is-invalid' : '';?>"
                                name="phone" value="<?php echo set_value('phone', $user['phone'])?>">
                            <?php echo form_error('phone'); ?>
                        </div>
                    </div>
                    <div>
                        <label for="address">Alamat</label>
                        <textarea name="address" type="text" style="height:70px;"
                            class="bg-light form-control <?php echo (form_error('address') != "") ? 'is-invalid' : '';?>"><?php echo set_value('address', $user['address']);?></textarea>
                        <?php echo form_error('address'); ?>
                    </div>
                    <div class="py-3 pb-4 border-bottom">
                        <button type="submit" class="btn btn-primary mr-3">Simpan</button>
                        <a href="<?php echo base_url().'home' ?>" class="btn border button">Batal</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-6">
        <div class="wrapper mt-sm-5">
            <?php if($this->session->flashdata('pwd_success') != ""):?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('pwd_success');?>
            </div>
            <?php endif ?>
            <?php if($this->session->flashdata('pwd_error') != ""):?>
            <div class="alert alert-danger">
                <?php echo $this->session->flashdata('pwd_error');?>
            </div>
            <?php endif ?>
            <?php $loggedUser = $this->session->userdata('user');?>
            <form action="<?php echo base_url().'profile/editPassword/'.$loggedUser['user_id']?>" method="POST">
                <h4 class="pb-4 border-bottom"> Ganti Password</h4>
                <div class="py-2">
                    <div>
                        <input type="password"
                            class="bg-light form-control mb-2 <?php echo (form_error('cPassword') != "") ? 'is-invalid' : '';?>"
                            name="cPassword" placeholder="Password Sekarang" value="<?php echo set_value('cPassword')?>">
                        <?php echo form_error('cPassword'); ?>
                    </div>
                    <div>
                        <input type="password"
                            class="bg-light form-control mb-2 <?php echo (form_error('nPassword') != "") ? 'is-invalid' : '';?>"
                            name="nPassword" placeholder="Password Baru" value="<?php echo set_value('nPassword')?>">
                        <?php echo form_error('nPassword'); ?>
                    </div>
                    <div>
                        <input type="password"
                            class="bg-light form-control mb-2 <?php echo (form_error('nRPassword') != "") ? 'is-invalid' : '';?>"
                            name="nRPassword" placeholder="Konfirmasi Password"
                            value="<?php echo set_value('nRPassword')?>">
                        <?php echo form_error('nRPassword'); ?>
                    </div>
                    <div class="py-3 pb-4 border-bottom">
                        <button type="submit" class="btn btn-primary mr-3 mb-2">Ganti Password</button>
                        <a href="<?php echo base_url().'home' ?>" class="btn border button">Batal</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>