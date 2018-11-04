void main() {
    File hello("foo.txt");
}

public class File {
    File(string filename, string mode) {
        auto f = <char*> filename; // Cast operator
        auto m = <char*> mode;
        handle = _fopen(f, m);

        if (handle == null) {
            throw StateError("...");
        }
    }

    ~File() {
        _fclose(handle);
    }

    private:
        opaque handle;
}

private c_abi opaque _fopen(const char* filename, const char* mode);