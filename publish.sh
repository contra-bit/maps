tar --exclude='.token' --exclude='publish.sh' --exclude='.git/*' --exclude='site.tar.gz' -C . -cvz . > site.tar.gz
curl --oauth2-bearer $(cat .token) \
    -Fcontent=@site.tar.gz \
    https://pages.sr.ht/publish/s0.srht.site
rm site.tar.gz -f
