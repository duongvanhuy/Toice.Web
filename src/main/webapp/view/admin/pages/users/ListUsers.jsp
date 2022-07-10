 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!--HEAD ROW-->
<jsp:include page="../../layouts/Head.jsp"></jsp:include>
<!-- / HEAD ROW-->



    <!-- DataTables -->
    <link rel="stylesheet" href=<c:url value="/assets/AdminPTH/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"/>>
    <link rel="stylesheet" href=<c:url value="/assets/AdminPTH/plugins/datatables-responsive/css/responsive.bootstrap4.min.css"/>>
    <link rel="stylesheet" href=<c:url value="/assets/AdminPTH/plugins/datatables-buttons/css/buttons.bootstrap4.min.css"/>>
    <link rel="stylesheet" href=<c:url value="/assets/css/validate.css"/>>
      <!-- SweetAlert2 -->
      <link rel="stylesheet" href=<c:url value="/assets/AdminPTH/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css"/>>
    <style>
        div#example1_length {
    display: contents;
}
div#example1_filter {
    display: contents;
    position: static;
    margin-left: 1000px;
    right: absolute;
    /* top: 8px; */
    right: 16px;
    /* font-size: 18px; */
}
div.dataTables_wrapper div.dataTables_filter label {
    font-weight: normal;
    white-space: nowrap;
    text-align: left;
    /* text-align: right; */
    /* padding-left: inherit; */
    padding-left: 520px;
}
    </style>

 <!--HEADER ROW-->
<jsp:include page="../../layouts/Header.jsp"></jsp:include>
<!-- / HEADER ROW-->

 <!--HEADER ROW-->
<jsp:include page="../../layouts/TabBar.jsp"></jsp:include>
<!-- / HEADER ROW-->

<div class="content-wrapper">
<section class="content px-4">
    <h2>List Users</h2>
<div class="create-new-user d-flex align-items-end flex-column  pb-1 pt-1">
    <!--<button type="button" class="btn btn-primary " data-toggle="modal"
    data-target="#modal-create" >
        Thêm người dùng
    </button>-->
    <div id="PlaceHolderHere"></div>
    <div id="ShowModal"></div>
    <button type="button" class="btn btn-primary" data-toggle="modal"
            data-target="#modal-create">
            <i class="fas fa-plus mr-2"></i>  Add User
    </button>
</div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <!-- /.card-header -->
                <div class="card-body">
                    <table id="example1" class="table table-bordered table-striped" style="width:100%">
                        <thead>
                            <th> ID</th>
                            <th> STT</th>
                            <th> Image</th>
                            <th> Name</th>
                            <th> Email </th>
                            <th> Phone Number</th>
                            <th> Address</th>
                            <th> Detail</th>
                            
                            </tr>
                        </thead>
                    </table>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>

</div>
</section>
</div>


<!-- Modal create-->
<div class="modal fade" id="modal-create" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add User</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action=""  id="create-user">
                    <div class=" card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name</label><span class="text-danger">*</span>
                                    <input id="name" type="text" class="form-control" name="name" placeholder="Enter name">
                                    
                                    <span class="form-message"></span>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label><span class="text-danger">*</span>
                                    <input id="email" type="email" class="form-control" name="email" placeholder="Enter email">
                                    <span class="form-message"></span>
                                    <span id="message" class="text-danger"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label><span class="text-danger">*</span>
                                    <input id="password" type="password" class="form-control" name="password" placeholder="Enter email">
                                    <span class="form-message"></span>
                                    <span id="message" class="text-danger"></span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Phone</label><span class="text-danger">*</span>
                                    <input id="phone" type="text" class="form-control" name="phone" placeholder="Enter Phone">                                    
                                    <span class="form-message"></span>

                                </div>
                                <div class="form-group">
                                    <label for="birthday">Birthday</label>
                                    <input id="birthday"  type="date" value="2022-05-25" name="birthday" class="form-control" placeholder="Enter Birthday">                                 
                                    <span class="form-message"></span>
                                </div>
                                <div class="form-group">
                                    <label for="password_confirm">Enter the password</label><span class="text-danger">*</span>
                                    <input id="password_confirm" type="password" class="form-control" name="password_confirm" placeholder="Enter email">
                                    <span class="form-message"></span>
                                    <span id="message" class="text-danger"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Address">Address </label>
                            <input for="Address" type="text" class="form-control" name="address" placeholder="Enter Address">
                            
                            <span class="form-message"></span>
                        </div>
                           
                 
                          <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <button  class=" form-submit btn btn-primary" >Save</button>
                        </div>
                    </div>
                </form>
              
            </div>

        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /Modal create-->

