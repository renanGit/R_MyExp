# Fast Network Simulation Setup (FNSS)
Fast Network Simulation Setup (FNSS) is a toolchain allowing network researchers and engineers to simplify the process of setting up a network experiment scenario. It allows users to execute the following tasks:

* Parse a topology from a dataset, a topology generator or generate it according to a number of synthetic models
* Apply link capacity, link weights, link delays and buffer sizes
* Deploy application stacks
* Generate traffic matrices
* Generate event schedules

The core library, which provides the features listed above, is written in Python. In addition, FNSS provides adapters for importing scenarios in [ns-2](http://www.isi.edu/nsnam/ns/), [ns-3](http://www.nsnam.org/), [Mininet](http://www.mininet.org/), [Omnet++](http://www.omnetpp.org/), [Autonetkit](http://www.autonetkit.org/) and [jFed](http://jfed.iminds.be/) as well in other simulators or emulators through the Python core library itself or the provided Java and C++ libraries.

## Project directory structure
The project files are organized in the following directories:

* core: core Python library
* cpp: C++ API
* java: Java API
* ns3: ns-3 API

## How to use it
The FNSS library comprises a core Python library, which also includes adapters for ns-2, Mininet and Autonetkit and libraries for ns-3 and Java and C++ simulators/emulators.
The core Python library is needed for creating and configuring topologies, traffic matrices and event schedules. Such objects can then be used directly if you intend to use a Python simulator. Otherwise, they can be exported to ns-2, Autonetkit and Mininet or saved to XML files which can then be parsed by the ns-3, Java or C++ libraries.
For detailed information on how to use each component of the toolchain, please refer to the instructions included in the `README` files contained in the root directory of each subcomponent (`core`, `cpp`, `java` and `ns3`) or visit the [FNSS website](http://fnss.github.io).

## License
The core (Python), Java and C++ libraries are licensed under the term of [BSD License](http://en.wikipedia.org/wiki/BSD_licenses). The ns-3 API is instead licensed under the terms of the [GNU GPLv2 license](http://www.gnu.org/licenses/gpl-2.0.html).

## Citing
If you cite FNSS in your paper, please refer to the following pubblication:

L. Saino, C. Cocora, G. Pavlou, [A Toolchain for Simplifying Network Simulation Setup](http://www.ee.ucl.ac.uk/~lsaino/publications/fnss-simutools13.pdf), in *Proceedings of the 6th International ICST Conference on Simulation Tools and Techniques (SIMUTOOLS '13)*, Cannes, France, March 2013

    @inproceedings{fnss,
         author = {Saino, Lorenzo and Cocora, Cosmin and Pavlou, George},
         title = {A Toolchain for Simplifying Network Simulation Setup},
         booktitle = {Proceedings of the 6th International ICST Conference on Simulation Tools and Techniques},
         series = {SIMUTOOLS '13},
         year = {2013},
         location = {Cannes, France},
         numpages = {10},
         publisher = {ICST},
         address = {ICST, Brussels, Belgium, Belgium},
    }

## Bug reports
If you wish to report a bug, please open an issue on the GitHub [issue page](https://github.com/fnss/fnss/issues/). 
When reporting an issue, please try to provide a reproducible example of the problem, if possible.

## Contributions
Any contributions to the project (either bug fixes or new features) are very much welcome. To submit your code, please send a pull request on the [GitHub project page](https://github.com/fnss/fnss/).

If you wish to contribute please follow these guidelines:

 * Write commit messages conforming to [Git convention](http://365git.tumblr.com/post/3308646748/writing-git-commit-messages)
 * If you are sending a fix to open issue, feel free to send a pull request directly,
   but make sure to reference the issue ID that you are fixing in the commit message.
 * If you wish to implement a new feature, we would appreciate if you could contact us first, 
   just in case we are already implementing that same feature, so that we can avoid you a waste of time.
 * Think about writing test cases for your feature or bug fix, if relevant.
   If you can't, don't worry: send your code anyway and we'll work it out.
