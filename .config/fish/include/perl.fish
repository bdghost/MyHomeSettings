
if [ -d /usr/lib/perl5/site_perl/bin ]
    set PATH $PATH /usr/lib/perl5/site_perl/bin
end
if [ -d /usr/bin/vendor_perl ]
    set PATH $PATH /usr/bin/vendor_perl
end
if [ -d /usr/lib/perl5/vendor_perl/bin ]
    set PATH $PATH /usr/lib/perl5/vendor_perl/bin
end
if [ -d /usr/lib/perl5/core_perl/bin ]
    set PATH $PATH /usr/lib/perl5/core_perl/bin
end

set -gx PERL_LWP_SSL_VERIFY_HOSTNAME 0

# vim:ts=4:sw=4:et:ft=fish:
