<script type="application/javascript">
$(function() {
    LoadVisitor();
    function LoadVisitor()
    {
        $('#visitor').highcharts({
            chart: {
                type: 'line',
                height: 240
            },
            title: {
                text: '<?=$this->lang->line("dashboard_site_stats")?>'
            },
            subtitle: {
                text: ''
            },
            xAxis: {
                categories: [
                    <?php
                       
                        echo "'" . implode("','", array_keys($showChartVisitor)) . "'";
                    ?>
                ],
                title: {
                    text: '<?=$this->lang->line("dashboard_date")?>',
                    align: 'low'
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '<?=$this->lang->line("dashboard_visitors")?>',
                    align: 'high'
                },
                labels: {
                    overflow: 'justify'
                }
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.y}</b>'
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true
                    }
                },
                series: {
                    cursor: 'pointer',
                    point: {
                        events: {
                            click: function (e) {

                            }
                        }
                    }
                }
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: 5,
                y: -10,
                floating: true,
                borderWidth: 1,
                backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
                shadow: true
            },
            credits: {
                enabled: false
            },

            }]
        });
    }

});


</script>
