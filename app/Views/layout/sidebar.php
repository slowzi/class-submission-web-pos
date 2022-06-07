<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="/">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>

                <div class="sb-sidenav-menu-heading">TRANSAKSI</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-shopping-cart"></i></div>
                    Penjualan
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="/jual">Transaksi</a>
                        <a class="nav-link" href="/jual/laporan">Laporan</a>
                    </nav>
                </div>

                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                    Pembelian
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="/beli">Transaksi</a>
                        <a class="nav-link" href="/beli/laporan">Laporan</a>
                    </nav>
                </div>

                <div class="sb-sidenav-menu-heading">MASTER</div>
                <?php if (in_groups(['Admin', 'owner1', 'owner2'])) : ?>
                    <a class="nav-link" href="/container">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Container
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin', 'Karyawan', 'owner1'])) : ?>
                    <a class="nav-link" href="/book">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Data Buku
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin', 'Karyawan', 'owner1'])) : ?>
                    <a class="nav-link" href="/majalah">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Data Majalah
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin', 'owner1', 'owner2'])) : ?>
                    <a class="nav-link" href="/supplier">
                        <div class="sb-nav-link-icon"><i class="fas fa-box  "></i></div>
                        Data Supplier
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin', 'owner1', 'owner2'])) : ?>
                    <a class="nav-link" href="/users">
                        <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                        Data User
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin', 'Karyawan', 'owner1'])) : ?>
                    <a class="nav-link" href="/customer">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Data Customer
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin'])) : ?>
                    <a class="nav-link" href="/distributor">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Data Distributor
                    </a>
                <?php endif; ?>
                <?php if (in_groups(['Admin'])) : ?>
                    <a class="nav-link" href="/distributorgrocery">
                        <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                        Data Distributor Grocery
                    </a>
                <?php endif; ?>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            Riski Dimas Agung
        </div>
    </nav>
</div>