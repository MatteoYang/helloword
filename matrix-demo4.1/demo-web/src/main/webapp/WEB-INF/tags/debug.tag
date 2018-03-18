<%@tag import="com.matrix.core.constance.MatrixConstance"%>
<%@ tag body-content="scriptless"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:doBody var="content"></jsp:doBody>
<c:set var="debug" value="<%=MatrixConstance.DEBUG%>"></c:set>
<c:if test="${debug}">
	${content}
</c:if>
