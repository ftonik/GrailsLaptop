<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script type='text/javascript' src='//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
    <g:javascript src="knockout-3.3.0.js"/>
    <meta name="layout" content="main"/>
    <title>Render Domain</title>
</head>

<body>
<div style='float: left; width: 40%; min-height: 500px; background-color: #c0c0c0;'>
    <p>You have ${list.size()} laptop(s)</p>
    <a href="#" data-bind="click: toggleVisibility">Add laptop</a>
    %{--<g:remoteLink controller="laptop" action="addLaptop"
                  update="mainContent">Add laptop</g:remoteLink><br/>--}%
    <table>
        <tr>
            <td>Name</td>
            <td>Price</td>
        </tr>
        <g:each in="${list}" var="laptop">
            <tr>
                <td>${laptop.laptopName}</td>
                <td>${laptop.price}</td>
            </tr>
        </g:each>
    </table>

</div>

<div id="mainContent" style='float: right; width: 60%; min-height: 500px; background-color: #c0ffc0;'>
    <select multiple="multiple" height="7"
            data-bind="options: $root.laptops, value: name, optionsText: 'name', selectedOptions:selectedItems"></select>

    <div data-bind="visible: editLaptop ">
        <form data-bind="submit: addLaptop">
            <p>Name: <input data-bind="value: newLaptopName"/></p>

            <p>Price: <input data-bind="value: newLaptopPrice"/></p>
            <button type="submit">Add Laptop</button>
        </form>
    </div>
</div>
<g:javascript src="laptops.js"/>
</body>
</html>