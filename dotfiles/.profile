#MAVEN_HOME=/Volumes/Local/mgoedecke/apache-maven-3.0.5
#export MAVEN_HOME
#MAVEN_OPTS="-Djavax.net.ssl.trustStoreType=KeychainStore -Djavax.net.ssl.trustStoreProvider=Apple -Xmx2048m -XX:MaxPermSize=1024m" 
#export PATH=/opt/subversion/bin:$MAVEN_HOME/bin:$PATH
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_71.jdk/Contents/Home
#export MAVEN_OPTS
#export PATH=/Volumes/local/karma/node_modules/mkdirp/bin:/Volumes/local/karma/node_modules/karma/bin:/Volumes/local/karma/node_modules/protractor/bin:/Users/mgoedecke/.gem/ruby/1.8/bin:/Volumes/local/karma/node_modules/bower/bin:$PATH

export PATH=$PATH:/Applications/nocker.app/Contents/Resources/bin:/Volumes/Local/mgoedecke/apps/node-v6.11.0-darwin-x64/bin
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

##########################################
# Language setting
##########################################
export LANG=en_DE.UTF-8
export LC_ALL=C

##########################################
# Common Aliases
##########################################
alias reload_profile='source ~/.profile'
alias edit_profile='vim ~/.profile'

alias ll='ls -laG'
alias mv='mv -i'
alias cp='cp -i'
alias rmy='rm'
alias rm='rm -i'
alias lx='ll -BX' # sort by extension
alias lz='ll -rS' # sort by size
alias lt='ll -rt' # sort by date
alias grep='grep --color=auto'
alias vi='vim'
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias disk_usage='du -h . | grep "^[0-9\.]\+G"'
alias -- --="cd -"

if [ -x /usr/bin/colordiff ]
then
	alias diff='colordiff'
fi

alias tree="find . -type d | sed -e 1d -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|-/'"

alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

alias ..='cd ..'
alias h='history | grep $1'
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pss='ps -efA | grep $1'

alias sup='svn up $1'
alias sco='svn co $1'

alias wttr='curl http://wttr.in/braunschweig'

##########################################
# CHECKPOINT MOBILE
##########################################
alias checkpoint_stop='sudo launchctl unload /Library/LaunchDaemons/com.checkpoint.epc.service.plist'
alias checkpoint_start='sudo launchctl load -w /Library/LaunchDaemons/com.checkpoint.epc.service.plist'

##########################################
# PROXY
##########################################
alias proxy="ssh -fN proxy"
alias proxyc="ssh -O check proxy"
alias proxyoff="ssh -O exit proxy"

##########################################
# NAV
##########################################
alias cddocu='cd ~/Documents'
alias cdproggen='cd ~/Proggen'
alias cdsvn='cd ~/Proggen/vcs/svn'
alias cdgit='cd ~/Proggen/vcs/git'
alias cdgitgod='cd ~/Proggen/vcs/git/GOD'
alias cdgitmy='cd ~/Proggen/vcs/git/MYGIT'
alias cdgitplay='cd ~/Proggen/vcs/git/PLAYGROUND'
alias cdapps='cd ~/apps'
alias cdserver='cd ~/applicationServer'
alias cddown='cd ~/Downloads'

