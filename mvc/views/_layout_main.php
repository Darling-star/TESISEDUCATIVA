<?php $this->load->view("components/page_header"); ?>
<?php $this->load->view("components/page_topbar"); ?>
<?php $this->load->view("components/page_menu"); ?>

        <aside class="right-side">
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <?php $this->load->view($subview); ?>
                    </div>
                </div>
            </section>
        </aside>

        <footer class="main-footer">
          	<strong><?=$siteinfos->footer?></strong>
            <a class="pull-right" target="_blank" href="https://es-la.facebook.com/pages/category/College---University/Instituto-T%C3%A9cnico-guastatoya-1045967108747051/"><i class="fa fa-facebook-official"></i> INSTITUTO TECNICO INDUSTRIAL MIXTO</a>
        </footer>
<?php $this->load->view("components/page_footer"); ?>


