// Pointers in CWeed are safe - they only represent the locations of data,
// and cannot be casted to numbers or arrays, or have arithmetic performed on them.
//
// Not only that, but classes are pass-by-reference by default, so you usually
// don't need pointers.
int pointerDemo() {
    Fruit apple("Apple");
    someThing(&apple);
}

// If Fruit were not a pass-by-value class, this code would fail, 
// as CWeed would not allow us to create a pointer to a pass-by-reference class.
void someThing(Fruit* fruit) {
    fruit->name = "Banana";
}

// Making this as "value" class means it will be passed-by-value/copied every time it
// is used.
value class Fruit {
    public:
        String name;
        Fruit(this.name);
}