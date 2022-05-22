<?= $this->extend('layout/default') ?>
<?= $this->section('title') ?>
<title>Data Groups &mdash; yukNikah</title>
<?= $this->endSection() ?>
<?= $this->section('content') ?>
<section class="section">
  <div class="section-header">
    <h1>Groups</h1>
    <div class="section-header-button">
      <a href="<?=site_url('groups/add')?>" class="btn btn-primary">Add New</a>
    </div>
  </div>
  <?php if(session()->getFlashdata('success')) : ?> 
    <div class="alert alert-success alert-dismissible show fade">
      <div class="alert-body">
        <button class="close" data-dismiss="alert">x</button>
        <b>Success !</b>
        <?=session()->getFlashdata('success')?>
      </div>
    </div>
    <?php endif; ?>

    <?php if(session()->getFlashdata('error')) : ?> 
    <div class="alert alert-danger alert-dismissible show fade">
      <div class="alert-body">
        <button class="close" data-dismiss="alert">x</button>
        <b>Error !</b>
        <?=session()->getFlashdata('error')?>
      </div>
    </div>
    <?php endif; ?>
<div class="section-body">
<div class="card">
<div class="card-header">
  <h4> Data Group Kontak </h4>
</div>

<div class="card-body table-responsive">
                      <table class="table table-striped table-md">
                        <tbody><tr>
                          <th>#</th>
                          <th>Nama Group</th>
                          <th>Info</th>
                          <th>Action</th>
                        </tr>
                      </tbody></table>
                    </div>
                    </div>
</div>
</section>
<?= $this->endSection() ?>