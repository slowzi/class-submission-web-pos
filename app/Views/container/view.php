<?= $this->extend('layout/template') ?>
<?= $this->section('content') ?>
<main>
    <div class="container-fluid px-4">
        <ol class="breadcrumb mb-4">
        <div class="container">
            <h1 class="mt-4">Container</h1>
            <div class="jumbotron text-center bg-warning">
                <h6>Container 1 - Gambar</h6>
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-4 bg-primary">
                                    <td>
                                        <img src="https://cdn.discordapp.com/attachments/766951337124298775/950584219581706270/Logo.png" width="150" height="190">
                                    </td>
                                    <p>Logo UAJY</p>
                                </div>

                                <div class="col-sm-4 bg-secondary">
                                    <td>
                                        <img src="https://cdn.discordapp.com/attachments/766951337124298775/966374097422532679/Pas_Photo.jpeg" width="130" height="190">
                                    </td>
                                    <p>Foto Diri</p>
                                </div>
                                <div class="col-sm-4 bg-success">
                                    <td>
                                        <img src="https://cdn.discordapp.com/attachments/766951337124298775/950613937030836234/images-26-59bc8f5eab12ae17676cee93.jpg" width="150" height="190">
                                    </td>
                                    <p>Foto Gedung Bonaventura.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="margin-top:30px">
            <div class="jumbotron text-center bg-success">
                <h6>Container 2 - Pesan dan Kesan -</h6>
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-4 bg-info">
                                    <h4>Pengalaman Belajar SIWEB</h4>
                                    <p style="text-align:left">Penyampain dan penjelasan dari pak yo dan semua asdos dapat dengan mudah di pahami</p>
                                </div>
                                
                                <div class="col-sm-8 bg-warning">
                                    <h4>Pesan dan Kesan Kepada Asdos</h4>
                                    <p>Semua asdos gokil keren-keren dan jago-jago, respect sama semua asdos</p>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </ol>
    </div>
</main> 
<?= $this->endSection() ?>