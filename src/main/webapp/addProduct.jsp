<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


</head>
<body>


<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10">
            <div class="card">
                <h3 class="card-title">All Product List</h3>

                <form action="add" method="get">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">

                    </div>
                    <div class="form-group">
                        <label for="group">Group</label>
                        <input type="text" name="productGroup" class="form-control" id="Group" placeholder="Group">
                    </div>
                    <div class="form-group">
                        <label for="Purchase">Purchase Price</label>
                        <input type="text" name= "parchasePrice" class="form-control" id="Purchase" placeholder="Purchase Price">
                    </div>
                    <div class="form-group">
                        <label for="Sale">Sale Price</label>
                        <input type="text" name="salePrice"class="form-control" id="Sale" placeholder="Group">
                    </div>

                    <div class="form-group">
                        <label for="Sale">Quantity</label>
                        <input type="text" name= "quantity" class="form-control" id="quantity" placeholder="Quantity">
                    </div>

                    <div class="form-group">
                        <label for="Sale">Quantity type</label>
                        <input type="text" name= "quantityType" class="form-control" id="quantity" placeholder="Quantity">
                    </div>
                    <div class="form-group">
                        <label for="Sale">Discount Amount</label>
                        <input type="text" name="discountAmount" class="form-control" id="discountAmount" placeholder="Discount Amount">
                    </div>

                    <div class="form-group">
                        <label for="Sale">Discount (%)</label>
                        <input type="text" name="discountParsentage" class="form-control" id="discountParsentage" placeholder="Discount (%)">
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
        </div>
    </div>
</div>



</body>
</html>