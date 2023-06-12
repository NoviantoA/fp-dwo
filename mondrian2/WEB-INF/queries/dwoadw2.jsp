<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
  <%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


      <jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver"
        jdbcUrl="jdbc:mysql://localhost:4306/uas-dwo?user=root&password=" catalogUri="/WEB-INF/queries/dwoadw2.xml">

        select {[Measures].[TaxAmt]} ON COLUMNS,
        {([ShipMethod].[All ShipMethod],[Vendor].[All Vendor],[Time].[All Times],[PurchaseOrderDetail].[All Purchase Product],[Employee].[All Employee])} ON ROWS
        from [purchase]


      </jp:mondrianQuery>





      <c:set var="title01" scope="session">Query Fact Purchase using Mondrian OLAP</c:set>