<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">DATA BUKU</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Pengelolaan Data Buku</li>
        </ol>
        <!-- Start Flash Data -->
        <?php if (session()->getFlashdata('msg')) : ?>
            <div class="alert alert-success" role="alert">
                <?= session()->getFlashdata('msg') ?>
            </div>
        <?php endif; ?>
        <!-- End Flash Data -->
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <?= $title ?>
            </div>
            <div class="card-body">
                <!-- From Tambah Buku -->
                    <form action="/book/edit/<?= $result['book_id'] ?>" method="POST" enctype="multipart/form-data">
                        <?= csrf_field() ?>
                        <input type="hidden" name="slug" value="<?= $result['slug'] ?>">
                        <div class="mb-3 row">
                            <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control <?= $validation->hasError('judul') ? 'is-invalid' : '' ?>" 
                                id="judul" name="judul" value="<?= old('judul', $result['title']) ?>">
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    <?= $validation->getError('judul') ?>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="author" class="col-sm-2 col-form-label">Penulis</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="penulis" name="penulis">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="tahun" class="col-sm-2 col-form-label">Tahun Terbit</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control <?= $validation->hasError('tahun') ? 'is-invalid' : '' ?>" 
                                id="tahun" name="tahun" value="<?= old('tahun') ?>">
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    <?= $validation->getError('tahun') ?>
                                </div>
                            </div>
                            <label for="stok" class="col-sm-2 col-form-label">Stok</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="stok" name="stok">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control <?= $validation->hasError('harga') ? 'is-invalid' : '' ?>" 
                                id="harga" name="harga" value="<?= old('harga') ?>">
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    <?= $validation->getError('harga') ?>
                                </div>
                            </div>
                            <label for="diskon" class="col-sm-2 col-form-label">Diskon</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="diskon" name="diskon">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                            <div class="col-sm-5">
                                <input type="hidden" name="sampullama"  value="<?= $result['cover'] ?>">
                                <input type="file" class="form-control <?= $validation->hasError('sampul') ? 
                                'is-invalid' : '' ?>" id="sampul" name="sampul" onchange="previewImage()">
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    <?=$validation->getError('sampul') ?>
                                </div>
                                <div class="col-sm-6 mt-2">
                                    <img src="/img/<?= $result['cover'] == "" ? "default.jpg" : $result
                                    ['cover'] ?>" alt="" class="img-thumbnail img-preview">
                                </div>
                            </div>
                            <label for="id_kategori" class="col-sm-2 col-form-label">Kategori</label>
                            <div class="col-sm-3">
                                <select type="text" class="form-control" id="id_kategori" name="id_kategori">
                                    <?php foreach ($category as $value) : ?>
                                        <option value="<?= $value['book_category_id'] ?>" <?= $value['book_category_id']
                                        == $result['book_category_id'] ? 'select' : '' ?>>
                                            <?= $value['name_category'] ?> </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button class="btn btn-primary me-md-2" type="submit">Perbarui</button>
                            <button class="btn btn-danger" type="reset">Batal</button>
                        </div>
                    </form>
                <!--  -->
            </div>
        </div>
    </div>
</main>
<?= $this->endSection() ?>