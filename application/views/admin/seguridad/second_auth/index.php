<script type="text/javascript" src="<?php echo base_url() . DUO; ?>/js/Duo-Web-v2.js"></script>
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b></b> </a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg"><?php echo $descripcion; ?> </p>
        <?php echo form_open('admin', array('id' => "duo_form")); ?>
        <?php echo validation_errors() ?>
        <?php echo form_close(); ?> 
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<script>
Duo.init ({
        'host': '<?php echo $host; ?> ',
        'post_acción': '<?php echo $post_action; ?> ',
        'sig_request': '<?php echo $sig_request; ?> '
    });
</script>
