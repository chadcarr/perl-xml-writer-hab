pkg_name=perl-xml-writer
pkg_origin=chadcarr
pkg_maintainer="Chad Carr <ccarr@franzdoodle.com>"
pkg_version=0.625
pkg_license=(unrestricted)
pkg_description="Perl XML::Writer module"
pkg_upstream_url=https://metacpan.org/release/XML-Writer
pkg_source=https://cpan.metacpan.org/authors/id/J/JO/JOSEPHW/XML-Writer-$pkg_version.tar.gz
pkg_shasum=e080522c6ce050397af482665f3965a93c5d16f5e81d93f6e2fe98084ed15fbe
pkg_deps=(core/perl)
pkg_build_deps=(core/make)

# Unpack to $pkg_name-$pkg_version; default habitat behavior unpacks tarball
# unmodified (XML-Writer-0.625), but subsequent callbacks start by default in
# $pkg_name-$pkg_version, so we unpack there to avoid later overrides.
do_unpack() {
    local source_file=$HAB_CACHE_SRC_PATH/$pkg_filename
    local unpack_dir=$HAB_CACHE_SRC_PATH/$pkg_name-$pkg_version
    build_line "Unpacking $pkg_filename to custom cache dir: $unpack_dir"
    mkdir -p $unpack_dir
    tar xf $source_file --strip 1 --directory $unpack_dir
}

do_build() {
    perl Makefile.PL PREFIX=$pkg_prefix
    make
}

do_check() {
    make test
}