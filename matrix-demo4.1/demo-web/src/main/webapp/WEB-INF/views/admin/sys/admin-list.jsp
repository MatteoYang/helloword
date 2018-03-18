<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.zkingsoft.com" prefix="matrix"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!-- 本框架基本脚本和样式 -->
<script type="text/javascript"
	src="${path }/resource/js/plugin/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${path }/resource/js/systools/MBase.js"></script>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
	<!-- 搜索框部分start -->
<matrix:btn value="user:search">
	<div class="row" >
		<div class="col-sm-12" >
			<form class="form-inline" id="serchform">
				<div class="input-group" >
					<div class="btn-group search-list " data-for="search-text">
						  <button type="button" class="btn btn-default dropdown-toggle searchlist" data-toggle="dropdown">
						    用户姓名 <span class="caret "></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li data-field="suName"><a>用户姓名</a></li>
						    <li data-field="suAccount"><a>账号  </a></li>
						  </ul>
					</div>
					<div class="form-group mr-20">
						<input id="search-text" name="suName" placeholder="输入查询关键词" type="text" class="form-control">
					</div>
					<div class="form-group mr-20">
						<button  onclick="myGrid.serchData()" type="button" class="btn btn-info"><i class="fa fa-search " ></i> 搜索</button>
						<button  type="reset" class="btn btn-info "><i class="fa fa-refresh " ></i> 重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</matrix:btn>
	<!-- 搜索框部分en -->
<div class="ibox-content radius-5 mt-5 mpanel">
		
	<div class="row" >
		<div class="col-sm-12" >
		<div class="option-bar" >
			<matrix:btn value="user:dels">
				<button  onclick="myGrid.delItems('suId')" type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash" ></i>批量删除</button>
			</matrix:btn>
			<matrix:btn value="user:add">
				<button onclick="openAdd()" type="button" class="btn btn-success btn-sm"><i class="fa fa-plus" ></i>  新增</button>
			</matrix:btn>
			</div>
			<table id="mgrid" >
				<thead>
					<tr>
						<th data-checkbox="true"  ></th>
						<th data-formatter="MGrid.indexfn" data-align="center"  data-width="30px" >序号</th>
						<th data-field="suName" data-sortable="true">姓名</th>
						<th data-field="companyName" >所属公司</th>
						<th data-field="suAccount" >账号</th>
						<th data-field="suTel" >电话</th>
						<th data-field="suRegisterTime" data-formatter="MGrid.getTime" data-sortable="true" >注册时间</th>
						<th data-align="center"  data-width="150px" data-field="suId" data-formatter="buidOperate">操作</th>
					</tr>
				</thead>
			</table>
	</div>
	</div>
</div>
</div>
<script type="text/javascript"
src="${path }/resource/js/systools/MJsBase.js"></script>
<script type="text/javascript">
	
	var myGrid;
	
		$(function(){
			var delPath="";
			<matrix:btn value="user:del">
			delPath="${path}/do/admin/su/del";
			</matrix:btn>
			 myGrid=MGrid.initGrid({
				 url:"${path}/do/admin/su/showList",
				 delUrl:delPath
			 });
			 
			 
			 
		});
		function buidOperate(value, row, index){
			var html=[];
			<matrix:btn value="user:edit">
			html[0]='<a onClick="openEdit(\''+value+'\')"  title="编辑" class="fa fa-edit option"></a>'
			</matrix:btn>
			
			
			<matrix:btn value="user:resetPassword">
			html[1]='<a onClick="resetPassword(\''+value+'\')" title="密码重置" class="fa fa-refresh "></a>';
			</matrix:btn>
			
			<matrix:btn value="user:accountLock">
			if(row.suAccountStatus=='locked'){
				html[2]='<a onClick="unlock(\''+value+'\')" title="解锁" class="fa fa-unlock option "></a>';
			}else if(row.suAccountStatus=='activate'){
				html[2]='<a onClick="lock(\''+value+'\')" title="锁定" class="fa fa-lock option  "></a>';
			}
			</matrix:btn>
			
			<matrix:btn value="user:del">
			html[3]='<a onClick="myGrid.delItem(\''+value+'\')" title="删除" class="fa fa-close option text-danger"></a>';
			</matrix:btn>
			
			return html.join(""); 
		}
		<matrix:btn value="user:add">
		//打开添加界面
		function openAdd() {
			layer.open({
				type : 2,
				title : "添加管理员",
				maxmin : true,
				area : [ MUI.SIZE_L, '500px' ],
				content : [ '${path}/do/admin/su/editForm']
			}); 
		}
		</matrix:btn>
		<matrix:btn value="user:edit">
		//打开编辑界面
		function openEdit(id) {
			layer.open({
				type : 2,
				title : "编辑管理员",
				area : [ MUI.SIZE_L, '500px' ],
				maxmin : true,
				content : [ '${path}/do/admin/su/editForm?id=' + id]
			});
		}
		</matrix:btn>
		
		<matrix:btn value="user:resetPassword">
		function resetPassword(id){
			MTools.handleItem( '${path}/do/admin/su/resetPassword?id=' + id, "确认要重置密码吗？");
		}
		</matrix:btn>
		
		<matrix:btn value="user:lock">
		function unlock(id){
			MTools.handleItem( '${path}/do/admin/su/accountLock/unlock/?id=' + id, "确认要解锁账号吗？");
		}
		function lock(id){
			MTools.handleItem( '${path}/do/admin/su/accountLock/lock/?id=' + id, "确认要锁定账号吗？");
		}
		</matrix:btn>
		
		
		
	</script>
</body>
</html>
