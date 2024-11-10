# Thank you Microsoft!  Thank you PowerShell!  Thank you Docker!
FROM mcr.microsoft.com/powershell AS powershell

# Set the module name to the name of the module we are building
ENV ModuleName=4bitcss
ENV InstallAptGet="build-essential","ruby-full","bundler","git","curl","ca-certificates","libc6","libgcc1"
ENV InstallModule="ugit","PSJekyll"
ENV InstallRubyGem="jekyll"

# Copy the module into the container
RUN --mount=type=bind,src=./,target=/Initialize /bin/pwsh -nologo -command /Initialize/Container.init.ps1
# Set the entrypoint to the script we just created.
ENTRYPOINT [ "/bin/pwsh","-nologo","-noexit","-file","/Container.start.ps1" ]