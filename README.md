# Sales history

A simple interface with a monthly sales schedule with the ability to change the display scale on the scale of Sum Trans Total extax value for more convenient use

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must install ruby 2.6.3 and gem install bundler. 

### Installing

A step by step series of examples that tell you how to get a development env running

Create gemset test_sales_history and install gem's. 
Execute commands:

```
$ rvm gemset create test_sales_history
$ rvm use 2.6.3@test_sales_history
$ bundle
```
Then execute commands for db seed:

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
Navigate to a website

```
$ curl https://damp-anchorage-55465.herokuapp.com/
```
You should get:

<!DOCTYPE html>
<html>
<head>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<title>TestSalesHistory</title>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="Ze9REEuXO/dr/n+awslEax5sNQbbtn6daCdT195GgfgHSE0arwsr2ohqcbsU9jyZSPrR9AKz6gQ8Go91DLmI3w==" />


<script src="/packs/js/application-33164803607e81070d0d.js" data-turbolinks-track="reload"></script>
</head>
<body>
<div class='container'>
<h1 class='text-center'>Monthly sales graph</h1>
<div id="chart-1" style="height: 600px; width: 100%; text-align: center; color: #999; line-height: 600px; font-size: 14px; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helvetica, sans-serif;">Loading...</div><script type="text/javascript">
  new Chartkick["LineChart"]("chart-1", [{"name":2004,"data":[[4,"5428.95"],[5,"6483.72"],[6,"5730.48"],[7,"6781.62"],[8,"7650.53"],[9,"8971.25"],[10,"8689.02"],[11,"10747.92"],[12,"23873.03"]]},{"name":2005,"data":[[1,"15807.81"],[2,"9242.03"],[3,"10086.68"],[4,"7486.79"],[5,"6895.61"],[6,"8222.9"],[7,"6707.71"],[8,"5581.29"],[9,"6061.66"],[10,"6201.4"],[11,"5969.12"],[12,"13521.63"]]},{"name":2006,"data":[[1,"7714.62"],[2,"5009.84"],[3,"6475.19"],[4,"5648.9"],[5,"5362.39"],[6,"4801.08"],[7,"4961.21"],[8,"5881.27"],[9,"6755.17"],[10,"6005.95"],[11,"6377.79"],[12,"15658.62"]]},{"name":2007,"data":[[1,"9033.64"],[2,"7051.95"],[3,"6760.95"],[4,"7472.26"],[5,"8448.65"],[6,"5520.4"],[7,"6215.85"],[8,"7224.53"],[9,"5509.72"],[10,"5979.37"],[11,"7848.36"],[12,"15654.57"]]},{"name":2008,"data":[[1,"9188.91"],[2,"5899.8"],[3,"7149.67"],[4,"5401.31"],[5,"6191.54"],[6,"5389.7"],[7,"5656.46"],[8,"6773.31"],[9,"7462.74"],[10,"6883.91"],[11,"6133.09"],[12,"14084.8"]]},{"name":2009,"data":[[1,"8429.45"],[2,"5567.52"],[3,"6155.6"],[4,"5879.84"],[5,"5963.74"],[6,"5544.43"],[7,"5122.83"],[8,"6300.67"],[9,"6956.68"],[10,"6280.18"],[11,"8656.06"],[12,"16261.86"]]},{"name":2010,"data":[[1,"9408.82"],[2,"5919.55"],[3,"6800.25"],[4,"6531.02"],[5,"6409.89"],[6,"5897.28"],[7,"5874.34"],[8,"7025.0"],[9,"8778.9"],[10,"8051.57"],[11,"7654.19"],[12,"17823.11"]]},{"name":2011,"data":[[1,"10196.1"],[2,"6645.92"],[3,"7707.23"],[4,"8590.29"],[5,"7747.78"],[6,"5564.54"],[7,"6639.66"],[8,"6205.21"],[9,"7016.01"],[10,"6819.93"],[11,"7670.77"],[12,"18235.75"]]},{"name":2012,"data":[[1,"9147.21"],[2,"2402414.32"],[3,"6326.02"],[4,"6094.15"],[5,"5579.36"],[6,"5639.33"],[7,"4782.16"],[8,"7891.89"],[9,"7540.49"],[10,"5752.91"],[11,"6464.41"],[12,"17788.45"]]},{"name":2013,"data":[[1,"9529.48"],[2,"6826.18"],[3,"7940.43"],[4,"6434.44"],[5,"8623.01"],[6,"4845.47"],[7,"5298.41"],[8,"6548.01"],[9,"7301.73"],[10,"8888.69"],[11,"11466.47"],[12,"20241.12"]]},{"name":2014,"data":[[1,"9320.78"],[2,"7586.53"],[3,"7239.35"],[4,"7717.35"],[5,"7017.68"],[6,"6695.73"],[7,"6902.49"],[8,"7451.11"],[9,"7109.17"],[10,"7349.3"],[11,"10538.63"],[12,"21692.17"]]},{"name":2015,"data":[[1,"10882.89"],[2,"6910.31"],[3,"9032.19"],[4,"9817.25"],[5,"9447.61"],[6,"8114.31"],[7,"7932.47"],[8,"7759.62"],[9,"15556.47"],[10,"9745.85"],[11,"13757.84"],[12,"23119.7"]]},{"name":2016,"data":[[1,"11781.19"],[2,"7970.82"],[3,"9325.68"],[4,"7827.83"],[5,"7208.31"],[6,"8547.57"],[7,"7110.24"],[8,"8012.59"],[9,"8358.06"],[10,"9922.11"],[11,"10556.24"],[12,"28985.08"]]},{"name":2017,"data":[[1,"13167.27"],[2,"9402.24"],[3,"10742.63"],[4,"12225.25"],[5,"9266.39"],[6,"8102.3"],[7,"8414.21"],[8,"8973.3"],[9,"8733.9"],[10,"8353.57"],[11,"9735.71"],[12,"24078.59"]]},{"name":2018,"data":[[1,"12060.35"],[2,"9249.55"],[3,"10202.63"],[4,"8176.98"],[5,"7338.39"],[6,"7385.64"],[7,"7367.94"],[8,"2210.75"]]}], {"library":{"scales":{"xAxes":[{"ticks":{"min":1,"stepSize":1}}]}},"xtitle":"Months","ytitle":"Trans Total extax value","max":null});
