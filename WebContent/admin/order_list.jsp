
<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.csmzxy.s1832.n05.javabean.db_conn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="verify_login.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
<link href="asset/css/style.css" rel="stylesheet">
</head>
<body>
	
	<div class="panel">
		<div class="panel-body">
			<div class="col-md-12">
				<h3 class="animated fadeInLeft">订单列表</h3>
				<p class="animated fadeInDown">订单管理<span class="fa-angle-right fa"></span>订单列表</p>
			</div>
		</div>
    </div>
	
	
    <div class="col-md-12 padding-0 form-element">
      
        <div class="panel">
			<div class="panel-heading">
				<h3>列表内容</h3>
			</div>
			
			<div class="panel-body">
				<div class="responsive-table">
					<div id="datatables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-striped table-bordered dataTable no-footer" width="100%" cellspacing="0"  style="width: 100%;">
									<thead>
										<tr role="row">
											<th class="sorting_asc"style="width:15%;">用户名</th>
											<th class="sorting" style="width:10%;">航班号</th>
											<th class="sorting"  style="width:10%;">乘机人</th>
											<th class="sorting" style="width:15%;">乘机日期</th>
											<th class="sorting" style="width:10%;">舱位</th>
											<th class="sorting"  style="width:15%;">证件号码</th>
											<th class="sorting"  style="width:10%;">联系人</th>
											<th class="sorting"  style="width:15%;">联系电话</th>
											
										</tr>
									</thead>
									
									<tbody>
										<%
											db_conn conn=new db_conn();
											String sql="select * from t_order";
											ResultSet res=conn.executeQuery(sql);
											String row=null;
											while(res.next()){
												if(res.getRow()%2==0){
													row="even";
												}else{
													row="odd";
												}
										%>
									
										<tr role="row" class="<%=row %>">
											<td class="sorting_1"><%=res.getString(2) %></td>
											<td><%=res.getString(3) %></td>
											<td><%=res.getString(4) %></td>
											<td><%=res.getString(5) %></td>
											<td><%=res.getString(6) %></td>
											<td><%=res.getString(7) %></td>
											<td><%=res.getString(8) %></td>
											<td><%=res.getString(9) %></td>
										</tr>
										<%
											}
										%>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>
    </div>

</body>
</html>