##########################################
# ODX
##########################################
alias sup_odx='svn up ~/Proggen/vcs/svn/ODX_3/ODX'
alias sup_odxentwicklung='svn up ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung'
alias sup_odxdoku='svn up ~/Proggen/vcs/svn/ODX_3/ODX/02_Projektmanagement'
alias sup_odxlieferung='svn up ~/Proggen/vcs/svn/ODX_3/ODX/03_Lieferung'
alias sco_odx='svn co https://intranet.god.de/svn/system42/ODX/'
alias odx='cd ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung'
alias odx4='cd ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase04'
alias odx5='cd ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase05'
alias odxws='cd ~/Proggen/vcs/svn/ODX_3/ODX/02_Projektmanagement/04_Dokumentation/02_Technische_Dokumentation/ODX-WebService-Definition'
alias odxdoku='cd ~/Proggen/vcs/svn/ODX_3/ODX/02_Projektmanagement'
alias odxlieferung='cd ~/Proggen/vcs/svn/ODX_3/ODX/03_Lieferung'
alias odxlieferung4='cd ~/Proggen/vcs/svn/ODX_3/ODX/03_Lieferung/04_Phase'
alias odxlieferung5='cd ~/Proggen/vcs/svn/ODX_3/ODX/03_Lieferung/05_Phase'
alias stop_wl='/Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/bin/server stop'
alias start_wl='/Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/bin/server start'
alias build_odx4='mvn package -P prod -DskipTests -f ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase04/odxserviceParent'
alias build_odx5='mvn package -P prod -DskipTests -f ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase05/odxserviceParent'
function copy_odx4() {
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservice.war 
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxserviceVaxChecker.war 
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservicePdxGenerator.war 

   cp ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase04/odxserviceParent/odxserviceGui/target/odxservice.war /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservice.war 

   cp ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase04/odxserviceParent/odxserviceVaxChecker/target/odxserviceVaxChecker.war /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxserviceVaxChecker.war
}
function copy_odx5() {
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservice.war 
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxserviceVaxChecker.war 
   /bin/rm  /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservicePdxGenerator.war 

   cp ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase05/odxserviceParent/odxserviceGui/target/odxservice.war /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservice.war 

   cp ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase05/odxserviceParent/odxserviceVaxChecker/target/odxserviceVaxChecker.war /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxserviceVaxChecker.war
   
   cp ~/Proggen/vcs/svn/ODX_3/ODX/01_Entwicklung/branches/phase05/odxserviceParent/odxservicePdxGenerator/target/odxservicePdxGenerator.war /Volumes/Local/mgoedecke/applicationServer/wlp-2nd-javaee7-8.8.5.8/wlp/usr/servers/defaultServer/dropins/odxservicePdxGenerator.war
}

#########################################
# ASCIIDOC
#########################################
alias adoctor='/usr/local/bin/asciidoctor'
alias adoc='python ~/Proggen/vcs/git/PLAYGROUND/doc/asciidoc-8.6.9/asciidoc.py'
alias a2x='python ~/Proggen/vcs/git/PLAYGROUND/doc/asciidoc-8.6.9/a2x.py'

#########################################
# MONGO DB
#########################################
alias mongo_start_macos_service='brew services start mongodb-community'
alias mongo_start_background_process='mongod --config /usr/local/etc/mongod.conf --fork'
alias mongo_ps='ps aux | grep -v grep | grep mongod'

#########################################
# NPM
#########################################
# Lists all node module folders
alias lnm='find . -name '\''node_modules'\'' -type d -prune|xargs du -sh'
# Deletes all node module folders
alias dnm='find . -name '\''node_modules'\'' -type d -prune -exec rm -rf '\''{}'\'' +'

#########################################
# OPENSSL
#########################################
# Check CRT (Public Key)
function openssl_list_crt() {
	if [ -z "${1}" ]; then
		echo "Usage: openssl_list_crt 1_CRT_LOCATION";
		return 1;
	fi;
	openssl x509 -in ${1} -text -noout
}

# Check KEY (Private Key)
function openssl_list_key() {
	if [ -z "${1}" ]; then
		echo "Usage: openssl_list_key 1_KEY_LOCATION";
		return 1;
	fi;
	openssl rsa -in ${1} -check
}

# Check KEY (Private Key)
function openssl_list_p12() {
	if [ -z "${1}" ]; then
		echo "Usage: openssl_list_p12 1_KEYSTORE_LOCATION";
		return 1;
	fi;
	openssl pkcs12 -info -in ${1}
}

# Generate P12 Keystore
function openssl_generate_p12() {
	if [ -z "${1}" -o -z "${2}" -o -z "${3}" -o -z "${4}" ]; then
		echo "Usage: openssl_generate_p12 1_CERT_LOCATION 2_KEY_LOCATION 3_ALIAS_NAME 4_KEYSTORE_TARGET_LOCATION";
		return 1;
	fi;
	openssl pkcs12 -export -in ${1} -inkey ${2} -name ${3} -out ${4}
}


# Generate a self-signed certificate 
function openssl_generate_cert() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: openssl_generate_cert 1_KEY_TARGET_LOCATION 2_CERT_TARGET_LOCATION";
		return 1;
	fi;
	openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout ${1} -out ${2}
}

# Generate a certificate signing request (CSR) for an existing private key
function openssl_generate_csr() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: openssl_generate_csr 1_KEY_LOCATION 2_CSR_TARGET_LOCATION";
		return 1;
	fi;
	openssl req -out ${2} -key ${1} -new
}

