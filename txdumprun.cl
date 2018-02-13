txdump cfb.hatp16b.*.fits.mag.* mag '(id==1)' > star1maghead
fields star1maghead field=1 > star1mag
!awk '{ d = 10^($1/-2.5); print d}' star1mag > star1flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==2)' > star2maghead
fields star2maghead field=1 > star2mag
!awk '{ d = 10^($1/-2.5); print d}' star2mag > star2flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==3)' > star3maghead
fields star3maghead field=1 > star3mag
!awk '{ d = 10^($1/-2.5); print d}' star3mag > star3flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==4)' > star4maghead
fields star4maghead field=1 > star4mag
!awk '{ d = 10^($1/-2.5); print d}' star4mag > star4flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==5)' > star5maghead
fields star5maghead field=1 > star5mag
!awk '{ d = 10^($1/-2.5); print d}' star5mag > star5flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==6)' > star6maghead
fields star6maghead field=1 > star6mag
!awk '{ d = 10^($1/-2.5); print d}' star6mag > star6flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==7)' > star7maghead
fields star7maghead field=1 > star7mag
!awk '{ d = 10^($1/-2.5); print d}' star7mag > star7flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==8)' > star8maghead
fields star8maghead field=1 > star8mag
!awk '{ d = 10^($1/-2.5); print d}' star8mag > star8flux


txdump cfb.hatp16b.*.fits.mag.* mag '(id==9)' > star9maghead
fields star9maghead field=1 > star9mag
!awk '{ d = 10^($1/-2.5); print d}' star9mag > star9flux


txdump cfb.hatp16b.*.fits.mag.* mag '(id==11)' > star11maghead
fields star11maghead field=1 > star11mag
!awk '{ d = 10^($1/-2.5); print d}' star11mag > star11flux

txdump cfb.hatp16b.*.fits.mag.* mag '(id==12)' > star12maghead
fields star12maghead field=1 > star12mag
!awk '{ d = 10^($1/-2.5); print d}' star12mag > star12flux







































