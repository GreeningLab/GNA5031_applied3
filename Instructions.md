# GNA5031 Applied Session 3
**Phylogenetic reconstruction**

## **1. Background**
The application of wastewater-based epidemiology (WBE) to support the global response to the COVID-19 pandemic has shown encouraging outcomes. The accurate, sensitive, and high-throughput detection of severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) in municipal wastewater is critical for wastewater-based epidemiology. In this practical session, we will learn to infer the origin of SARS-CoV-2 genomes that are derived from wastewater surveillance by comparing them against reference genomes. For end product of today's analysis, see the figure below. For more information of wastewater-based analysis of SARS-CoV-2, please refer to:
- https://pubs.acs.org/doi/full/10.1021/acs.estlett.1c00408
- https://pubs.acs.org/doi/full/10.1021/acsestwater.2c00083

![alt](https://pubs.acs.org/cms/10.1021/acsestwater.2c00083/asset/images/large/ew2c00083_0001.jpeg)



For ways to obtain viral RNA from wastewater, see:

![alt](https://pubs.acs.org/cms/10.1021/acs.estlett.1c00408/asset/images/medium/ez1c00408_0003.gif) 


## **2. Learning Objectives**:
**Today, we will be generating a simplified version of a phylogenetic tree to show the origin of SARS-CoV-2 using wastewater-based epidimeology coupled with phylogenetic analysis.**

At the conclusion of this session, students are expected to:
 - Understand a genome file (with extension ".fasta")
 - Align genomes using MAFFT
 - Trim genomes using TrimAL
 - Infer phylogenetic tree using IQTREE
 - Visualize phylogenetic tree using ITOL

## **3. Prerequisite**: 
### 3.1 Virtual machines (VMs)

You have been provided credentials that will allow you to access these virtual machines 24/7. To access any remote server, we use the terminal and the ssh command. If you are on a mac or linux based PC, you will have terminal in-built. If you are on a windows-based PC, please download PuTTY.
To sign up for a VM please enter your name next to a line in this Google Doc: https://docs.google.com/spreadsheets/d/1H9k6jPfAR96m_0iKUA_sbLZEUzDmlME8yHlfLmAKTow/edit?usp=sharing

**Note**: You cannot share a VM, please jot down your virtual machine credentials.

Accessing virtual machines using **PuTTY** (Windows user)

If you are using Windows, you will access your virtual machines using PuTTY. In the hostname (or IP address) box, enter the hostname that you were provided. Ensure the connection type is SSH. Click open. You will be prompted to enter your username and password in the terminal window. Enter your credentials and click enter. Note you will not see the characters as they are typed. You are now in your home directory on the VM.

Accessing virtual machines using the **terminal** app (Mac user)

To access your VM using the terminal app on Mac, search for the terminal app using the search bar in the top right-hand corner of your computer. Type the following command following the convention of `ssh username@hostname` where `username` is your username at Monash, and `hostname` is the hostname provided for this course. Click enter, you will be promted for a password. Enter your Monash password and click enter. Note you will not see the characters as they are typed. You are now in your home directory on the VM.

Example:
```
ssh -x gnii0001@gna5031s1-gnii0001-01.rep.monash.edu
```

### The Monash VPN
Due to security constraints, our virtual machines can only be accessed from within the Monash network. If you are offsite, you will need to first connect to the Monash Virtual Private Network (VPN). Detailed instructions can be found on the following website:
https://www.monash.edu/esolutions/network/vpn
 
Install the VPN software and test your connection.

### Register at ITOL
Note: Please register for a free account prior to the practical session, at:
https://itol.embl.de/

## **4. Hands-on component one (local)** 
**Note** : This is on your local PC (i.e. not with virtual machine)

### 4.1 Prepare local copy of data.

Press **Download ZIP** under **Code** from the following page:
https://github.com/ganiatgithub/xxx
Decompress

Install **Seaview** for sequence and alignment visualisation:
https://doua.prabi.fr/software/seaview

Install **Sublime Text 2** for working with text:
https://www.sublimetext.com/2
**Note**: Not restricted to a single text editor; if you have BBEdit from session, feel free to use it. 

### 4.2 Visualize sequence data using Seaview
Under filder data_pregenerated:

Drag and drop `input.fasta` into Seaview
Observe nucleotides and colors. 

### 4.3 Visualize aligned data using Seaview
Drag and drop `input.msa.fasta` into Seaview
Observe nucleotides and colors. 

### 4.4 Visualize aligned and trimed data using Seaview
Drag and drop `input.msa.trimmed.fasta` into Seaview
Observe nucleotides and colors. 

### 4.5 Extra, inspect generated phylogenetic tree file using a text editor
Inspect `input.msa.trimmed.treefile` 

### 4.5 Visualization of phylogenetic trees
**After 5.4 is complete**
iTOL (Interactive Tree Of Life) is a web-based tool that allows users to visualize and explore phylogenetic trees and other hierarchical data sets. It was developed by Ivica Letunic and Peer Bork at the European Molecular Biology Laboratory (EMBL) in Heidelberg, Germany, and has become a popular tool in the field of evolutionary biology and comparative genomics.

With iTOL, users can customize the display of their tree using a range of options, such as changing the layout, adding labels and annotations, and highlighting specific clades or branches. The tool also supports the integration of additional data sets, such as functional annotations or environmental information, which can be overlaid onto the tree to provide a more comprehensive view of the relationships between different organisms.

In addition to visualizing phylogenetic trees, iTOL can also be used to explore other types of hierarchical data sets, such as gene ontologies, protein domains, and metabolic pathways. The tool has a user-friendly interface and is freely available for use online, making it accessible to researchers and educators around the world.

Webpage:https://itol.embl.de/

Obtain the generated tree file (use pre_generated file if not ready)

For Mac user:

```
cd ~/Desktop 
mkdir tree_file
cd tree_file
scp user_name@gna5031s1-user_name-01.rep.monash.edu:/XXX/data/input.msa.trim.treefile .
```

For Windows user, use the pre-generated tree file - `input.msa.trim.treefile`

Go to ITOL webpage (https://itol.embl.de/); press the following: 

My Trees => Tree upload (drag and drop) => click on `input.msa.trim.treefile` to enter the tree

After tree being uploaded, explore:
- circular or rectangular tree format
- Labels and Lable options
- Advanced options
- Export options

Annotate tree lables with pre-generated file `color.strip.txt`
Explore the following sections:
- Mandatory settins
- Actual data

**Questions**
- What is the meaning of `MW240742.1 rgba(104,2,63,0.7) North America`?
- What is the meaning of `RFPL_1 rgba(255,215,0,0.7) RFPL_1`?

Export a pdf file for the rendered tree

Further exploration of tree styles at:
https://itol.embl.de/gallery.cgi

## **5. Hands-on component tow (virtual machine)** 
**Note**: replace user_name with your own user name in from the following scripts

### 5.1 access to virutal machine, setting up directory for analysis

```
ssh -x user_name@gna5031s1-user_name-01.rep.monash.edu
```
Make sure you start in your home directory using tilde "~", which indicates home directory in Linux systems

```
cd ~
```

Download course material using `git clone`

```
git clone https://github.com/ganiatgithub/xxx
```

Install Mamba, and related softwares
Mamba is a package manager for the Python programming language that aims to be a faster and more reliable alternative to the popular package manager, conda. Mamba uses the same package and environment specification formats as conda, so it is fully compatible with existing conda environments and packages. In simpler words, it is tool for software installations. 
```
cd ~/XXX/tools
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh
bash Mambaforge-$(uname)-$(uname -m).sh -p ~/session3/tools/mamgaforge

```
**Note**: yes to all prompts during mamba installation. Also, need to exit and re-login to take effect
```
exit
ssh -x user_name@gna5031s1-user_name-01.rep.monash.edu
```

Create an isolation environment for phylogenetic analysis, install software MAFFT, TrimAL and IQTREE

```
mamba create -y -n phylogenetics
mamba activate phylogenetics
mamba install -c bioconda iqtree # press y and enter to confirm changes
mamba install -c bioconda mafft # press y and enter to confirm changes
mamba install -c bioconda trimal # press y and enter to confirm changes
```
Test whether installation is successful
```
iqtree -h
mafft -h
trimal -h
```
You're ready to go if software information are displayed.

### 5.2 Align sequences

Sequence alignment is a fundamental step in many bioinformatics applications, including phylogenetic inference and others. It allows us to identify regions of similarity and difference between two or more sequences. By aligning sequences, we can identify conserved regions, mutations, insertions, and deletions, among others. This information is useful for understanding the evolutionary relationships among the sequences, identifying functional domains, and detecting genetic variations that may be associated with disease or other phenotypes.

Common tools for alignment: MAFFT (https://mafft.cbrc.jp/alignment/software/)

```
mafft --preservecase --auto --reorder --thread -1 input.fasta > input.msa.fasta 
# 14m49.445s tested
```
### 5.3 Trim alignment
Trimming alignment is a common step in the process of inferring phylogenetic trees from molecular sequence data. The main reason for trimming alignment is to remove any poorly aligned or ambiguous regions in the sequence data that may affect the accuracy of the phylogenetic inference.
Common tools for trimming: trimal (http://trimal.cgenomics.org/)

```
time trimal -in input.msa.fasta  -out input.msa.trim.fasta -automated1
# 0m8.611s tested
```
### 5.4 Phylogenetic inference
Tree inference, also known as phylogenetic inference, is the process of reconstructing the evolutionary relationships among different organisms or groups of organisms based on their molecular or morphological characteristics. The resulting tree structure is called a phylogenetic tree, and it represents the evolutionary history of the group under study. The goal of tree inference is to reconstruct a tree that best explains the observed similarities and differences among the sequences or traits, while minimizing the number of evolutionary changes required to explain the data. 
A common tool is IQTREE (http://www.iqtree.org/).
```
iqtree -s input.msa.trim.fasta -alrt 1000 -bb 1000 -m TEST -nt 4
# 2m48.720s tested

-s for input
-arlt for Replicates for SH approximate likelihood ratio test. The SH (Shimodaira-Hasegawa) test is a statistical test used to evaluate the support for different branches in a phylogenetic tree. Don't mind it for now.
-B for Replicates for ultrafast bootstrap (1000 is a commonly used number).
-m for model select. TEST is by testing several models.

```
After this is done, go back to **4.5**

When all analysis is done, exit analysis environment and exit virtual machine for good practice
```
mamba activate phylogenetics
exit
```
