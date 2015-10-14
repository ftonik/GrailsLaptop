<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 14.10.15
  Time: 16:42
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<p>You have <span >&nbsp;</span> laptop(s)</p>
<p>You have <span data-bind='text: laptops().length'>&nbsp;</span> laptop(s)</p>
<select multiple="multiple" height="7"  data-bind="options: $root.laptops, value: name, optionsText: 'name', selectedOptions:selectedItems"> </select>
<h3>New laptop</h3>
<p>Name: <input data-bind="value: newLaptopName" /></p>
<p>Price: <input data-bind="value: newLaptopPrice" /></p>
<button data-bind='click: addLaptop'>Add Laptop</button>
<script>
    var LaptopModel = function(laptops) {
        var self = this;
        this.newLaptopName=ko.observable("");
        this.newLaptopPrice=ko.observable("");
        this.selectedItems = ko.observableArray([]);
        self.laptops = ko.observableArray(laptops);

        self.addLaptop= function() {
            self.laptops.push({
                name: this.newLaptopName,
                price: this.newLaptopPrice
            });
        };

        self.removeSelected = function () {
            this.laptops.removeAll(this.selectedItems());
            this.selectedItems([]); // Clear selection
        };


        self.editSelected=function(){

        };

    };

    var viewModel = new LaptopModel(${list});
    ko.applyBindings(viewModel);
</script>
</body>
</html>