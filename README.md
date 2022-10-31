# NC Filesystem

We've all been in that situation where we don't know how best to organise our files. It's so easy to just save files all over the place and often with unhelpful names.

Such a fate has befallen the Northcoders central file system and it's your job to give it a good spring clean!

**If you need to reset the Northcoders filesystem at any time just run the** `./reset-filesystem` **script**

---

## **Section 1 - Checks and Reports**

Before we can start organising the Northcoders files there are some things we need to check.

It would also be helpful to create some reports about the filesystem for future use.

### **Task 1** - _Check if a staff file exists_

Within the very helpfully named `stuff` directory there are a number of staff files. Your task is to create a script that checks if files for given staff members are present in the directory.

All staff files follow the same naming convention of `staff-NAME.json` for example the file `staff-Duncan.json`.

Your script should print out a suitable message to the terminal indicating if the staff file can be found.

While you could hard-code the name of the staff member that you wish to search for within the script it would be nicer (and much more reusable) if you could pass a name to the script. For example:

```sh
check-staff-file-exists "Duncan"
# prints "Staff file found" to the terminal
```

See if you can find out how to make use of command line arguments.

**Staff members you could look for:**

    Duncan
    Dave
    Poonam
    Alex
    Verity
    Joe
    Sarah
    David
    Cat

### **Task 2** - _Find cat pictures_

Over the years Northcoders has gathered a wonderful selection of cat pictures. However they are saved all over the place and are not named in a helpful manner.

Having said that these cat pictures are the only `jpeg` files in our file system which could be useful when locating them!

Your job is to create a `cat-pics.txt` file within the `/section-1/reports` directory that lists the file paths to each cat picture. For example:

```txt
> /section-1/reports/cat-pics.txt

./nc-filesystem/stuff/1.jpeg
etc...
etc...
```

> ❗ Make sure you only store the information about files contained within the `nc-filesystem`, **_not_** the nc-filesystem-backup!

The [find](https://manned.org/find) command (and some of it's associated options) could come in very handy here!

---

### **Section 2 - Cleaning up the filesystem**

Now we've run a few checks on the filesystem and created a few reports it's time for a good old ✨*spring clean*✨. Let's sort out the mess.

### **Task 1** - _Delete empty files_

First things first you may or may not have noticed that there are a number of empty files. Who know's why they exist, one theory is that people accidentally create files that they don't need. Or maybe it's a poltergeist, who knows!

Your task is to create a script that finds these empty files and removes them.

There are a number of ways you could check if a file is empty. A good option could be using the [wc](https://manned.org/wc.1) command.

## Extension tasks
