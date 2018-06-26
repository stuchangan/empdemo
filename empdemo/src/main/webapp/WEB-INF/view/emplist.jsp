<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>emplist</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/r/css/style.css">
</head>
<body>
<div class="container">
    <div class="row head">
        <div class="col-sm-2">
            欢迎：${user.username}
            <img src="${pageContext.request.contextPath}${user.headimg}" class="img-circle" width="50px" height="50px">
        </div>

    </div>
    <div class="row">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th><input type="checkbox" class="chooseAll" ></th>
                    <th>#</th>
                    <th>姓名</th>
                    <th>手机</th>
                    <th>性别</th>
                    <th>工资</th>
                    <th>部门</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <C:forEach items="${pageInfo.list}" var="emp" varStatus="index">
                <tr>
                    <td><input type="checkbox" class="item" value="${emp.id}"></td>
                    <td>${index.index+1}</td>
                    <td>${emp.name}</td>
                    <td>${emp.phone}</td>
                    <td>${emp.sex}</td>
                    <td>${emp.salary}</td>
                    <td>${emp.dept.dname}</td>
                    <td>
                        <button type="button" class="btn btn-info update-btn" update-id="${emp.id}">修改</button>
                        <button type="button" class="btn btn-danger delete-btn" delete-id="${emp.id}">删除</button>
                    </td>
                </tr>
            </C:forEach>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col-sm-9">
            <button type="button" class="btn btn-primary addEmp">增加</button>
            <button type="button" class="btn btn-danger deleteAll" >删除</button>
        </div>
        <div class="col-sm-3">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <C:if test="${pageInfo.isFirstPage}">
                        <li class="disabled">
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </C:if>
                    <C:if test="${!pageInfo.isFirstPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${pageInfo.prePage}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </C:if>

                    <C:if test="${(pageInfo.pages - pageInfo.pageNum)>4}">
                        <C:forEach begin="${pageInfo.pageNum}" end="${pageInfo.pageNum + 4}" var="Num" varStatus="index">
                            <C:if test="${index.index == pageInfo.pageNum}">
                                <li class="active"><a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${index.index}">${Num}</a></li>
                            </C:if>
                            <C:if test="${!(index.index == pageInfo.pageNum)}">
                                <li><a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${index.index}">${Num}</a></li>
                            </C:if>
                        </C:forEach>
                    </C:if>
                    <C:if test="${!((pageInfo.pages - pageInfo.pageNum)>4)}">
                        <C:forEach begin="${(pageInfo.pages - 4) > 0 ?(pageInfo.pages - 4):1}" end="${pageInfo.pages}" var="Num" varStatus="index">
                            <C:if test="${index.index == pageInfo.pageNum}">
                                <li class="active"><a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${index.index}">${Num}</a></li>
                            </C:if>
                            <C:if test="${!(index.index == pageInfo.pageNum)}">
                                <li><a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${index.index}">${Num}</a></li>
                            </C:if>
                        </C:forEach>
                    </C:if>

                    <C:if test="${pageInfo.isLastPage}">
                        <li class="disabled">
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </C:if>
                    <C:if test="${!pageInfo.isLastPage}">
                        <li >
                            <a href="${pageContext.request.contextPath}/emp/emplist?pageNum=${pageInfo.nextPage}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </C:if>
                </ul>
            </nav>
        </div>
    </div>
    <div class="row foot"></div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/r/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/r/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

    $(function () {
        //删除单个数据的方法
        //使用jquary的绑定方式来绑定一个事件
        $(".delete-btn").click(function(){
            //$(this)代表获取当前触发这个方法的节点对象
            var id = $(this).attr("delete-id");
            var path =  "${pageContext.request.contextPath}/emp/deleteEmpById?id=" + id;
            location.href = path;
        });
        //选中多个数据的方法（全选的点击事件）
        $(".chooseAll").click(function(){
            $(".item").prop("checked",$(this).prop("checked"));
            /*
                //还可以这样写遍历item数组的方法
                var ischecked = $(".chooseAll").prop("checked");
                $(".item").each(function(){
                    $(this).prop("checked",ischecked);
                })
            */
            /*var ischecked = $(this)[0].checked;
            var items = $(".item");
            if(ischecked){
                for(var i = 0;i<items.length;i++){
                    items[i].checked = true;
                }
            }else{
                for(var i = 0;i<items.length;i++){
                    items[i].checked = false;
                }
            }*/
        });
        //删除多个数据你的方法
        $(".deleteAll").click(function(){
            var ids = [];
            //1.拿到所有多选框的状态
            $(".item").each(function(){
                var item = $(this);
                if(item.prop("checked")){
                    var id = item.val();
                    ids[ids.length] = id;
                }
            });
            var path = "${pageContext.request.contextPath}/emp/deleteEmpById?id=" + ids;
            location.href = path;
        });
        $(".addEmp").click(function(){
            var path = "${pageContext.request.contextPath}/emp/addEmpView";
            location.href = path;

        });
        $(".update-btn").click(function(){
            //$(this)代表获取当前触发这个方法的节点对象
            var id = $(this).attr("update-id");
            var path =  "${pageContext.request.contextPath}/emp/updateEmpView?id=" + id;
            location.href = path;
        });


    });



</script>
</body>
</html>
