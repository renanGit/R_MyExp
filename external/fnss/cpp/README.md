# FNSS C++ library
The FNSS C++ library allows to parse XML files of topologies, traffic matrices and event schedules generated using the core FNSS library.
The parsed files are converted in C++ objects that can be used in C++-based simulators or emulators.
If you wish to use FNSS to import topologies to the ns-3 simulator, please use the FNSS ns-3 library instead.

## Project directory structure
The files of the C++ FNSS library are organized in the following directories.

* `deps`: third party libraries
* `examples`: examples source code using the library
* `src`: source code
* `test`: test code and resources

After running `make` the following directories are created:

* `doc`: HTML API documentation
* `bin`: executable files in the projects (i.e. `*.cpp` files in `src` without an associated `*.h` file)
* `build`: binary files
* `dist`: distribution packages
* `include`: header files
* `lib`: compiled static and dynamic libraries

## Build and installation
You can build and install the library using the `Makefile` provided.

To build the source code, open the command shell and move to the directory where this README file is located. Then run:

    $ make

This will compile all source code (main code, test cases, examples), run test cases, build library files and store the build output in the directories listed above.

Once compiled the code, you can then install the library on your system, by running:

    $ make install

Depending on your configuration, this may require to be run as superuser.

To build the documentation, run:

    $ make doc

This will create HTML and Latex documentation under the `doc` directory. You need [Doxygen](www.doxygen.org/) to build it.

Finally, to build packages for distribution, run:

    $ make dist

This will create zip and tar.gz packages in the `dist` directory.

For a complete list of build and installation options run:

    $ make help

## How to use it
To learn how to use the library you can either look at the documentation in the `doc` folder or look at some examples provided in the `examples` folder.
Should you need any further information, please contact us and we'll be happy to help you.

## Requirements
The only required library which is not part of the the C++ standard library is [RapidXML](http://rapidxml.sourceforge.net/) which is already included in the `deps` folder and ready to use.
It is recommended that you have the [clang++](http://clang.llvm.org/) compiler installed on your system. `Makefile` will try using it to compile it the code. If not available it will fall back to use [g++](https://gcc.gnu.org/).
To build the documentation you need the [Doxygen](www.doxygen.org/) documentation generator.

## License
The FNSS C++ library is released under the terms of the [BSD License](http://en.wikipedia.org/wiki/BSD_licenses). See LICENSE.txt.
