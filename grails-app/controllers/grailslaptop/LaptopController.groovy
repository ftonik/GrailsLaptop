package grailslaptop

class LaptopController {

    def list = []

    def index() {
                list << new Laptop(laptopName: 'MacBook', price:1000)
        list << new Laptop(laptopName: 'Asus', price:400)
        list << new Laptop(laptopName: 'Aser',  price:390)
        [ list:list ]
    }

    def addLaptop() {
        [ listLaptops:list ]
        render (view:'addLaptop')
    }
}
