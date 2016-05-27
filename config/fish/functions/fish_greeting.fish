function fish_greeting

    # I need to port this to Linux
    # We assume the name is the first element of the full name
    switch (uname)
        case Darwin
            set full_user_name (osascript -e "long user name of (system info)" | tr ' ' '\n')
        case '*'
            set full_user_name "Stranger"
    end

    echo ""
    echo -s "         /\_/\ "
    echo -s "    ____/ o o \\"
    echo -s "  /~____  =ø= /"
    echo -s " (______)__m_m)"
    echo ""
    echo -s (set_color normal) "Welcome back " (set_color green) $full_user_name[1] (set_color normal) " !"
    echo ""

end
