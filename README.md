# Eebydeeby janky automated Gentoo custodian

## Warning! Don't use this!

I mean it kind of works for me, but it's something I hack on for fun and it's
tailored for my machines.

If you use this, you're agreeing to give control of your real-time clock (RTC)
wake to Eebydeeby. It will wake at midnight each night to check for updates and
install them.

It also forces the kernel to run Dracut and `grub-mkconfig` when you `make
install` your kernel. Oh, and it will automatically `make olddefconfig` and
install new kernels as they become available.

So yes, don't use this!