</script>

<form action="/" accept-charset="UTF-8" method="get">
<div class='form-group'>
<label class="control-label" for="max">Set Max Trans Total extax value</label>
<input type="number" name="max" id="max" min="1" max="2500000" class="form-control" />
<input type="submit" value="Set" class="btn btn-primary my-2" data-disable-with="Set" />
</div>
</form>


</div>
</body>
</html>


You can pass by the parameter the maximum value on the scale Trans Total extax value. For example params[:max] = 20000

```
$ curl https://damp-anchorage-55465.herokuapp.com/?max=20000
```
You should get plot with max Trans Total extax value 20000:

<!DOCTYPE html>
<html>
<head>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<title>TestSalesHistory</title>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="SVkb0enxKAaSwSO/pCpP51cI41yJsWDONyHDTl5WYBictVEDr1bk3AYVOWelD1isqNU+KCFQ63/eNm7oqLt06g==" />


<script src="/packs/js/application-33164803607e81070d0d.js" data-turbolinks-track="reload"></script>
</head>
<body>
<div class='container'>
<h1 class='text-center'>Monthly sales graph</h1>
<div id="chart-1" style="height: 600px; width: 100%; text-align: center; color: #999; line-height: 600px; font-size: 14px; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helvetica, sans-serif;">Loading...</div><script type="text/javascript">
  new Chartkick["LineChart"]("chart-1", [{"name":2004,"data":[[4,"5428.95"],[5,"6483.72"],[6,"5730.48"],[7,"6781.62"],[8,"7650.53"],[9,"8971.25"],[10,"8689.02"],[11,"10747.92"],[12,"23873.03"]]},{"name":2005,"data":[[1,"15807.81"],[2,"9242.03"],[3,"10086.68"],[4,"7486.79"],[5,"6895.61"],[6,"8222.9"],[7,"6707.71"],[8,"5581.29"],[9,"6061.66"],[10,"6201.4"],[11,"5969.12"],[12,"13521.63"]]},{"name":2006,"data":[[1,"7714.62"],[2,"5009.84"],[3,"6475.19"],[4,"5648.9"],[5,"5362.39"],[6,"4801.08"],[7,"4961.21"],[8,"5881.27"],[9,"6755.17"],[10,"6005.95"],[11,"6377.79"],[12,"15658.62"]]},{"name":2007,"data":[[1,"9033.64"],[2,"7051.95"],[3,"6760.95"],[4,"7472.26"],[5,"8448.65"],[6,"5520.4"],[7,"6215.85"],[8,"7224.53"],[9,"5509.72"],[10,"5979.37"],[11,"7848.36"],[12,"15654.57"]]},{"name":2008,"data":[[1,"9188.91"],[2,"5899.8"],[3,"7149.67"],[4,"5401.31"],[5,"6191.54"],[6,"5389.7"],[7,"5656.46"],[8,"6773.31"],[9,"7462.74"],[10,"6883.91"],[11,"6133.09"],[12,"14084.8"]]},{"name":2009,"data":[[1,"8429.45"],[2,"5567.52"],[3,"6155.6"],[4,"5879.84"],[5,"5963.74"],[6,"5544.43"],[7,"5122.83"],[8,"6300.67"],[9,"6956.68"],[10,"6280.18"],[11,"8656.06"],[12,"16261.86"]]},{"name":2010,"data":[[1,"9408.82"],[2,"5919.55"],[3,"6800.25"],[4,"6531.02"],[5,"6409.89"],[6,"5897.28"],[7,"5874.34"],[8,"7025.0"],[9,"8778.9"],[10,"8051.57"],[11,"7654.19"],[12,"17823.11"]]},{"name":2011,"data":[[1,"10196.1"],[2,"6645.92"],[3,"7707.23"],[4,"8590.29"],[5,"7747.78"],[6,"5564.54"],[7,"6639.66"],[8,"6205.21"],[9,"7016.01"],[10,"6819.93"],[11,"7670.77"],[12,"18235.75"]]},{"name":2012,"data":[[1,"9147.21"],[2,"2402414.32"],[3,"6326.02"],[4,"6094.15"],[5,"5579.36"],[6,"5639.33"],[7,"4782.16"],[8,"7891.89"],[9,"7540.49"],[10,"5752.91"],[11,"6464.41"],[12,"17788.45"]]},{"name":2013,"data":[[1,"9529.48"],[2,"6826.18"],[3,"7940.43"],[4,"6434.44"],[5,"8623.01"],[6,"4845.47"],[7,"5298.41"],[8,"6548.01"],[9,"7301.73"],[10,"8888.69"],[11,"11466.47"],[12,"20241.12"]]},{"name":2014,"data":[[1,"9320.78"],[2,"7586.53"],[3,"7239.35"],[4,"7717.35"],[5,"7017.68"],[6,"6695.73"],[7,"6902.49"],[8,"7451.11"],[9,"7109.17"],[10,"7349.3"],[11,"10538.63"],[12,"21692.17"]]},{"name":2015,"data":[[1,"10882.89"],[2,"6910.31"],[3,"9032.19"],[4,"9817.25"],[5,"9447.61"],[6,"8114.31"],[7,"7932.47"],[8,"7759.62"],[9,"15556.47"],[10,"9745.85"],[11,"13757.84"],[12,"23119.7"]]},{"name":2016,"data":[[1,"11781.19"],[2,"7970.82"],[3,"9325.68"],[4,"7827.83"],[5,"7208.31"],[6,"8547.57"],[7,"7110.24"],[8,"8012.59"],[9,"8358.06"],[10,"9922.11"],[11,"10556.24"],[12,"28985.08"]]},{"name":2017,"data":[[1,"13167.27"],[2,"9402.24"],[3,"10742.63"],[4,"12225.25"],[5,"9266.39"],[6,"8102.3"],[7,"8414.21"],[8,"8973.3"],[9,"8733.9"],[10,"8353.57"],[11,"9735.71"],[12,"24078.59"]]},{"name":2018,"data":[[1,"12060.35"],[2,"9249.55"],[3,"10202.63"],[4,"8176.98"],[5,"7338.39"],[6,"7385.64"],[7,"7367.94"],[8,"2210.75"]]}], {"library":{"scales":{"xAxes":[{"ticks":{"min":1,"stepSize":1}}]}},"xtitle":"Months","ytitle":"Trans Total extax value","max":"20000"});
</script>

<form action="/" accept-charset="UTF-8" method="get">
<div class='form-group'>
<label class="control-label" for="max">Set Max Trans Total extax value</label>
<input type="number" name="max" id="max" value="20000" min="1" max="2500000" class="form-control" />
<input type="submit" value="Set" class="btn btn-primary my-2" data-disable-with="Set" />
</div>
</form>


</div>
</body>
</html>


## Running the tests

Please do to run the automated tests for this system (model's and controller's tests)

```
$ rspec spec -fd
```
## Deployment

I deployed on Heroku
https://damp-anchorage-55465.herokuapp.com

## Built With

I used Ruby 2.6.3, Rails 6, MySQL, Bootstrap4, to make plots - gem 'chartkick', for the tests - rspec

## Author

Viktoriya Khoroshun

