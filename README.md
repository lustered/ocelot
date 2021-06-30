## Script to install a basic and decent vim environment on FIU's ocelot servers

Log on ocelot

    wget -O - 'https://raw.githubusercontent.com/lustered/ocelot/master/vimnstall.sh' | bash
    exit # logout

Log back in

    vim test.c -c "CocCommand clangd.install"
