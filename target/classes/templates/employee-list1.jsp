<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<!DOCTYPE html>
<!-- saved from url=(0057)https://colorlib.com/etc/tb/Table_Fixed_Column/index.html -->
<html >

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        @charset "UTF-8";

        [ng\:cloak],
        [ng-cloak],
        [data-ng-cloak],
        [x-ng-cloak],
        .ng-cloak,
        .x-ng-cloak,
        .ng-hide:not(.ng-hide-animate) {
            display: none !important;
        }

        ng\:form {
            display: block;
        }

        .ng-animate-shim {
            visibility: hidden;
        }

        .ng-anchor {
            position: absolute;
        }

        body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Roboto', sans-serif;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 10px;
    margin: 0 0 10px;
    min-width: 100%;
}
.table-title h2 {
    margin: 8px 0 0;
    font-size: 22px;
}
.search-box {
    position: relative;        
    float: right;
}
.search-box input {
    height: 34px;
    border-radius: 20px;
    padding-left: 35px;
    border-color: #ddd;
    box-shadow: none;
}
.search-box input:focus {
    border-color: #3FBAE4;
}
.search-box i {
    color: #a0a5b1;
    position: absolute;
    font-size: 19px;
    top: 8px;
    left: 10px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}
table.table td:last-child {
    width: 130px;
}
table.table td a {
    color: #a0a5b1;
    display: inline-block;
    margin: 0 5px;
}
table.table td a.view {
    color: #03A9F4;
}
table.table td a.edit {
    color: #FFC107;
}
table.table td a.delete {
    color: #E34724;
}
table.table td i {
    font-size: 19px;
}    
.pagination {
    float: right;
    margin: 0 0 5px;
}
.pagination li a {
    border: none;
    font-size: 95%;
    width: 30px;
    height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 30px !important;
    text-align: center;
    padding: 0;
}
.pagination li a:hover {
    color: #666;
}	
.pagination li.active a {
    background: #03A9F4;
}
.pagination li.active a:hover {        
    background: #0397d6;
}
.pagination li.disabled i {
    color: #ccc;
}
.pagination li i {
    font-size: 16px;
    padding-top: 6px
}
.hint-text {
    float: left;
    margin-top: 6px;
    font-size: 95%;
}    
    </style>
    <title>Employee Data</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png"
        href="https://colorlib.com/etc/tb/Table_Fixed_Column/images/icons/favicon.ico">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/animate.css">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/select2.min.css">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/perfect-scrollbar.css">

    <link rel="stylesheet" type="text/css" href="./Table V05_files/util.css">
    <link rel="stylesheet" type="text/css" href="./Table V05_files/main.css">

    <meta name="robots" content="noindex, follow">
    <script defer="" referrerpolicy="origin" src="./Table V05_files/s.js.download"></script>
    <script>
        function confirmDelete() {
            // Display a confirmation dialog
            var isConfirmed = window.confirm("Are you sure you want to delete?");
            
            // Check the user's choice
            return isConfirmed;
        }

        $(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
    </script>
    <style type="text/css" id="mytempCss">
        ._2_e-g9 {
            display: none;
        }

        ._2wQ56C._1h3i_z {
            opacity: 0.01;
        }
    </style>
</head>

<body>
    <div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table100 ver1">
                    <div>
                        <input type="text" class="form-control" placeholder="Search&hellip;">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr class="row100 head" style="font-weight: bold;">
                                    <th class="cell100 column2">Id</th>
                                    <th class="cell100 column2">Name</th>
                                    <th class="cell100 column3">Designation</th>
                                    <th class="cell100 column4">Department</th>
                                    <th class="cell100 column5">Contact</th>
                                    <th class="cell100 column6">City</th>
                                    <th class="cell100 column7">Email</th>
                                    <th th:if="${user == 'admin'}"  class="cell100 column7">Action</th>
                                </tr>
                            </thead>
                            <!-- <c:forEach items="${employees}" var="employee"> -->
                                <tbody>
                                    <!-- <tr class="row100 body">
                                        <td class="cell100 column2">${employee.getId()}</td>
                                        <td class="cell100 column2">${employee.getName()}</td>
                                        <td class="cell100 column3">${employee.getDesignation()}</td>
                                        <td class="cell100 column4">${employee.getDepartment()}</td>
                                        <td class="cell100 column5">${employee.getContact()}</td>
                                        <td class="cell100 column6">${employee.getCity()}</td>
                                        <td class="cell100 column7">${employee.getEmail()}</td>
                                        <td class="cell100 column7">
                                            <a href="/employee/update/${employee.getId()}"
                                                class="btn btn-sm btn-warning">Update</a>
                                            <a href="/employee/delete/${employee.getId()}"
                                                class="btn btn-sm btn-danger" onclick="confirmDelete()">Delete</a>

                                        </td>
                                    </tr> -->
                                    <tr th:each="employee : ${employees}" class="row100 body">
                                        <td th:text="${employee.id}" class="cell100 column2"></td>
                                        <td th:text="${employee.name}" class="cell100 column2"></td>
                                        <td th:text="${employee.designation}" class="cell100 column3"></td>
                                        <td th:text="${employee.department}" class="cell100 column4"></td>
                                        <td th:text="${employee.contact}" class="cell100 column5"></td>
                                        <td th:text="${employee.city}" class="cell100 column6"></td>
                                        <td th:text="${employee.email}" class="cell100 column7"></td>
                                        <td th:if="${user == 'admin'}" class="cell100 column7">
                                            <a th:href="@{/employee/update/{id}(id=${employee.id})}"
                                                class="btn btn-sm btn-warning">Update</a>
                                               
                                            <a th:href="@{/employee/delete/{id}(id=${employee.id})}"
                                             class="btn btn-sm btn-danger" onclick=" return confirmDelete()">Delete</a>
                                        </td>
                                    </tr>
                                </tbody>
                            <!-- </c:forEach> -->
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>

   
    <script src="./Table V05_files/jquery-3.2.1.min.js.download"></script>

    <script src="./Table V05_files/popper.js.download"></script>
    <script src="./Table V05_files/bootstrap.min.js.download"></script>

    <script src="./Table V05_files/select2.min.js.download"></script>

    <script src="./Table V05_files/perfect-scrollbar.min.js.download"></script>

    <script async="" src="./Table V05_files/js"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>

    <script src="./Table V05_files/main.js.download"></script>


</body>

</html>