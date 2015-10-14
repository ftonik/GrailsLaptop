function Laptop(data) {
    this.name = ko.observable(data.name);
    this.price = ko.observable(data.price);
}


var LaptopModel = function(laptops) {
    var self = this;
    this.newLaptopName=ko.observable();
    this.newLaptopPrice=ko.observable();
    this.editLaptop = ko.observable(false);
    this.selectedItems = ko.observableArray([]);
    self.laptops = ko.observableArray([]);

    self.toggleVisibility = function() {
        self.editLaptop(!self.editLaptop());
    };

    self.addLaptop= function() {
        self.laptops.push(new Laptop({name: this.newLaptopName(),
            price: this.newLaptopPrice()}));

        //Очищаем поля
        self.newLaptopName("");
        self.newLaptopPrice("");
    };

    self.removeSelected = function () {
        this.laptops.removeAll(this.selectedItems());
        this.selectedItems([]);
    };

};

ko.applyBindings(new LaptopModel());
