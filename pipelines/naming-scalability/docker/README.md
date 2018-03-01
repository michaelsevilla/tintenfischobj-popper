# Namespace Scalability

This container runs Empress objecter functions. These functions translate
queries into a list of objects. This container only has the dependencies for
running the objecter functions so you need to obtain the actual source code.

## Setup

Launch container and point it to the source code:

```bash
$ docker run -it --rm \
    --name=objecter \
    -v <PATH TO SRC>:/root \
    michaelsevilla/objecter
```

This compiles the code and drops you into a container. From there, you can run
the three functions.

## Functions

To run the Lua equivalent of a class:

```bash
root@04b948cbc90b:~/build# ./class_example
```

The other two examples use pseudo classes, which use a serialization function
to dump/reconstruct a user's function to/from a string. User functions are
stored as Lua tables and take up a lot of space when converted to a string. To
serialize the function and sent it separately:

```bash
root@04b948cbc90b:~/build# ./funct_separate_example
```

To do it via a pseudo class:

```bash
root@04b948cbc90b:~/build# ./pseudo_class_example
```

EOF
