
<?php echo $this->session->flashdata('mensaje') ?>
<div class="row duo">
    <div class="col-lg-12">
        <div class="panel panel-default">

            <!-- /.panel-heading -->
            <div class="panel-body" >
                <div class="dataTable_wrapper">
                    <?php echo form_open('admin/acceso/login/process_second_auth', array('id'=> "form_principal")); ?>
                    <?php echo validation_errors() ?>
                    <iframe id="duo_iframe" width="100%" height="500" frameborder="0"></iframe>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="http://sgi.sti.com/assets/duo/js/Duo-Web-v2.js"></script>

<script>
Duo.init ({
        'host': '<?php echo $host; ?>',
        'post_acción': '<?php echo $post_action; ?> ',
        'sig_request': '<?php echo $sig_request; ?> '
    });
</script>