# Convert DER cert to PEM 
function openssl_convert_der_to_pem() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: openssl_convert_der_to_pem 1_CRT_LOCATION 2_PEM_TARGET_LOCATION";
		return 1;
	fi;
	openssl x509 -inform DER -outform PEM -in ${1} -out ${2}
}

# Test connection with CA file
function openssl_test_connection() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: openssl_test_connection 1_CA_CRT_FILE 2_TARGET_HOST 3_TARGET_PORT";
		return 1;
	fi;
	openssl s_client -CAfile ${1} -connect ${2}:${3}
}


#########################################
# KEYTOOL
#########################################
# List certs
function keytool_list() {
        if [ -z "${1}" ]; then
		echo "Usage: keytool_list 1_KEYSTORE_LOCATION";
		return 1;
	fi;

	keytool -list -v -keystore ${1}
}

# List certs alternative
function keytool_listalt() {
        if [ -z "${1}" ]; then
		echo "Usage: keytool_listalt 1_FILE_LOCATION";
		return 1;
	fi;

	keytool -printcert -v -file ${1}
}

# List alias
function keytool_list_alias() {
        if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: keytool_list_alias 1_KEYSTORE_LOCATION 2_ALIAS_NAME";
		return 1;
	fi;

	keytool -list -v -keystore ${1} -alias ${2}
}

# List Java cacerts
function keytool_list_java() {
	keytool -list -v -keystore $JAVA_HOME/jre/lib/security/cacerts
}

# Generate a Java keystore and key pair
function keytool_generate_pkcs12() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: keytool_generate_pkcs12 1_ALIAS_NAME 2_KEYSTORE_LOCATION";
		return 1;
	fi;

	keytool -genkey -alias ${1} -keyalg RSA -keystore ${2} -storetype PKCS12 -storepass changeit -validity 730 -keysize 2048
}

# Generate a Self Signed Certificate
function keytool_generate_jks() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: keytool_generate_jks 1_ALIAS_NAME 2_KEYSTORE_LOCATION";
		return 1;
	fi;

	keytool -genkey -alias ${1} -keyalg RSA -keystore ${2} -storetype JKS -storepass changeit -validity 730 -keysize 2048
}

# Import a root or intermediate CA certificate to an "existing" Java keystore. If not existing the keystore is simply created
# and contains the imported certificate.	
function keytool_import_cert() {
        if [ -z "${1}" -o -z "${2}" -o -z "${3}" ]; then
		echo "Usage: keytool_import_cert 1_ALIAS_NAME 2_IMPORT_CERT_LOCATION 3_KEYSTORE_LOCATION";
		return 1;
	fi;

	keytool -import -trustcacerts -alias ${1} -file ${2} -keystore ${3}
}

# Export cert from keystore
function keytool_export_cert() {
        if [ -z "${1}" -o -z "${2}" -o -z "${3}" ]; then
		echo "Usage: keytool_export_cert 1_ALIAS_NAME 2_KEYSTORE_LOCATION 3_TARGET_FILE";
		return 1;
	fi;

	keytool -export -alias ${1} -keystore ${2} -file ${3}
}

# Delete a cert from a keystore
function keytool_delete_cert() {
        if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: keytool_delete_cert 1_ALIAS_NAME 2_KEYSTORE_LOCATION";
		return 1;
	fi;

	keytool -delete -alias ${1} -keystore ${2}
}

# Change the password of a keystore
function keytool_change_pw() {
        if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: keytool_change_pw 1_KEYSTORE_LOCATION 2_NEW_PASSWORD";
		return 1;
	fi;

	keytool -storepasswd -keystore ${1} -new ${2}
}

# Convert JKS keystore to PKCS12 keystore
function keytool_convert_jks_to_pkcs12() {
        if [ -z "${1}" -o -z "${2}" -o -z "${3}" -o -z "${4}" ]; then
		echo "Usage: keytool_convert_jks_to_pkcs121 1_SRC_KEYSTORE_LOCATION 2_DEST_KEYSTORE_LOCATION 3_SRC_ALIAS 4_DEST_ALIAS";
		return 1;
	fi;
	keytool -importkeystore -srckeystore ${1} -destkeystore ${2} -srcstoretype JKS -deststoretype PKCS12 -deststorepass changeit -srcalias ${3} -destalias ${4}
}

