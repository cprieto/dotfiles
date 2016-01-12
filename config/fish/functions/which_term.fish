function which_term
    switch (basename (ps -p (ps -p %self -o ppid=) -o args=))
    case 'login*'
        # This is unique of MacOSX AFAIK
        echo (basename $TERM_PROGRAM .app)
    case '*'
        echo (basename (ps -p (ps -p %self -o ppid=) -o args=))
    end
end

