# Limnie (coming soon!)

Limnie: /li.ˈmni/ : "lake" in Greek, plural: Limnes
		
Limnie is a local, highly configurable, flat virtual file system.
Its main use is to act as a local object store subsystem.
It relies on proven, robust SQLite technology and is heavily based on the pdstorage component of the -now defunct- postdoc project ( https://github.com/gregorplop/postdoc )
		
The main features of Limnie are briefly explained below:\

**Local:**\
A Limnie VFS should always be on the same machine as the applications mounting it.
It SHOULD NOT be acessed over a network share or filesystem. Never, ever. It might appear to work at first, but if used inappropriately, you **you will lose your data!**
Multiple applications running on the same machine, accessing a Limnie, is a safe practice.


**Highly configurable:**\
A Limnie VFS consists of one or multiple storage pools that act as entirely seperate "buckets" you can assign data that belong to different domains, clients, or archival projects.
Each pool consists of storage media. Media are the actual containers of the content you push into the VFS.
Media are initialized to a specific (configurable) size and they grow gradually towards that limit but do not exceed it.
When the last medium of a pool becomes full, Limnie can be configured to auto-create the next one at a set location and size.
Media belonging to a certain pool can also be encrypted with a password that applies only to that pool.
Furthermore, access to the entire VFS itself can also be password-protected if needed.
Flat:
Limnie does not store data in a hierarchical manner: There are no folders and subfolders. The namespace for each storage pool is flat.
Every object pushed into a pool just gets an id and is retrievable by using that id. Your application can organized the data in any way it needs.
Virtual File System (in case that needs clarification):
A virtual file system is a file system within your OS's filesystem. 
Externally, it might appear as one or more files, but when mounted properly through the proper code libraries, your application can access their storage space in a way similar to accessing a new drive connected to the computer.
