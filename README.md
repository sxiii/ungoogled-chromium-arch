# ungoogled-chromium-arch
Docker file that allows you to build ungoogled chromium on arch and for arch (and manjaro) 

# How to use
1. Download repo: `git clone https://github.com/sxiii/ungoogled-chromium-arch`
2. Enter folder: `cd ungoogled*`
3. Build ungoogled chromium inside arch docker container: `docker build -t ungoogled-chromium-arch .`
4. When build succeed, you will find files inside '/home/compiler/ungoogled-chromium*.tar.xz files. Take and install them into arch with `sudo pacman -U ungoogled*`

# Help
If you got a bug or need any help; please issue an... issue.
