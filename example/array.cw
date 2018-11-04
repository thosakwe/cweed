using stdio;

void arrayDemo(int size) {
    // You can declare an array without constant size.
    //
    // CWeed takes care of disposing this memory once we leave this scope.
    // C++ will recognize this as "RAII."
    int arr[size];

    println("Array size: %{size}");

    // Simple for loop syntax
    for (i : 0 .. size) {
        arr[i] = i * 2;
    }

    for (i : 0 .. size) {
        println("arr[%{i}] = %{arr[i]}");
    }

    for (n : arr) {
        println(n.toString());
    }
}