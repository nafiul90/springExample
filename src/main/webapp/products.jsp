<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

                    <table class="table">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Group</th>
                            <th>Purchase Price</th>
                            <th>Sale Price</th>
                            <th>Quantity Type</th>
                            <th>Quantity</th>
                            <th>Discount (Amount)</th>
                            <th>Discount (%)</th>
                        </tr>

                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>${product.getId()}</td>
                                <td>${product.getName()}</td>
                                <td>${product.getParchasePrice()}</td>
                                <td>${product.getSalePrice()}</td>
                                <td>${product.getQuantityType()}</td>
                                <td>${product.getQuantity()}</td>
                                <td>${product.getDiscountAmount()}</td>
                                <td>${product.getDiscountParsentage()}</td>
                            </tr>
                        </c:forEach>


                    </table>

                </div>
            </div>
        </div>
    </div>

</body>
</html>