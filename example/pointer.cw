// Pointers in CWeed are safe - they only represent the locations of data,
// and cannot be casted to numbers or arrays, or have arithmetic performed on them.
int pointerDemo() {
    Fruit apple("Apple");
    someThing(&Fruit);
}

void someThing(Fruit* fruit) {
    fruit->name = "Banana";
}

class Fruit {
    public:
        String name;
        Fruit(this.name);
}