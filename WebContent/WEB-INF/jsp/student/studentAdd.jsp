<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	pageContext.setAttribute("path", path);
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML>
<html>
	<head>

		<base href="${basePath}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>新建组</title>
        <link href="resource/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
        <link href="resource/admin/css/font-awesome.css?v=4.4.0" rel="stylesheet">
        <link href="resource/admin/css/animate.css" rel="stylesheet">
        <link href="resource/admin/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" action="answer/student/studentAdd" id="studentAddFrom" method="post">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">学生姓名：</label>
                                <div class="col-sm-8">
                                    <input id="student_name" name="student_name"  type="text" class="form-control" minlength="2" required>
                                    <span style="color:red;" id="error_student_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">学生编号：</label>
                                <div class="col-sm-8">
                                    <input id="student_number" name="student_number"  type="text" class="form-control" minlength="8" required>
                                    <span style="color:red;" id="error_student_number"></span>
                                </div>
                            </div>
                            <div class="form-group">
                            <label class="col-sm-3 control-label">性别</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b"  name="student_sex" id="student_sex" required>
                                        <option value="">请选择</option>
                                        <option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                <span style="color:red;" id="error_student_sex"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">所在大学：</label>
                                <div class="col-sm-8">
                                    <input id="student_school" name="student_school"  type="text" class="form-control" minlength="2" required>
                                    <span style="color:red;" id="error_student_school"></span>
                                </div>
                            </div>
                             <div class="form-group">
                            <label class="col-sm-3 control-label">学生年级</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="student_grade" id="student_grade" required>
                                        <option value="">请选择</option>
                                        <option value="大一">大一</option>
                                        <option value="大二">大二</option>
                                        <option value="大三">大三</option>
                                        <option value="研究生">研究生</option>
                                    </select>
                                <span style="color:red;" id="error_student_grade"></span>
                                </div>
                            </div>
                           <div class="form-group">
                                <label class="col-sm-3 control-label">所学专业：</label>
                                <div class="col-sm-8">
                                    <input id="student_major" name="student_major"  type="text" class="form-control" minlength="2" required>
                                </div>
                            </div>
                            <div class="form-group">
                            <label class="col-sm-3 control-label">所学产品</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="student_product" id="student_product" required>
                                        <option value="">请选择</option>
                                        <option value="JAVA EE">JAVA EE</option>
                                        <option value="美工">美工</option>
                                        <option value="WEB">WEB</option>
                                    </select>
                                <span style="color:red;" id="error_student_manage"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">规划师姓名 ：</label>
                                <div class="col-sm-8">
                                    <input id="student_teacher_name" name="student_teacher_name" class="form-control" minlength="2" required>
                                    <span style="color:red;" id="error_student_teacher_name"></span>
                                </div>
                            </div>
                             <div class="form-group">
                            <label class="col-sm-3 control-label">所在班级</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="fk_class_id" id="fk_class_id" required>
                                        <option value="">请选择</option>
                                        <c:forEach items="${ clazz }" var="clazz">
                                             <option value="${clazz.class_id }"><c:out value="${clazz.class_name }"/></option>
                                        </c:forEach>
                                    </select>
                                <span style="color:red;" id="error_student_manage"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-3">
                                    <button class="btn btn-primary addBtn" type="button">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- 全局js -->
    <script src="resource/admin/js/jquery.min.js?v=2.1.4"></script>
    <script src="resource/admin/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
     <script src="resource/admin/js/plugins/layer/laydate/laydate.js"></script>
    <script>
        //外部js调用
        laydate({
            elem: '#date_input', //id选择器
            event: 'focus' //响应事件。如果没有传入event，则按照默认的click
        });
    </script>
    <script src="resource/admin/js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->

   <script src="resource/admin/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="resource/admin/js/plugins/validate/messages_zh.min.js"></script>
    <script src="resource/admin/js/demo/form-validate-demo.js"></script>
     <script type="text/javascript" src="resource/answer/student.js"></script>
    <script type="text/javascript">
                    student.insert();
                </script> 

</body>

</html>