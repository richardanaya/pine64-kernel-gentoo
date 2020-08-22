# pine64-kernel-gentoo

This is a repo i'm using for my work on pine64 kernel sources on gentoo for PinePhone

* a binary kernel
* an extremely narrow configuration
* an ebuild for kernel sources

```
git clone https://github.com/richardanaya/pine64-kernel-gentoo.git
mkdir -p /var/db/repos/gentoo/sys-kernel/pine64-sources/
cp pine64-sources-5.7.9999.ebuild /var/db/repos/gentoo/sys-kernel/pine64-sources/
cd /var/db/repos/gentoo/sys-kernel/pine64-sources/
ebuild pine64-sources-5.7.9999.ebuild manifest clean unpack compile install qmerge merge
```
