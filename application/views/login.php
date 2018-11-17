<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Grutty | Login </title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url(); ?>assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?php echo base_url(); ?>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?php echo base_url(); ?>assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<?php echo base_url(); ?>assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<?php echo base_url(); ?>assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <?php $attributes = array('id' => 'login_form', 'class' => 'form_horizontal');?>
            <?php echo form_open('pegawai/login', $attributes);?>
              <h1>Login Form</h1>
              <?php if($this->session->flashdata('errors')):?>
              <?php echo $this->session->flashdata('errors');?>
              <?php endif; ?>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="username" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="password" />
              </div>
              <div>
                <!-- Button Submit -->
                <?php
                  $data = array(
                    'class' => 'btn btn-default submit',
                    'name' => 'submit',
                    'value' => 'Login'
                  );
                  echo form_submit($data);
                ?>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>
              <div class="clearfix"></div>
            <?php echo form_close();?>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
