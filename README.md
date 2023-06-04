# Tsuki

### ToC

   * [Installing Asahi Linux](#installing-asahi-linux)
   * [Installing Tsuki](#installing-tsuki)
      * [Wiki](#wiki)
   * [Why Tsuki?](#why-tsuki)
   * [Trademark](#trademarks)
      * [Linux](#linux)
      * [Asahi Linux](#asahi-linux)

NOTE: This script could technically be ran on almost any Arch-based distribution.

## Installing Asahi Linux

First, make sure you have Asahi Linux installed and that everything is properly functioning.

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

For now, while the team is developing Asahi Linux, I have no intention of interfering or building anything within the core to make it easier to maintain this project. Once the first official release is out, I may go back and build some experimental ideas to see how well they work with everything, but for now, all you need to do is run a few commands to convert `Asahi -> Tsuki`. At the end of the day, it's just Asahi Linux with a focus on security.

## Installing Tsuki

This is the easiest method for running the most updated version of Tsuki. All you have to do is run the script on the Linux system.

```bash
curl https://raw.githubusercontent.com/azazelm3dj3d/tsuki/master/tsuki.sh | sh
```

This repository is a mirror for the full configuration, so you can just as easily install from the source if you want to clone the repository and run the script that way.

NOTE: The `tsuki.sh` script is interactive and requires you to answer certain questions to make sure you're comfortable installing everything.

## Final Note(s)

This project is mainly for my personal use, but if it does begin to gain traction and require some form of maintenance outside of my personal needs, I plan to keep it updated with the Asahi Linux development team's efforts, so feel free to open issues or report any bugs while using it. Thanks for checking it out!

## Trademark(s)

This project is for non-commercial use.

### Linux

Linux is the registered trademark of Linus Torvalds.

### Asahi Linux

If the Asahi Linux team would like this repository removed, I have no plans to oppose that and will respect their decision. Feel free to reach out to me if you have any issues.

- Discord: azazelm3dj3d#9332
- Email: info@azazelm3dj3d.com
