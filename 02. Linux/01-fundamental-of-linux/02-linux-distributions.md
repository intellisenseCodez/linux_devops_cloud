# Linux Distributions

The kernel decides who will use a resource, for how long and when.You can download the Linux kernel from the official web site. However, the Linux kernel itself is useless unless you get all the applications such as text editors, email clients, browsers, office applications, etc. Therefore, someone came up with idea of a Linux distribution. A typical Linux distribution includes:

- Linux kernel.
- GNU application utilities such as text editors, browsers etc.
- Collection of various GUI (X windows) applications and utilities.
- Office application software.
- Software development tools and compilers.
- Thousands of ready to use application software packages.
- Linux Installation programs/scripts.
- Linux post installation management tools daily work such as adding users, installing applications, etc.
- And, a Shell to glue everything together.

Linux distributions (distros) are different versions of Linux that package the Linux kernel with various software, system utilities, and package managers. Each distro is designed for different use cases, such as personal computing, server management, or security.

## Three Major Linux Distribution Families
![Linux Distros Families](/resources/images/linux-distros-families.png)

### The Red Hat Family
    
Red Hat Enterprise Linux (RHEL) heads the family that includes CentOS, CentOS Stream, Fedora and Oracle Linux.

Fedora has a close relationship with RHEL and contains significantly more software than Red Hat's enterprise version. One reason for this is that a diverse community is involved in building Fedora, with many contributors who do not work for Red Hat. Furthermore, it is used as a testing platform for future RHEL releases.

**Key Facts About the Red Hat Family**

Some of the key facts about the Red Hat distribution family are:

- Fedora serves as an upstream testing platform for RHEL.
- CentOS is a close clone of RHEL; in fact, CentOS has been part of Red Hat since 2014.
- It supports multiple hardware platforms.
- It uses `dnf`, the RPM-based package manager (covered in detail later) to install, update, and remove packages in the system.
- RHEL is widely used by enterprises that host their own systems.

### The SUSE Family

The relationship between SUSE (SUSE Linux Enterprise Server, or SLES) and openSUSE is similar to the one described between RHEL, CentOS, and Fedora.

We use openSUSE as the reference distribution for the SUSE family, as it is available to end users at no cost. Because the two products are extremely similar, the material that covers openSUSE can typically be applied to SLES with few problems.

**Key Facts About the SUSE Family**
Some of the key facts about the SUSE family are listed below:

- SUSE Linux Enterprise Server (SLES) is upstream for openSUSE.
- It uses the RPM-based zypper package manager (we cover it in detail later) to install, update, and remove packages in the system.
- It includes the YaST (Yet Another Setup Tool) application for system administration purposes.
- SLES is widely used in retail and many other sectors.

### The Debian Family

The Debian distribution is upstream for several other distributions, including Ubuntu. In turn, Ubuntu is upstream for Linux Mint and several other distributions. It is commonly used on both servers and desktop computers. Debian is a pure open source community project (not owned by any corporation) and has a strong focus on stability.

Debian provides by far the largest and most complete software repository to its users of any Linux distribution.

Ubuntu aims at providing a good compromise between long-term stability and ease of use. Since Ubuntu gets most of its packages from Debian’s stable branch, it also has access to a very large software repository. For those reasons, we will use Ubuntu LTS (Long Term Support) as the reference to Debian family distributions for this course.

**Key Facts About the Debian Family**

Some key facts about the Debian family are listed below:

- The Debian family is upstream for Ubuntu, and Ubuntu is upstream for Linux Mint and others.
- It uses the DPKG-based APT package manager (using `apt`, `apt-get`, `apt-cach`e, etc., which we cover in detail later) to install, update, and remove packages in the system.
- Ubuntu has been widely used for cloud deployments.
- While Ubuntu is built on top of Debian and is GNOME-based under the hood, it differs visually from the interface on standard Debian, as well as other distributions.

Here are some popular Linux distributions:

- **Debian** – A very stable and reliable distro, often used as a base for other distros like Ubuntu.

- **Ubuntu** – One of the most beginner-friendly distros, widely used for personal and server use. It has great community support.

- **CentOS** (discontinued, replaced by AlmaLinux/Rocky Linux) – Previously a popular choice for servers, based on Red Hat Enterprise Linux (RHEL).

- **Fedora** – A cutting-edge distro that introduces new features before they reach RHEL.

- **Arch Linux** – A lightweight, rolling-release distro for advanced users who like customization.

- **Kali Linux** – Designed for cybersecurity and penetration testing.

- **Alpine Linux** – A lightweight, security-focused distro often used in containers.


## Important Linux Terminologies

- **Kernel:**
    
    ![Linux Kernel](/resources/images/kernel.png)

    This is consider the brain of the Linux Operating Systems. It controls the hardware and makes the hardware interact with the applications. An example of a kernel is the `Linux Kernel`. The most recent Linux kernel and past Linux Kernels can be found at the [kernels.org](https://www.kernel.org/) website.

- **Distributions:**

    A Distribution also known as **Distros** is a collection of programs combined with he Linux Kernel to make up a Linux-based Operating System. Some common examples of a distribution are Red Hat Enterprise Linux (REHL), Fedora, Ubuntu and Gentoo.

- **Boot Loader:**

    The Boot Loader is a program that boots the Linux Operating System. Two examples of Boot Loader are:
    - GRUB
    - ISOLINUX

- **service:**

    A Service is a program that runs as a background process. Some examples of the service are `httpd` (web server), `ftpd` (FTP server), `nsfd` (Network File System (NFS) server), `ntpd` (Network Time Protocol Server), `named` (Name server), `dhcpd` (DHCP server) etc.

- **File System:**

    ![File System](/resources/images/filesystem.png)

    A File System is a method for storing and organizing files in Linux. Some examples of file system is ext3, ext4, FAT, XFS and Btrfs.

- **X Window System:**

    ![X Window System](/resources/images/X-window-system.png)

    The X Window System provides the standard toolkit and protocol to build Graphical User Interfaces on nearly all Linux Sytems.

- **Desktop Environment:**

    ![Destop Environment](/resources/images/desktop-environments.png)

    The Desktop Environment is the Graphical User Interface on top of the operating system. GNOME, KDE, Xfce and Fluxbox are examples of some of the desktop environment.

- **Command Line:**

    ![Command Line](/resources/images/commandline.png)

    The Command Line is an interface for typing commands on top of the operating system.

- **Shell:**

    The Shell is the command line interpreter that interprets the command line input and instruct the operating system to perform any necessary tasks and commands. For example: `bash`, `zsh`, and `tcsh`

## Useful References:
- Linux Kernel Source code: http://git.kernel.org/

- Mirror of Linux Kernel on GitHub: http://github.com/torvalds/linux
