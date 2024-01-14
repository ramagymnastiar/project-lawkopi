<div class="container shadow-container">
    <h2 class="p-2 text-center">Tambah Kategori Restoran</h2>
    <form action="<?php echo base_url().'admin/category/create_category';?>" class="container my-3" method="POST" id="myForm">
        <div class="form-group">
            <label for="category">Kategori</label>
            <input type="text" id="category" class="form-control" placeholder="Masukan Kategori" name="category">
            <?php echo form_error('category'); ?>
            <span></span>
        </div>
        <button type="submit" class="btn btn-primary mr-2">Tambah Kategori</button>
        <a class="btn btn-secondary" href="<?php echo base_url().'admin/category/index';?>">Batal</a>
    </form>
</div>

<script>
    const form = document.getElementById('myForm');
    const category = document.getElementById('category');

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        validate();
    })

    const sendData = (sRate, count) => {
        if (sRate === count) {
            event.currentTarget.submit();
        }
    }

    const successMsg = () => {
        let formCon = document.getElementsByClassName('form-control');
        var count = formCon.length - 1;
        for (var i = 0; i < formCon.length; i++) {
            if (formCon[i].className === "form-control success") {
                var sRate = 0 + i;
                sendData(sRate, count);
            } else {
                return false;
            }
        }
    }

    const validate = () => {
        const categoryVal = category.value.trim();

        //username validation
        if (categoryVal === "") {
            setErrorMsg(category, 'category cannot be blank');
        } else if (categoryVal.length <= 3 || categoryVal.length >= 16) {
            setErrorMsg(category, 'category length should be between 3 and 15"');
        } else {
            setSuccessMsg(category);
        }
        successMsg();
    }

    function setErrorMsg(ele, msg) {

        const formCon = ele.parentElement;
        const formInput = formCon.querySelector('.form-control');
        const span = formCon.querySelector('span');
        span.innerText = msg;
        formInput.className = "form-control is-invalid";
        span.className = "invalid-feedback font-weight-bold"
    }

    function setSuccessMsg(ele) {
        const formCon = ele.parentElement;
        const formInput = formCon.querySelector('.form-control');
        formInput.className = "form-control success";
    }

</script>
</div>


<br>
<br>
<br>






<div class="container mt-3">
    <div class="container shadow-container mt-3">
        <?php if($this->session->flashdata('cat_success') != ""):?>
        <div class="alert alert-success">
            <?php echo $this->session->flashdata('cat_success');?>
        </div>
        <?php endif ?>
        <?php if($this->session->flashdata('error') != ""):?>
        <div class="alert alert-danger">
            <?php echo $this->session->flashdata('error');?>
        </div>
        <?php endif ?>
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                    <h2>Semua Kategori</h2>
                </div>
               
            </div>
            <div class="table-responsive-sm">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Kategori</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <?php if(!empty($cats)) { ?>
                        <?php foreach($cats as $cat) {?>
                        <tr>
                            <td><?php echo $cat['c_id']; ?></td>
                            <td><?php echo $cat['c_name']; ?></td>
                            <td>
                                <a href="<?php echo base_url().'admin/category/edit/'.$cat['c_id']?>"
                                    class="btn btn-info mb-1"><i
                                        class="fas fa-edit mr-1"></i>Ubah</a>
                                <a href="javascript:void(0);" onclick="deleteCat(<?php echo $cat['c_id']; ?>)"
                                    class="btn btn-danger"><i class="fas fa-trash-alt"></i> Delete</a>

                            </td>
                        </tr>
                        <?php } ?>
                        <?php } else { ?>
                        <tr>
                            <td colspan="4">Records Not found</td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
function deleteCat(id) {
    if (confirm("Are you sure you want to delete category?")) {
        window.location.href = '<?php echo base_url().'admin/category/delete/';?>' + id;
    }
}
$(document).ready(function() {
    $("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});
</script>




