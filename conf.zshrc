################################################################################
# This is configuration for zsh on Mac OS.                                     #
#                                                                              #
# Two ways to use this configuration:                                          #
#                                                                              #
# 1) Check original configure file ~/.zshrc:                                   #
#        cat ~/.zshrc                                                          #
#    Replace it if no useful configuration in original one:                    #
#        cp ~/scripts/conf.zshrc ~/.zshrc                                      #
#                                                                              #
# 2) Copy this configuration to home directory:                                #
#        cp ~/scripts/conf.zshrc ~/.zshrc.user                                 #
#    Source it in original configure file if not yet:                          #
#        cat ~/.zshrc | grep -n source                                         #
#        echo "source ~/.zshrc.user" >> ~/.zshrc                               #
#                                                                              #
################################################################################


################################################################################
# Common Configure
################################################################################

# ls
alias ll='ls --color -D "%Y-%m-%d %H:%M:%S" -lh'
alias lla='ls --color -D "%Y-%m-%d %H:%M:%S" -lha'
alias llt='ls --color -D "%Y-%m-%d %H:%M:%S" -lh -rt'
alias llat='ls --color -D "%Y-%m-%d %H:%M:%S" -lha -rt'

# Time
alias t='date "+%Y-%m-%d %H:%M:%S"'

# Disk usage
alias dusum='du -sh'

# Reader: less
alias l='less -N'

# Editor: vim
alias v='vim'

# Editor: sublime text, atom on Max OS
alias e='~/sublime_text/sublime_text'

# Search in all files
# Usage: sa  [-i] <keyword>
#        sa  -E "<regexp>"
#        sa0 [-i] <keyword>
#        sa0 -E "<regexp>"
alias sa='find . -noignore_readdir_race -type f | xargs grep -n -s --color=auto --binary-files=without-match '
alias sa0='find . -noignore_readdir_race -type f -print0 | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in all files within E///
# Usage: se  [-i] <keyword>
#        se  -E "<regexp>"
#        se0 [-i] <keyword>
#        se0 -E "<regexp>"
alias se='find . -noignore_readdir_race -type f -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" | xargs grep -n -s --color=auto --binary-files=without-match '
alias se0='find . -noignore_readdir_race -type f -print0 -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in C/C++ headers and source files
# Usage: ss  [-i] <keyword>
#        ss  -E "<regexp>"
#        ss0 [-i] <keyword>
#        ss0 -E "<regexp>"
alias ss='find . -noignore_readdir_race -type f \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.h" -or -iname "*.hpp" -or -iname "*.hxx" -or -iname "*.c" -or -iname "*.cc" -or -iname "*.cxx" -or -iname "*.cpp" -or -iname "*.c++" \) | xargs grep -n -s --color=auto --binary-files=without-match '
alias ss0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.h" -or -iname "*.hpp" -or -iname "*.hxx" -or -iname "*.c" -or -iname "*.cc" -or -iname "*.cxx" -or -iname "*.cpp" -or -iname "*.c++" \) | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in C/C++ headers only: *.h, *.hpp, *.hxx
# Usage: sh  [-i] <keyword>
#        sh  -E "<regexp>"
#        sh0 [-i] <keyword>
#        sh0 -E "<regexp>"
alias sh='find . -noignore_readdir_race -type f \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.h" -or -iname "*.hpp" -or -iname "*.hxx" \) | xargs grep -n -s --color=auto --binary-files=without-match '
alias sh0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.h" -or -iname "*.hpp" -or -iname "*.hxx" \) | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in C/C++ source files only: *.c, *.cc, *.cxx, *.cpp, *.c++
# Usage: sc  [-i] <keyword>
#        sc  -E "<regexp>"
#        sc0 [-i] <keyword>
#        sc0 -E "<regexp>"
alias sc='find . -noignore_readdir_race -type f \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.c" -or -iname "*.cc" -or -iname "*.cxx" -or -iname "*.cpp" -or -iname "*.c++" \) | xargs grep -n -s --color=auto --binary-files=without-match '
alias sc0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) \( -iname "*.c" -or -iname "*.cc" -or -iname "*.cxx" -or -iname "*.cpp" -or -iname "*.c++" \) | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in java source files only: *.java
# Usage: sj  [-i] <keyword>
#        sj  -E "<regexp>"
#        sj0 [-i] <keyword>
#        sj0 -E "<regexp>"
alias sj='find . -noignore_readdir_race -type f \( -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" \) -iname "*.java" | xargs grep -n -s --color=auto --binary-files=without-match '
alias sj0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" \) -iname "*.java" | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in XML files only: *.xml
# Usage: sx  [-i] <keyword>
#        sx  -E "<regexp>"
#        sx0 [-i] <keyword>
#        sx0 -E "<regexp>"
alias sx='find . -noignore_readdir_race -type f \( -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" \) -iname "*.xml" | xargs grep -n -s --color=auto --binary-files=without-match '
alias sx0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" \) -iname "*.xml" | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in database: *.txt
# Usage: sdb  [-i] <keyword>
#        sdb  -E "<regexp>"
#        sdb0 [-i] <keyword>
#        sdb0 -E "<regexp>"
alias sdb='find . -noignore_readdir_race -type f \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) -iname "*.txt" | xargs grep -n -s --color=auto --binary-files=without-match '
alias sdb0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) -iname "*.txt" | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Search in signal files: *.sig
# Usage: ssig  [-i] <keyword>
#        ssig  -E "<regexp>"
#        ssig0 [-i] <keyword>
#        ssig0 -E "<regexp>"
alias ssig='find . -noignore_readdir_race -type f \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) -iname "*.sig" | xargs grep -n -s --color=auto --binary-files=without-match '
alias ssig0='find . -noignore_readdir_race -type f -print0 \( -not -path "*/test/*" -a -not -path "*/unitTest/*" -a -not -path "*/blockTest/*" -a -not -path "*/doc/*" -a -not -path "*/sw/bin/*" \) -iname "*.sig" | xargs -0 grep -n -s --color=auto --binary-files=without-match '

