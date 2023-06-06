# Dawn

Dawn is a custom configuration for installing security packages and tools on Asahi Linux with minimal intrusion into the actual system. This was created out of a necessity to integrate more security options into Asahi Linux. All packages have been tested and should run without any issues. This can change across configurations and infrastructure, so feel free to open an issue if you run into any issues.

## Table of Contents

   * [Installing Asahi Linux](#installing-asahi-linux)
   * [Installing Dawn](#installing-dawn)
   * [Final Notes](#final-notes)
   * [Trademark](#trademarks)
      * [Linux](#linux)
      * [Asahi Linux](#asahi-linux)

NOTE: This script could technically be run on almost any Arch-based distribution, but the configuration will only be tested and maintained for Asahi Linux.

## Installing Asahi Linux

First, make sure you have Asahi Linux installed and that everything is properly working.

You can do this by running their script in your MacBook terminal using the following command:

```zsh
curl https://alx.sh | sh
```

NOTE: Requires macOS version 12.3 or later

I would recommend doing 2 things before running this script.

First, read their alpha release blog post here to better understand what you're doing: https://asahilinux.org/2022/03/asahi-linux-alpha-release/

Second, read the script you're about to run to make sure you're comfortable with all the commands that'll be executed. An easy way to access the script without running it is by just running cURL and redirecting the output, like so:

```zsh
curl https://alx.sh > alx.sh
```

For now, while the team is developing Asahi Linux, I have no intention of interfering or building anything within the core to make it easier to maintain this project. Once the first official release is out, I may go back and build some experimental ideas to see how well they work with everything, but for now, all you need to do is run a single command to add the Dawn config to the Asahi Linux.

## Installing Dawn

This is the easiest method for running the most updated version of Dawn. All you have to do is run the script on the Linux system.

NOTE: Requires sudo to install packages

```bash
curl https://raw.githubusercontent.com/azazelm3dj3d/dawn/main/dawn.sh | sh
```

As an alternative, you can clone the script and run it locally:

```bash
sudo ./dawn.sh
```

NOTE: The `dawn.sh` script is interactive and requires you to answer certain questions to make sure you're comfortable installing everything.

If you would like to include more tools, you can easily include new tools via arguments. Here's an example:

```bash
sudo ./dawn.sh tool1 tool2 tool3 ...
```

This will install all provided tools and skip our hard-coded tools. Leave it blank to install our default commands.

## Final Note(s)

This project is mainly for my personal use, but if it does begin to gain traction and require some form of maintenance outside of my personal needs, I plan to keep it updated with the Asahi Linux development team's efforts, so feel free to open issues or report any bugs while using it. Thanks for checking it out!

## Trademark(s)

This project is for non-commercial use.

### Linux

Linux is the registered trademark of Linus Torvalds.

### Asahi Linux

If the Asahi Linux development team has any issues with this project or questions, feel free to reach out!

- Discord: azazelm3dj3d#9332
- Email: info@azazelm3dj3d.com