#########################################
# EASY PKI
#########################################
# Create a root CA
function easypki_create_ca() {
        if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: easypki_create_ca 1_FILENAME 2_CA_NAME";
		return 1;
	fi;
	easypki create --filename ${1} --ca ${2}
}

# Create certs signed by CA
function easypki_create_cert_signed_by_ca() {
        if [ -z "${1}" -o -z "${2}" -o -z "${3}" ]; then
		echo "Usage: easypki_create_cert_signed_by_ca 1_CA_NAME 2_DNS_ALT_NAME 3_NAME";
		return 1;
	fi;
	easypki create --ca-name ${1} --dns ${2} ${3}
}


#########################################
# GIT
#########################################
alias ginit='git init' #create git repo
alias gclone='git clone' #clone repo
alias gbranch='git branch' #create new branch 'git branch <branch_name>'
alias gbdel='git branch -d' #deletes a branch 'git branch -d <branch_name>'
alias glog='git log' #show log of all commits
alias gstatus='git status' #show staged/unstaged files
alias gremote_add='git remote add $1 $2' #add remote repo $1 is 'remote name' and $2 is 'repo URL'
alias gremote_show='git remote -v' #shows all remote branches
alias gremote_origin='git remote show origin' #shows the origin of the repo
alias gadd='git add $1' #add file for commit (staged)
alias gadd_all='git add --all'
alias grm='git rm' #remove file for commit (staged)
alias greset='git reset' #unstage file
alias greset_hard='git reset -h' #reset to current last commit
alias gcommit='git commit'
alias gpush='git push'
alias gpush_origin_master='git push -u origin master' #push to origin/master and remember the params for upcoming pushs
alias gpull='git pull'
alias grebase='git rebase'
alias gcheckout='git checkout' #switch to another branch 'git checkout <branch_name>' or to switch to a specific commit of the current branch 'git checkout -- <target>'
alias gdiff='git diff'
alias gdiff_head='git diff HEAD'
alias gdiff_staged='git diff --staged'
alias gmerge='git merge' #merge branches 'git merge <branch_name>' merges <branch_name> into current branch

function gdiff_file() {
    git diff $1 HEAD > diff.diff
}

function gar() {
    if [ -z "${1}" -o -z "${2}" ]; then
        echo "Usage: gar branch destination";
        return 1;
    fi;
    if [[ `git rev-parse --is-inside-work-tree` == "true" ]]; then
        echo "Exporting branch $1 to $2...";
        git archive $1 | tar -x -C $2;
        echo "Done.";
    fi
}

##########################################
# DOCKER
##########################################
# Log in
alias dlogin='docker login reposrv02nexus3.entwicklung.god.de:5000'

# Show
alias dps='docker ps'
alias dimgs='docker images'
alias dlogs='docker logs'
alias din='docker inspect'
alias dmounts='docker inspect -f "{{json .Mounts}}"'
# view docker tty
# exit with ctrl-a k
# background with ctrl-a d
alias dscreen='screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty'

# Actions
alias drestart='docker restart'
alias dstopcontainers='docker stop $(docker ps -a -q)'
function dcopy() {
    if [ -z "${1}" -o -z "${2}" -o -z "${3}" ]; then
        echo "Usage: dcopy <DOCKER_NAME> <SRC_PATH_INSIDE_DOCKER> <TARGET_PATH>"
        return 1;
    fi;
    docker cp ${1}:${2} ${3}
}
function dbash() {
    if [ -z "${1}" ]; then
        echo "Usage: dbash <DOCKER_NAME>"
        return 1;
    fi;
    docker exec -it ${1} "bash"
}

# Removing
alias drmcontainers='docker rm $(docker ps -a -q)'
alias drmimgs='docker rmi $(docker images -q)'
alias dpruneall='docker system prune -a --volumes'
alias dprunenetwork='docker network prune'

# Compose stuff
alias dcb='docker-compose build'
alias dcup='docker-compose up'
alias dcupf='docker-compose up --force-recreate'
alias dcdown='docker-compose down'
alias dcstop='docker-compose stop'
alias dcstart='docker-compose start'

# Compose stuff for GOD
alias dcg='docker-compose -f docker-compose-base.yml -f docker-compose-dev.yml'
alias dcgb='dcg build'
alias dcgup='dcg up'
alias dcgupf='dcg up -force-recreate'
alias dcgdown='dcg down'

