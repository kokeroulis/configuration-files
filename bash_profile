#KDEDIR=~/kde4  # Such as ~/kde by default.
#KDEDIRS=$KDEDIR
#PATH=$KDEDIR/bin:$QTDIR/bin:$PATH
#MANPATH=$QTDIR/doc/man:$MANPATH

#QT_PLUGIN_PATH=/home/kokeroulis/.kde/lib/kde4/plugins/:/home/kokeroulis/kde4/lib/kde4/plugins/:/usr/lib64/kde4/plugins

# Act appropriately if LD_LIBRARY_PATH is not already set.
#if [ -z $LD_LIBRARY_PATH ]; then
#  LD_LIBRARY_PATH=$KDEDIR/lib
#else
#  LD_LIBRARY_PATH=$KDEDIR/lib:$LD_LIBRARY_PATH
#fi

#export KDEDIRS KDEDIR PATH LD_LIBRARY_PATH QT_PLUGIN_PATH

#USE THE ABOVE CODE, ONLY IF YOU WANT TO BUILD KDE UNDER A LOCAL PREFIX

export PATH=$PATH:/home/kokeroulis/nodejs/bin/

#make vim able to copy and paste to clipboard
if [ -e /usr/bin/gvim ]; then alias vim='/usr/bin/gvim -v'; fi


#keychain, use the lines below only if the athorization is failing
#if [ "$(ssh-add -L)" == "The agent has no identities." ]; then
#     echo "Please type your password"
#     ssh-add ~/.ssh/id_rsa
#fi

if [ "$(id -u)" == "1000" ]; then
    /usr/bin/keychain ~/.ssh/id_rsa
     source ~/.keychain/$HOSTNAME-sh > /dev/null
fi
