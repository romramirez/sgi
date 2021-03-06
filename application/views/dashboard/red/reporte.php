<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= $titulo ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>bootstrap/css/bootstrap.min.css">
    <!-- jvectormap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>dist/css/AdminLTE.min.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/datatables/extensions/Responsive/css/dataTables.responsive.css">
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/jquery-nestable/jquery.nestable.css">
    <link rel="stylesheet" href="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/css/styles.css">
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- jQuery 3.1.1 -->
    <script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/jQuery/jquery-3.1.1.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
</head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Lista de Redes</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table id="lista" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Propietario</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $datas = $this->Modelo->getAll() ?>

                            <?php foreach ($datas as $data): ?>

                                <tr>
                                    <td><?php echo $data->USNombre . " " . $data->apellido ?></td>
                                    <td><?php echo $data->hostname ?></td>
                                    <td><?php echo $data->TPdescripcion ?></td>
                                    <td><?php echo $data->MAdescripcion ?></td>
                                    <td><?php echo $data->MOdescripcion ?></td>
                                    <td><?php echo $data->serial ?></td>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Propietario</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
</div>
</body>