<div class="modal fade" id="modal-details" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          
            <div class="modal-header">
                <h4 class="modal-title">Information User</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
     
            <div class="modal-body">
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle dt-image" style="height: 150px; wight: 150px">
                                    <div class="mt-3">
                                        <h4 class="dt-name"></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3 pb-2">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Name</h6>
                                    </div>
                                    <div class="dt-name col-sm-9 text-secondary">
                                       
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="dt-email col-sm-9 text-secondary">
                                        
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="dt-phone col-sm-9 text-secondary">
                                       
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="dt-address col-sm-9 text-secondary">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-edit"  data-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Edit User Information</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" id="upload-image-form" class="p-2" enctype="multipart/form-data" >
                @csrf
                <div class="modal-body">
                    <form method="post" id="upload-image-form" class="p-2" enctype="multipart/form-data" >
                        @csrf
                        <div class=" card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="ed-name">Họ & tên</label>
                                        <input id="ed-name" type="text" class="form-control" name="name" placeholder="Enter name">
                                        
                                        <span class="form-message"></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="ed-email">Địa chỉ Email</label>
                                        <input id="ed-email" type="email" class="form-control" name="email" placeholder="Enter email">
                                        <span class="form-message"></span>
                                        <span id="message" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="ed-phone">Số điện thoại</label>
                                        <input id="ed-phone" type="text" class="form-control" name="phone" placeholder="Enter Phone">                                    
                                        <span class="form-message"></span>

                                    </div>
                                    <div class="form-group">
                                        <label for="ed-birthday">Ngày sinh</label>
                                        <input id="ed-birthday"  type="date" value="2022-05-25" name="birthday" class="form-control" placeholder="Enter Birthday">                                 
                                        <span class="form-message"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ed-address">Địa chỉ </label>
                                <input id="ed-address" type="text" class="form-control" name="address" placeholder="Enter Address">
                            </div>
                            <div class="form-group">
                                <label for="ed-image">Ảnh đại diện </label>
                                <input id="ed-image" type="file" class="form-control" name="image" placeholder="Enter image">
                            </div>
                        
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                            <button type="submit"  class="btn btn-primary" data-save="modal">Lưu thay đổi</button>
                        </div>
                    
                    </form>
                   
            </div>

        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
 <!--HEADER ROW-->
<jsp:include page="../../layouts/Footer.jsp"></jsp:include>
<!-- / HEADER ROW-->


    <!-- DataTables  & ../plugins -->
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables/jquery.dataTables.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-responsive/js/dataTables.responsive.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"/>></script>
    <script src<c:url value="/assets/AdminPTH/plugins/datatables-buttons/js/dataTables.buttons.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/jszip/jszip.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/pdfmake/pdfmake.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/pdfmake/vfs_fonts.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-buttons/js/buttons.html5.min.js"/>></script>
    <script src<c:url value="/assets/AdminPTH/plugins/datatables-buttons/js/buttons.print.min.js"/>></script>
    <script src=<c:url value="/assets/AdminPTH/plugins/datatables-buttons/js/buttons.colVis.min.js"/>></script>
@*message*@
<!-- SweetAlert2 -->
<script src=<c:url value="/assets/AdminPTH/plugins/sweetalert2/sweetalert2.min.js"/>></script>
{{-- upload image --}}
<script src=<c:url value="/assets/js/uploadFile.js"/>></script>


<script src=<c:url value="/assets/AdminPTH/plugins/jquery-validation/jquery.validate.min.js"/>></script>
  <script src=<c:url value="/assets/AdminPTH/plugins/jquery-validation/additional-methods.min.js"/>></script>
