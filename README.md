# pine64-kernel-gentoo

This is a repo i'm using for my work on pine64 kernel sources on gentoo for PinePhone

* a binary kernel
* an extremely narrow configuration
* an ebuild for kernel sources

```bash
git clone https://github.com/richardanaya/pine64-kernel-gentoo.git
mkdir -p /var/db/repos/gentoo/sys-kernel/pine64-sources/
cp pine64-sources-5.7.9999.ebuild /var/db/repos/gentoo/sys-kernel/pine64-sources/
cat "sys-kernel/pine64-sources" >> /etc/portage/packages.accept_keywords
emerge pine64-sources
cd /usr/src/
rm linux
ln -s linux-5.7.9999-pinx64 linux
cd linux
make pine64_defcd config
make -j4
make -j4 modules_install
make -j4 install

# wait several hours
```
