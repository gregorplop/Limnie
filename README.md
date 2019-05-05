# Limnie

Limnie: /li.ˈmni/ : "lake" in Greek, plural: Limnes
		
Limnie is a local, highly configurable, flat virtual file system.
Its main use is to act as a local object store subsystem.
It relies on proven, robust SQLite technology and is heavily based on the pdstorage component of the -now defunct- postdoc project ( https://github.com/gregorplop/postdoc )
		
The main features of Limnie are briefly explained below:

**Local:**\
A Limnie VFS should always be on the same machine as the applications mounting it.
It SHOULD NOT be acessed over a network share or filesystem. It might appear to work at first, but if used in violation of this core spec, **you are risking corruption!**\
Multiple applications running on the same machine, accessing the same Limnie, is considered a safe practice.\
Within the same application, one Limnie session per thread is allowed. This is a major design restriction.

**Highly configurable:**\
A Limnie VFS consists of one or multiple storage pools that act as entirely seperate "buckets" you can assign data that belong to different domains, clients, or archival projects.
Each pool consists of storage media. Media are the actual containers of the content you push into the VFS.
Media are initialized to a configurable size and they grow gradually towards that limit.
When the last medium of a pool becomes full, Limnie can be configured to auto-create the next one at a set location and size limit.
Media belonging to a certain pool can also be encrypted with a password that applies only to that pool.
Furthermore, access to the entire VFS itself can also be password-protected if needed.

**Flat:**\
Limnie does not store data in a hierarchical manner: There are no folders and subfolders. The namespace for each storage pool is flat.
Every object pushed into a pool just gets an ID and is retrievable by using that ID. Your application can organize the data in any way it needs.

**Virtual File System:**\
A virtual file system is a file system within your OS's filesystem(s).
Externally, it might appear as one or more files, but when mounted properly through the proper code libraries, your application can access their storage space in a way similar to accessing a new drive connected to the computer.

## If you're new to Limnie... 
Please refer to the Quick Start Guide found in the LimnieGUI application and read the "CONTRIBUTING.md" file on the repository.\
Remember: The LimnieGUI application is your definite guide on how to integrate Limnie to your own application. After all, that's what Limnie exists for!

## Issues and to-do list

**(04/05/2019)**\
Limnie has just been released as Alpha!
At this point, it has never been battle-tested in the field and might be a bit rough around the edges.\
Nevertheless, its basic functionality is there:\
Create VFS -> Create Pool -> Import object -> Export object\
Also, be aware that all development and testing is done on Windows. If you're evaluating Limnie (and especially LimnieGUI) on a different platform, some behavior/look might be unexpected!

**To-do:**
* Resolve an issue with pushing objects into encrypted pools.
* Add pool open/close method (_open pool = accepting new objects_)
* Write a better UUID generation mechanism, perhaps something supporting specific namespaces.
* Write a CLI application.
* Write a stress-test application: Multiple instances massively pushing known content into a pool and separate multiple instances constantly verifying these objects, in a days-long stress-testing process. The more Limnie is being tested this way, the more mature it can be considered.
