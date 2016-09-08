function fish_greeting
    if command -v ponysay > /dev/null
        ponysay --ponyonly
    end
    echo ""
    echo "hello!"
end