##########################################
# MEB PT
##########################################
alias mebpt='cd ~/Proggen/vcs/git/GOD/MEB_PT'
alias mebptdev='cd ~/Proggen/vcs/git/GOD/MEB_PT/development/implementation'
alias mebptui='cd ~/Proggen/vcs/git/GOD/MEB_PT/development/implementation/ui'
alias mebptvw='cd ~/Proggen/vcs/git/GOD/MEB_PT_VW/conbaseprototyp'

##########################################
# MEB RT
##########################################
alias mebrtmigrate='mvn flyway:clean flyway:migrate -f ~/Proggen/vcs/git/GOD/MEB_RT/meb/development/implementation/conbase/conbase-db/pom.xml'
alias mebrt='cd ~/Proggen/vcs/git/GOD/MEB_RT/meb'
alias mebrtdocker='cd ~/Proggen/vcs/git/GOD/MEB_RT/meb/development/tools/docker'
alias mebrtvw='cd ~/Proggen/vcs/git/GOD/MEB_RT_VW/conbase'
alias mebrtdcup='dcg -f ~/Proggen/vcs/git/GOD/MEB_RT/meb/development/tools/docker/docker-compose.yml up'
alias mebrtdcdown='dcg -f ~/Proggen/vcs/git/GOD/MEB_RT/meb/development/tools/docker/docker-compose.yml down'

function mebrtsynctovw() {
    cd "~/Proggen/vcs/git/GOD/MEB_RT/_delivery"
    sh "./sync_branch_to_rt.sh" "$@"
    cd -
}

alias mebrtpushtovw='git -C ~/Proggen/vcs/git/GOD/MEB_RT_VW/conbase push'

##########################################
# Apps
##########################################
alias sl='open -a /Volumes/Local/mgoedecke/apps/Sublime\ Text\ 2.app/ $1'
alias dbeaver='nohup /Volumes/Local/mgoedecke/apps/DBeaver.app/Contents/MacOS/dbeaver &'
alias hsqldb_meb='java -classpath /Volumes/Local/mgoedecke/apps/hsqldb-2.4.0/hsqldb/lib/hsqldb.jar org.hsqldb.server.Server --database.0 file:mebprototyp --dbname.0'

##########################################
# Useful functions
##########################################

# Find modification
function findc() {
   find . -type f | xargs grep -nHi "${1}" 
}

function findn() {
    find . -name '${1}' 
}

function findtext() { 
   grep -ris "$1" $2 
}

# Print IP from local interfaces
function ip() {
    echo -e "Ethernet:\t `ipconfig getifaddr en0 2> /dev/null`"
    echo -e "WiFi:\t\t `ipconfig getifaddr en1 2> /dev/null`"
    echo -e "External:\t `curl -s http://checkip.dyndns.org/ | grep -o '[0-9][0-9]*.[0-9][0-9]*.[0-9][0-9]*.[0-9]*'`"
    echo ""
}

# Print working directory after a cd.
cd() {
if [[ $@ == '-' ]]; then
builtin cd "$@" > /dev/null  # We're going to display the new working directory ourselves.
else
builtin cd "$@"
fi
echo -e "   \033[1;30m"`pwd`"\033[0m"
}

# Change to active Finder directory
function cdf () { 
   local fPath=`osascript -e '
   tell app "finder"
      try
         set folderPath to (folder of the front window as alias)
      on error
         set folderPath to (path to desktop folder as alias)
      end try
      POSIX path of folderPath
   end tell'
   `;
   echo "cd $fPath";
   cd "$fPath" >/dev/null
}

##########################################
# SSH Host Autocompletion
##########################################
_complete_ssh_hosts (){
   COMPREPLY=()
   cur="${COMP_WORDS[COMP_CWORD]}"
   comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                   cut -f 1 -d ' ' | \
                   sed -e s/,.*//g | \
                   grep -v ^# | \
                   uniq | \
                   grep -v "\[" ;
           `
   COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
   return 0	
}
complete -F _complete_ssh_hosts ssh

##########################################
# Color Terminal Output
##########################################
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

##########################################
# Color MANPAGES
##########################################
#export PAGER="col -b | vim -R -c 'set ft=man nomod nolist' -"
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
