void something() {
    // Using null must be explicit.
    MyClass? instance = null;

    doIt(instance); // Won't compile, as MyClass? != MyClass.

    // To get the value of a nullable object, suffix it with "!".
    //
    // Note that this will throw an exception if instance is null.
    doIt(instance!));

    instance = MyClass();
}

void doIt(MyClass instance) {
    // Do stuf...
}

class MyClass {}