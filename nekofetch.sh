f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

# sysinfo
k='#'
kernel="$(uname -r | cut -d '-' -f1)"

a='#'
architecture="$(uname -m)"

r='#'
resolution="$(xwininfo -root | grep geometry | awk '{print $2}' | cut -d + -f1)"

sh='#'
shell=$(basename $SHELL)

#  /\_/\
# (=^.^=)
#  (")(")_/
tput clear
cat << EOF
             
             $f3$k $echo Kernel version >>  $t$kernel
   /\_/\     $f4$a $echo Architecture >> $t$architecture 
  (=^.^=)    $f2$sh $echo Shell >>  $t$shell
   (")(")_/  $f5$r $echo Resolution >> $t$resolution
             
                    
EOF
