
<?php echo $this->session->flashdata('mensaje') ?>
<div class="row login-box">
    <div class="">
        <div class="panel panel-default">
            <div class="box-header">
                <h3 class="box-title center-block"><p align="center">
                        <?php echo $descripcion ?>
                    </p></h3>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body" >
                <div class="dataTable_wrapper">
                    <?php echo form_open('admin/acceso/login/process_second_auth', array('id' => "duo_form")); ?>
                    <iframe id="duo_iframe" width="100%" height="500" frameborder="0"></iframe>
                        <?php echo validation_errors() ?>
                        <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!--<script src="http://sgi.sti.com/assets/duo/js/Duo-Web-v2.js"></script>-->
<script src="<?php echo base_url() . DUO; ?>js/Duo-Web-v2.js"></script>
<script>
    Duo.init({
        'host': '<?php echo $host; ?>',
        'post_acción': '<?php echo $post_action; ?>',
        'sig_request': '<?php echo $sig_request; ?>'
    });
</script>