# Find Duplicate Files in Current Folder
# Refer to https://blog.csdn.net/zixiaomuwu/article/details/50878383
#alias fdf='find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I\{\} -n1 find -type f -size \{\}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate | cut -b 36- '

# Find specific file within current path
alias ff='find . -noignore_readdir_race -type f -iname'

# Find specific directory within current path
alias fd='find . -noignore_readdir_race -type d -iname'


################################################################################
# Git Configure
################################################################################

# Git alias
source ~/scripts/conf.git-config

alias g='git'
alias gbr='git br'
alias gco='git co'
alias gcb='git cb'
alias gcm='git cm'
alias gci='git ci'
alias gcp='git cp'
alias gst='git st'
alias gmt='git mt'
alias gdesc='git desc'
alias gtree='git tree'
alias gfollow='git follow'
alias glhg='git lhg'
alias glhfp='git lhfp'
alias glhfpd='git lhfpd'
alias glc='git lc'
alias glcp='git lcp'
alias glf='git lf'
alias gsls='git sls'
alias gcf='git cf'
alias gsar='git sar'
alias gdt='git dt'
alias gsdt='git sdt'
alias gdtc='git dtc'
alias gdtcs='git dtcs'
alias gdtcsf='git dtcsf'
alias glts='git lts'
alias glt='git lt'
alias gllt='git llt'
alias glbt='git lbt'
alias glmb='git lmb'
alias ggl='git gl'
alias gpl='git pl'
alias gpli='git pli'
alias gcnt='git cnt'
alias glua='git lua'
alias grma='git rma'
alias gopr='git opr'
alias glr='git lr'
alias gsubst='git subst'
alias gsubstr='git substr'
alias gsubupd='git subupd'
alias gsubupdr='git subupdr'
alias gsubrst='git subrst'
alias gupd='git pull; git subupdr'

# Git completion
# cp ~/scripts/conf.git-completion.bash ~/.git-completion.bash
# cp ~/scripts/conf.git-completion.tcsh ~/.git-completion.tcsh
#source ~/.git-completion.tcsh
#set autolist=ambiguous

# Build git from source code:
# 1) Clean git
# 2) Build git
# 3) Install built git
alias cgit='make distclean'
alias bgit='make prefix=/usr all doc info'
alias igit='sudo make prefix=/usr install install-doc install-html install-info'


################################################################################
# ClearCase Configure
################################################################################

alias vtree='cleartool lsvtree -g'
alias ctco='cleartool co -nc'
alias lsco='cleartool lsco -a -cview -short'
alias cols='cleartool ls -l \`cleartool lsco -a -cview -short\`'
alias ctls='cleartool ls -l'
alias unco='cleartool unco -keep'
alias ctdiff='cleartool diff -g'
alias diffpre='cleartool diff -g -pre'
alias lsall='cleartool lspriv -other'
alias rmall='rm -rf \`cleartool lspriv -other\`'


################################################################################
# Python Configure
################################################################################

# Use command pip3 instead of below alias p3pip
alias p3pip='python3 -m pip'


################################################################################
# VirtualBox
################################################################################

# alias llsf='sudols --time-style="+%Y-%m-%d %H:%M:%S" -lha /media/sf_share/'
alias llsf='ls --time-style="+%Y-%m-%d %H:%M:%S" -lha /media/sf_share/'

# alias cpsf='sudo cp -rf /media/sf_share/ /home/chenwx/sf_share/ && sudo chown -R chenwx:chenwx /home/chenwx/share/sf_share/'
alias cpsf='cp -rf /media/sf_share/ /home/chenwx/sf_share/'


################################################################################
# GitHub Blog
################################################################################

alias bblog='jekyll server --incremental 2>/dev/null'
alias bbloginc='jekyll server 2>/dev/null'


################################################################################
# MacBook
################################################################################

# Remove .DS_Store files in current folder on MacOS
alias rmdsstore='find . -name ".DS_Store" -type f -delete'


################################################################################
# Other Configure
################################################################################