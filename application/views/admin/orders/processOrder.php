<div class="container table-responsive m-t-20">
    <h2 class="py-3 text-center">Detail Pesanan </h2>
    <table id="myTable" class="table table-bordered table-hover table-striped dataTable">
        <tbody>
            <tr>
                <td><strong>Nama Pemesan:</strong></td>
                <td><?php echo $order['username'] ?></td>
            </tr>
            <tr>
                <td><strong>Nama Makanan:</strong></td>
                <td><?php echo $order['d_name'] ?></td>
            </tr>
            <tr>
                <td><strong>Jumlah:</strong></td>
                <td><?php echo $order['quantity'] ?></td>
            </tr>
            <tr>
                <td><strong>Harga:</strong></td>
                <td><?php echo "Rp.".$order['price'] ?></td>
            </tr>
            <tr>
                <td><strong>Alamat:</strong></td>
                <td><?php echo $order['address'] ?></td>
            </tr>
            <tr>
                <td><strong>Tanggal Order:</strong></td>
                <td><?php echo $order['date'] ?></td>xxxx           
            </tr>
            <form method="post" action="<?php echo base_url().'admin/orders/updateOrder/'.$order['o_id']; ?>">
                <tr>
                    <td><strong>Status Pesanan:</strong></td>
                    <td>
                        <select class="form-control" name="status"
                            class="<?php echo (form_error('status') != "") ? 'is-invalid' : '';?>">
                            <option>Pilih Status</option>
                            <option value="in process">Dalam Proses</option>
                            <option value="closed">Sampai Tujuan</option>
                            <option value="rejected">Ditolak</option>
                        </select>
                        <?php echo form_error('status');?>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><button class="btn btn-primary btn-block" type="submit">Kirim</button></td>
                </tr>
            </form>
        </tbody>
    </table>
</div>