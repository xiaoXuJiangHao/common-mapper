<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% request.setAttribute("path",request.getContextPath()); %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'banner.jsp' starting page</title>
    
	<link rel="stylesheet" type="text/css" href="${path}/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${path}/themes/IconExtension.css">
	<script type="text/javascript" src="${path}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/js/jquery.easyui.min.js"></script>
		
	
  </head>
     
  <body>
    <table id="albumTab" class="table" style="width:100%;height:100%">

    </table>
    <!-- 专辑详情的div块 ===============================================================-->
    <div id="dd" style="display:none;">
	    <form action="" method="POST" id="formAlbum">
	       <div>专辑编号:<input type="text" name="id" id="id" class="easyui-validatebox" readonly/><hr/></div>
           <div>专辑标题:<input type="text" name="title" id="title" class="easyui-validatebox"/><hr/></div>
           <div>专辑评分:<input type="text" name="score" id="score" class="easyui-validatebox"/><hr/></div>
           <div>专辑播音人:<input type="text" name="brodcast" id="brodcast" class="easyui-validatebox"/><hr/></div>
           <div>专辑作者:<input type="text" name="author" id="author" class="easyui-validatebox"/><hr/></div>
           <div>专辑简介:<input type="text" name="brief" id="brief" class="easyui-validatebox"/><hr/></div>
           <div>专辑上传时间:<input type="text" name="publicTime" id="publicTime" class="easyui-validatebox"/><hr/></div>
           <div>专辑集数:<input type="text" name="count" id="count" class="easyui-validatebox"/><hr/></div>
           <div>专辑图片:<img  id="coverImg"/><hr></div>
           <div>专辑状态:<select name="status" class="easyui-combobox" style="width:200px;">
		                     <option value="0">正在展示</option>
		                     <option value="1">已下架</option>
		                </select>
		   </div>
	    </form>
	</div>
	<!-- 添加专辑的div块 ===============================================================-->
     <div id="addAlbum" style="display:none;">
	    <form action="" method="POST" id="formAddAlbum" enctype="multipart/form-data">
           <div>专辑标题:<input type="text" name="title" id="altitle" class="easyui-validatebox"/><hr/></div>
           <div>专辑评分:<input type="text" name="score" id="alscore" class="easyui-validatebox"/><hr/></div>
           <div>专辑播音人:<input type="text" name="brodcast" id="albrodcast" class="easyui-validatebox"/><hr/></div>
           <div>专辑作者:<input type="text" name="author" id="alauthor" class="easyui-validatebox"/><hr/></div>
           <div>专辑简介:<input type="text" name="brief" id="albrief" class="easyui-validatebox"/><hr/></div>
           <div>专辑上传时间:<input name="publicTime" type="text" class="easyui-datebox" style="width:150px;height:20px"/><hr/></div>
           <div>专辑集数:<input type="text" name="count" id="alcount" class="easyui-validatebox"/><hr/></div>
           <div>专辑图片:<input type="file" name="addFile"><hr></div>
           <div>专辑状态:<select name="status" class="easyui-combobox" style="width:200px;">
		                     <option value="0">正在展示</option>
		                     <option value="1">已下架</option>
		                </select>
		   </div>
	    </form>
	</div>

	<!-- 添加章节 -->
	<div id="addChapter" style="display:none;">
	    <form action="" method="POST" id="formAddChapter" enctype="multipart/form-data">
           <div>章节标题:<input type="text" name="title" id="chaptitle" class="easyui-validatebox"/><hr/></div>
           <div>章节下载路径:<input type="file" name="chapFile"/><hr/></div>
           <div>章节大小:<input type="text" name="size" id="chapsize" class="easyui-validatebox"/><hr/></div>
           <div>章节时长:<input type="text" name="duration" id="chapduration" class="easyui-validatebox"/><hr/></div>
           <div>章节上传时间:<input name="createTime" type="text" class="easyui-datebox" style="width:150px;height:20px"/><hr/></div>
           <div>所属专辑:<input type="text" name="pid" id="chappid" class="easyui-validatebox" readonly/><hr/></div>
	    </form>
	</div>

    <script type="text/javascript">
	    $(function(){
	    	$("#formAddAlbum").form({
    			url:"${path}/Album/insertAlbum.do",
    			onSubmit:function(){
    				return $("#formAddAlbum").form("validate");
    			},
    			success:function(data){
    				//1.添加成功后先关闭添加模块
    				$("#addAlbum").window("close");
    				//2.并清空其中文本框内容
    				$("#formAddAlbum").form("clear");
    				//3.再刷新表格数据
            		/**
            		 load:重新加载后显示第一页
            		 reload:重新加载后显示当前页
            		*/
            		$("#albumTab").treegrid("reload");
    			},
    			ajax:true,
    		});

	    	$("#formAddChapter").form({
    			url:"${path}/Chapter/insertChapter.do",
    			onSubmit:function(){
    				return $("#formAddChapter").form("validate");
    			},
    			success:function(data){
    				//1.修改成功后先关闭添加模块
    				$("#addChapter").window("close");
    				//2.并清空其中文本框内容
    				$("#formAddChapter").form("clear");
    				//3.再刷新表格数据
            		/**
            		 load:重新加载后显示第一页
            		 reload:重新加载后显示当前页
            		*/
            		$("#albumTab").treegrid("reload");
    			},
    			ajax:true,
    		});

	    	//专辑表格样式设计
	    	$("#albumTab").treegrid({
    		   singleSelect:false, //为true则只允许选择一行
	    	   ctrlSelect:true,//启用多行选择时ctrl+鼠标选中多行
	    	   fitColumns:true, //自适应列宽
	    	   striped:true,//斑马线效果
			   url:"${path}/download/queryAll.do",
			   idField:"title",
			   treeField:"title",
			   columns:[[
			       {field:"id",title:"章节编号",width:80},
			       {field:"title",title:"章节名称",width:100},
			       {field:"url",title:"章节图片",width:100},
			       {field:"size",title:"章节大小",width:20},
			       {field:"duration",title:"章节时长",width:20},
			       {field:"createTime",title:"上传时间",width:50,
			    	   formatter: function(value,row,index){
   		        		  if(typeof row.createTime !="undefined"){
   		        			var date = new Date(row.createTime);
   	   		      	        var year = date.getFullYear().toString();
   	   		      	        var month = (date.getMonth() + 1);
   	   		      	        var day = date.getDate().toString();
   	   		      	        var hour = date.getHours().toString();
   	   		      	        var minutes = date.getMinutes().toString();
   	   		      	        var seconds = date.getSeconds().toString();
   	   		      	        if (month < 10) {
   	   		      	            month = "0" + month;
   	   		      	        }
   	   		      	        if (day < 10) {
   	   		      	            day = "0" + day;
   	   		      	        }
   	   		      	        if (hour < 10) {
   	   		      	            hour = "0" + hour;
   	   		      	        }
   	   		      	        if (minutes < 10) {
   	   		      	            minutes = "0" + minutes;
   	   		      	        }
   	   		      	        if (seconds < 10) {
   	   		      	            seconds = "0" + seconds;
   	   		      	        }
   	   		      	        return year + "-" + month + "-" + day + " " + hour + ":" + minutes + ":" + seconds;

   	   		  					//return dateFormatter(row);
   		        		  }
   		  			  }
			       }
			   ]],
		    		toolbar:[
//专辑详情展示_________________________________________________________________________________
      		            {
     		            	text:"专辑详情",
     		            	iconCls:"icon-sum",
     		            	handler:function(){
      		            		//如果有选中的行，则初始化dialog
      		            		var selectRow = $("#albumTab").treegrid("getSelected");
      		            		//非空即为真,js特性
      		            		if(selectRow &&(typeof selectRow.author)!= "undefined"){
      		            			//var o  =  Object.keys(selectRow);
          		            		//console.info(o);

      		            			//给表单元素初始化默认值  selectRow.标签的id值
      		            			$("#id").val(selectRow.id);
      		            			$("#title").val(selectRow.title);
      		            			$("#score").val(selectRow.score);
      		            			$("#brodcast").val(selectRow.brodcast);
      		            			$("#author").val(selectRow.author);
      		            			$("#brief").val(selectRow.brief);
      		            			$("#publicTime").val(selectRow.publicTime);
      		            			$("#count").val(selectRow.count);
      		            			$("#coverImg").prop("src","${pageContext.request.contextPath}/cmfz/bannerPic/"+selectRow.coverImg);
      		            			$("#status").val(selectRow.status);

      		            			//初始化dialog
      		            			$("#dd").dialog({
      		            				title:"专辑详细信息展示",
      		            				width:700,
      		            				height:400,
      		            				buttons:[
      		            				            {
      		            				            	text:"确定",
      		            				            	iconCls:"icon-ok",
      		            				            	handler:function(){
      		            				            		/**
      		            				            		1.向服务器提交信息
      		            				            		2.响应成功,要先关闭dialog,同时刷新表格
      		            				            		*/
      		            				            		$("#dd").window("close");
      		            				            		$("#formAlbum").form("clear");
      		            				            	}
      		            				            }
      		            				         ]
      		            			});
      		            		}else{
      		            			$.messager.alert("我告诉你","请选一个专辑并且只可以选一个！！！");
      		            		}
      		            	}
      		            },{
//添加专辑____________________________________________________________________________________
      		            	text:"添加专辑",
      		            	iconCls:"icon-add",
      		            	handler:function(){
      		            		//初始化dialog
      		            		$("#addAlbum").dialog({
      		            			title:"专辑的添加",
      		            			width:600,
      		            			height:400,
      		            			buttons:[
      		            			            {
      		            			            	text:"提交",
      		            			            	iconCls:"icon-ok",
      		            			            	handler:function(){
      		            			            		$("#formAddAlbum").submit();
      		            			            	}
      		            			            }
      		            			         ]
      		            		});
      		            	}
      		            },{
//添加章节____________________________________________________________________________________
      		            	text:"添加章节",
      		            	iconCls:"icon-add",
      		            	handler:function(){
      		            	    //如果有选中的行，则初始化dialog
      		            		var selectRow = $("#albumTab").treegrid("getSelected");
      		            		//非空即为真,js特性
      		            		if(selectRow &&(typeof selectRow.author)!= "undefined"){
      		            			//将专辑id赋予章节的pid文本框
      		            			$("#chappid").val(selectRow.id);
      		            		   //初始化dialog
          		            		$("#addChapter").dialog({
          		            			title:"章节的添加",
          		            			width:600,
          		            			height:400,
          		            			buttons:[
          		            			            {
          		            			            	text:"提交",
          		            			            	iconCls:"icon-ok",
          		            			            	handler:function(){
          		            			            		$("#formAddChapter").submit();
          		            			            	}
          		            			            }
          		            			         ]
          		            		});
      		            		}else{
      		            			$.messager.alert("我告诉你","请选一个专辑并且只可以选一个！！！");
      		            		}
      		            	}
      		            },{
//下载音频__________________________________________________________________________________
      		            	text:"下载音频",
      		            	iconCls:"icon-sum",
      		            	handler:function(){
      		            	    //如果有选中的行，则初始化dialog
      		            		var selectRow = $("#albumTab").treegrid("getSelected");
      		            		//非空即为真,js特性
      		            		if(selectRow &&(typeof selectRow.author) == "undefined"){
      		            			$.messager.confirm("网络一线牵！！","珍惜这份资源",function(){
      		            				location.href="${path}/Chapter/downFile.do?url="+selectRow.url;
      		            			});
      		            		}else{
      		            			$.messager.alert("我告诉你","请选一个章节并且只可以选一个！！！");
      		            		}
      		            	}
      		            }
      		         ]
	    	});

	    });

	</script>
  </body>
</html>
