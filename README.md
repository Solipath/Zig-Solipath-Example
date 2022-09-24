# Solipath Zig example project
This is a quick showcase of using Solipath for a Zig project

To build and run tests
```bash
./solipath zig build test
```

or from command prompt:
```cmd
solipath zig build test
```

If you have vscode so you can start it from the command line
Running the following command would start up vscode with path variables set from solipath
```bash
./solipath code .
```

I suspect that the same would apply for any other kind of editor as long as you prefix the command that would normally start it with solipath

If you have an existing zig project, all you should need to do is copy the solipath, solipath.bat (once it is there), and the solipath.json files over to your project assuming the versions match.


## Licensing
I threw on an MIT License on this project just because my understanding is that if it doesn't have some kind of license, it becomes impossible for people to use. Please let me know if there is anything I can do to make this easier!