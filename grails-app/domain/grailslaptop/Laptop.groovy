package grailslaptop

class Laptop {
    String laptopName;
    Integer price;

    static constraints = {
        price(max: 1000)
    }
}
