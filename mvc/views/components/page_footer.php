        </div>


        


 
        <script type="text/javascript" src="<?php echo base_url('assets/bootstrap/bootstrap.min.js'); ?>"></script>
     
        <script type="text/javascript" src="<?php echo base_url('assets/lesson/style.js'); ?>"></script>

        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/jquery.dataTables.min.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/dataTables.buttons.min.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/jszip.min.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/pdfmake.min.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/vfs_fonts.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/tools/buttons.html5.min.js'); ?>"></script>
       
        <script type="text/javascript" src="<?php echo base_url('assets/datatables/dataTables.bootstrap.js'); ?>"></script>

        <script type="text/javascript" src="<?php echo base_url('assets/lesson/lesson.js'); ?>"></script>

          <script type="text/javascript" src="<?php echo base_url('assets/fullcalendar/fullcalendar.js'); ?>"></script>
       
        <script type="text/javascript" src="<?php echo base_url('assets/fullcalendar/es.js'); ?>"></script>


       
        <script>
        $(document).ready(function() {
          $('#example3, #example1, #example2').DataTable( {
              dom: 'Bfrtip',
              buttons: [
                  'copyHtml5',
                  'excelHtml5',
                  'csvHtml5',
                  'pdfHtml5'
              ],
              search: false
          } );
        } );
        </script>
      
        <script type="text/javascript">
            $(function() {
                $("#withoutBtn").dataTable();
            });


        </script>

        <?php if ($this->session->flashdata('success')): ?>
            <script type="text/javascript">
                toastr["success"]("<?=$this->session->flashdata('success');?>")
                toastr.options = {
                  "closeButton": true,
                  "debug": false,
                  "newestOnTop": false,
                  "progressBar": false,
                  "positionClass": "toast-top-right",
                  "preventDuplicates": false,
                  "onclick": null,
                  "showDuration": "500",
                  "hideDuration": "500",
                  "timeOut": "5000",
                  "extendedTimeOut": "1000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
                }
            </script>
        <?php endif ?>
        <?php if ($this->session->flashdata('error')): ?>
           <script type="text/javascript">
                toastr["error"]("<?=$this->session->flashdata('error');?>")
                toastr.options = {
                  "closeButton": true,
                  "debug": false,
                  "newestOnTop": false,
                  "progressBar": false,
                  "positionClass": "toast-top-right",
                  "preventDuplicates": false,
                  "onclick": null,
                  "showDuration": "500",
                  "hideDuration": "500",
                  "timeOut": "5000",
                  "extendedTimeOut": "1000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
                }
            </script>
        <?php endif ?>

        <?php
            if(isset($footerassets)) {
                foreach ($footerassets as $assetstype => $footerasset) {
                    if($assetstype == 'css') {
                      if(count($footerasset)) {
                        foreach ($footerasset as $keycss => $css) {
                          echo '<link rel="stylesheet" href="'.base_url($css).'">'."\n";
                        }
                      }
                    } elseif($assetstype == 'js') {
                      if(count($footerasset)) {
                        foreach ($footerasset as $keyjs => $js) {
                          echo '<script type="text/javascript" src="'.base_url($js).'"></script>'."\n";
                        }
                      }
                    }
                }
            }
        ?>
        <script type="text/javascript">

            $("ul.sidebar-menu li").each(function(index, value) {


                if($(this).attr('class') == 'active') {
                    $(this).parents('li').addClass('active');
                }

              
            });
        </script>
    </body>
</html>
