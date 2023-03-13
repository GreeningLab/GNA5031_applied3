### how to scp

# Think of scp as a mixture between ssh and cp. You want to run scp commands from YOUR machine, not the VM.
# By running scp, you essentially login into the VM, take the file you are interested in from the VM and then copy it to a local location on your computer.

# There are slight differences between running scp on windows and on macos/linux

# On macos/linux

# 1) Open a new terminal window, different to the one that is logged into the VM
# 2) Move into the directory you want to copy the file into
cd ~/Desktop   # for instance
# 3) You then run the scp command as combination of copy and ssh
scp <your-authcate>@gna5031s1-<your-authcate>-01.rep.monash.edu:~/session2/<the-file-that-you-want> .
# As you can see, the first part of this command is almost identical to the ssh you use to login into the VM, just replacing ssh with scp.
# The second part (after the colon ":") signifies the directory that our file is in, alongside the name of the file (ie. the absolute location of the file)
# We then use the dot (".") to signify that we want the file to be copied into the current directory on our local machine (this will be desktop since I wrote cd ~/Desktop earlier) but this would be an identical command:
scp <your-authcate>@gna5031s1-<your-authcate>-01.rep.monash.edu:~/session2/<the-file-that-you-want> ~/Desktop
# 4) You may then be asked for a prompt saying yes/no --- type in yes and hit enter
# 5) You will then be asked for a password - this will be the same password you used to ssh into the VM originally (ie monash password)


# On windows
# On windows, there is a minor difference:
# 1) First open command prompt and identify the directory/folder you want to scp the file into (I will use C:\Users\ as an example)
# 2) You then run almost the same scp command as on mac/linux, but you must enclose the directory on your local machine in double-quotes:
scp <your-authcate>@gna5031s1-<your-authcate>-01.rep.monash.edu:~/session2/<the-file-that-you-want> "C:\Users"

# 4) You may then be asked for a prompt saying yes/no --- type in yes and hit enter
# 5) You will then be asked for a password - this will be the same password you used to ssh into the VM originally (ie monash password)


