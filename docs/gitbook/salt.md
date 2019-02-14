# Salt

Salt is used to manage hosts

## Check

```bash
$ make check
jarvis-master:
    True
jarvis-node2.localdomain:
    True
jarvis-node3.localdomain:
    True
jarvis-node1.localdomain:
    True
jarvis-zero1.localdomain:
    True
jarvis-master:
    2018.3.3
jarvis-node2.localdomain:
    2018.3.3
jarvis-node3.localdomain:
    2018.3.3
jarvis-node1.localdomain:
    2018.3.3
jarvis-zero1.localdomain:
    2018.3.2
```

Display hosts:

```bash
$ make hosts
[Jarvis / Salt] Display available hosts
Accepted Keys:
jarvis-master
jarvis-node1.localdomain
jarvis-node2.localdomain
jarvis-node3.localdomain
jarvis-zero1.localdomain
Denied Keys:
Unaccepted Keys:
Rejected Keys:
```


