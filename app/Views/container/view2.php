<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Container</h1>
        <div class="jumbotron text-center bg-warning">
            <h5>Container 1 - Gambar</h5>
            <!-- Container gambar -->
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
                            <img src="https://cdn.discordapp.com/attachments/766951337124298775/950612468793737266/Pngtree3d_character_male_cartoon_with_6502959.png" width="170" height="190">
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
            <!--  -->
        </div>
        <!-- Container Pesan dan kesan -->
        <div class="jumbotron text-center bg-success" style="margin-top:30px">
            <h5>Container 2 - Data Diri -</h5>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 bg-info">
                        <h3>Biodata :</h3>
                        <p style="text-align:left">Biodata diri!</p>
                        <p style="text-align:left" > Nama : Riski Dimas Agung</p>
                        <p style="text-align:left">NPM : 201710931</p>
                        <p style="text-align:left">Asal : Bandar Lampung, Lampung</p>
                        <p style="text-align:left">TTL : Magelang, 18 juli 2002</p>
                        <!-- <hr class="d-sm-none"> -->
                    </div>
                    <div class="col-sm-8 bg-warning">
                        <h3>Pengalaman Saya :</h3>
                        <p>Pengalaman singkat kuliah online saya !</p>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->
    </div>
</main> 
<?= $this->endSection() ?>