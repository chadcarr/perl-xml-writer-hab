pkg_name=xml-writer
pkg_version=0.625
pkg_origin=chadcarr
pkg_description="Habitat package for perl XML::Writer module"
pkg_source=https://cpan.metacpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-${pkg_version}.tar.gz
pkg_deps=(core/perl)
pkg_build_deps=(core/make)

do_build() {
    perl Makefile.PL PREFIX=$pkg_prefix
    make
}

do_check() {
    make test
}

do_install() {
    make install
}
