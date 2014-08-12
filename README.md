table_churn
===========

demonstration of table automation with Watir-webdriver and nokogiri

Following is raw test performance data running on a Win 7 workstation:

FF 10x15
              user     system      total        real
table_row:   1.934000   0.219000   2.153000 ( 74.811481)
table_trs:   0.109000   0.000000   0.109000 (  5.747575)
table_noko:  0.156000   0.015000   0.171000 (  4.968496)

FF 10x10
              user     system      total        real
table_row:   1.435000   0.219000   1.654000 ( 45.468547)
table_trs:   0.062000   0.000000   0.062000 (  3.947394)
table_noko:  0.094000   0.000000   0.094000 (  3.954396)

Chrome 10x10
              user     system      total        real
table_row:  2.122000   0.858000   2.980000 ( 49.750974)
table_trs:  0.234000   0.063000   0.297000 (  4.870487)
table_noko:  0.187000   0.078000   0.265000 (  3.901390)

IE 10 10X10
              user     system      total        real
table_row:  1.575000   0.203000   1.778000 (379.627959)
table_trs:  0.141000   0.031000   0.172000 ( 33.799380)
table_noko:  0.171000   0.015000   0.186000 ( 28.170816)

FF 20x20
              user     system      total        real
table_trs:  0.343000   0.031000   0.374000 ( 14.255425)
table_noko:  0.281000   0.000000   0.281000 ( 11.904190)

FF 50x20
              user     system      total        real
table_trs:  0.826000   0.202000   1.028000 ( 35.231523)
table_noko:  0.671000   0.063000   0.734000 ( 28.006800)

Chrome 50x20
              user     system      total        real
table_trs:  1.045000   0.171000   1.216000 ( 57.967797)
table_noko:  1.139000   0.265000   1.404000 ( 28.698869)

IE 10 50x20
              user     system      total        real
table_trs:  0.905000   0.031000   0.936000 (298.364833)
table_noko:  0.983000   0.109000   1.092000 (205.957594)
