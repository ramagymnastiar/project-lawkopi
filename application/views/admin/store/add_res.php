<div class="conatiner">
    <form action="<?php echo base_url().'admin/store/create_restaurant';?>" method="POST"
        class="form-container mx-auto  shadow-container" id="myForm" style="width:90%" enctype="multipart/form-data">
        <h3 class="mb-3 p-2 text-center mb-3">Tambah Restoran Baru</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label">Nama Restoran</label>
                    <input type="text" name="res_name" id="rname" class="form-control
                    <?php echo (form_error('res_name') != "") ? 'is-invalid' : '';?>" placeholder="Nama Restoran"
                    value="<?php echo set_value('res_name');?>">

                    <?php echo form_error('res_name'); ?>
                    <span></span>
                </div>
                <div class="form-group">
                    <label class="control-label">E-mail Bisnis</label>
                    <input type="text" name="email" id="email" class="form-control form-control-danger
                    <?php echo (form_error('email') != "") ? 'is-invalid' : '';?>" placeholder="example@gmail.com"
                        value="<?php echo set_value('email');?>">

                        <?php echo form_error('email'); ?>
                    <span></span>
                </div>
                <div class="form-group">
                    <label class="control-label">No.Telp</label>
                    <input type="number" name="phone" id="phone" class="form-control
                    <?php echo (form_error('phone') != "") ? 'is-invalid' : '';?>" placeholder="(+62)813-21349-213"
                        value="<?php echo set_value('phone');?>">
                        <?php echo form_error('phone'); ?>
                    <span></span>
                </div>
                <div class="form-group">
                    <label class="control-label">Alamat Website</label>
                    <input type="text" name="url" id="url" class="form-control form-control-danger
                    <?php echo (form_error('url') != "") ? 'is-invalid' : '';?>"
                        placeholder=" http://example.com" value="<?php echo set_value('url');?>">
                        <?php echo form_error('url'); ?>
                    <span></span>
                </div>
            </div>
            <div class="col-md-6">
            <div class="form-group">
                    <label class="control-label">Jam buka</label>
                    <select name="o_hr" id="o_hr" class="form-control
                    <?php echo (form_error('o_hr') != "") ? 'is-invalid' : '';?>">
                        <option value="">--Pilih Waktu--</option>
                        <option value="6am">6am</option>
                        <option value="7am">7am</option>
                        <option value="8am">8am</option>
                        <option value="9am">9am</option>
                        <option value="10am">10am</option>
                        <option value="11am">11am</option>
                        <?php echo set_select('o_hr'); ?>
                    </select>
                    <?php echo form_error('o_hr');?>
                    <span></span>
                </div>
                <div class="form-group">
                    <label class="control-label">Jam Tutup</label>
                    <select name="c_hr" id="c_hr" class="form-control
                    <?php echo (form_error('c_hr') != "") ? 'is-invalid' : '';?>">
                        <option value="">--Pilih Waktu--</option>
                        <option value="3pm">3pm</option>
                        <option value="4pm">4pm</option>
                        <option value="5pm">5pm</option>
                        <option value="6pm">6pm</option>
                        <option value="7pm">7pm</option>
                        <option value="8pm">8pm</option>
                        <option value="9pm">9pm</option>
                        <option value="10pm">10pm</option>
                        <option value="11pm">11pm</option>
                    </select>
                    <?php echo form_error('c_hr');?>
                    <span></span>
                </div>
                
                <div class="form-group">
                    <label class="control-label">Buka Hari</label>
                    <select name="o_days" id="o_days" class="form-control <?php echo (form_error('o_days') != "") ? 'is-invalid' : '';?>">
                        <option value="">--Pilih Hari--</option>
                        <option value="mon-tue">mon-tue</option>
                        <option value="mon-wed">mon-wed</option>
                        <option value="mon-thu">mon-thu</option>
                        <option value="mon-fri">mon-fri</option>
                        <option value="mon-sat">mon-sat</option>
                        <option value="24hr-x7">24hr-x7</option>
                    </select>
                    <?php echo form_error('o_days');?>
                    <span></span>
                </div> 
                <div class="form-group">
                    <label for="image">Pilih Foto</label>
                    <input type="file" name="image" id="image" class="form-control 
                    <?php echo(!empty($errorImageUpload))  ? 'is-invalid' : '';?>">
                    <?php echo (!empty($errorImageUpload)) ? $errorImageUpload : '';?>
                    <span></span>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label"> Kategori</label>
            <select name="c_name" id="c_name" class="form-control <?php echo (form_error('c_name') != "") ? 'is-invalid' : '';?>">
                <option value="">--Pilih Kategori--</option>
                <?php 
                if (!empty($cats)) { 
                    foreach($cats as $cat) {
                        ?>
                <option value="<?php echo $cat['c_id'];?>">
                    <?php echo $cat['c_name'];?>
                    <?php echo set_select('c_name');?>
                </option>
                <?php }
                }
                ?>
            </select>
            <?php echo form_error('c_name');?>
            <span></span>
        </div>
        <h3 class="box-title m-t-40">Alamat</h3>
        <div class="form-group">
            <textarea name="address" id="address" type="text" style="height:70px;"
                class="form-control
            <?php echo (form_error('address') != "") ? 'is-invalid' : '';?>"><?php echo set_value('address');?></textarea>
            <?php echo form_error('address');?>
            <span></span>
        </div>
        <div class="form-actions">
            <input type="submit" id="btn" name="submit" class="btn btn-success" value="Simpan">
            <a href="<?php echo base_url().'admin/store/index'?>" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>
<script>
    const o_hr = document.getElementById("o_hr");
    const c_hr = document.getElementById("c_hr");
    const o_days = document.getElementById("o_days");
    const c_name = document.getElementById("c_name");

    o_hr.value = "<?php echo $_POST['o_hr']; ?>";
    c_hr.value = "<?php echo $_POST['c_hr']; ?>";
    o_days.value = "<?php echo $_POST['o_days']; ?>";
    c_name.value = "<?php echo $_POST['c_name']; ?>";
</script>