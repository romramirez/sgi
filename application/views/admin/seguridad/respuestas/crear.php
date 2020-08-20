<section class="content-header">
    <h1>
        <?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Usuarios</a></li>
        <li class="active"><?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro</li>
    </ol>
</section>

<?php echo validation_errors() ?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-green">
            <div class="panel-heading">
                <span>Preguntas de Seguridad</span>
                <div class="pull-right">
                    <a href="<?php echo $this->url ?>" style="color:#FFF">
                        Volver al listado <i class="fa fa-hand-o-left"></i></a>
                </div>
            </div>

            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <span>Preguntas de Seguridad</span>
                                </div>
                                <div class="panel-body">
                                    <?php echo form_open('', 'id="form-principal"'); ?>
                                    <div class="row col-sm">
                                        <div class="col-lg-1">
                                            <div class="form-group">
                                                <input type="hidden" id="usuario_id" name="usuario_id" value="<?php print_r($this->session->userdata('usuario_id')) ?>" />
                                            </div>
                                        </div>
                                        <div class="col-lg-5">
                                            <div class="form-group">
                                                <label class="control-label">Seleccione la Pregunta de Seguridad <span class="required">*</span></label>
                                                <?php echo form_dropdown('preguntas_id', $this->Preguntas_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('preguntas_id', isset($data->preguntas_id) ? $data->preguntas_id : ''), 'id="preguntas_id1" class="form-control" required') ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label class="control-label">Respuesta Primera Pregunta <span class="required">*</span></label>
                                                <input type=text" name="descripcion" class="form-control" id="nombre" value="<?php echo set_value('descripcion', isset($data->descripcion) ? $data->descripcion : '') ?>" required/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-offset-1 col-lg-11">
                                        <input type="hidden" id="id" name="id" value="<?php echo isset($data->id) ? $data->id : '' ?>" />
                                        <button type="submit" class="btn btn-info"><?php echo isset($data->id) ? "Actualizar" : "Crear" ?></button>
                                    </div>
                                    <?php echo form_close() ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


        </div>
    </div>
</div>
