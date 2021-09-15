module cowsay

export cowsay_function

function cowsay_function(message::AbstractString)
    messagelines = split(message, "\n")
    nlines = length(messagelines)

    linelength = max(length.(messagelines)...)
    paddinglength = linelength + 2

    if nlines == 1
        balloon = string(
            " ",
            repeat("_", paddinglength),
            "\n< ",
            message,
            " >\n ",
            repeat("-", paddinglength),
            "\n"
        )
    else
        balloon = string(
            " ",
            repeat("_", paddinglength),
            "\n/ ",
            rpad(messagelines[1], linelength),
            " \\\n"
        )
        if nlines > 2
            for i=2:nlines-1
                balloon = string(
                    balloon,
                    "| ",
                    rpad(messagelines[i], linelength),
                    " |\n"
                )
            end
        end
        balloon = string(
            balloon,
            "\\ ",
            rpad(messagelines[end], linelength),
            " /\n ",
            repeat("-", paddinglength),
            "\n"
        )
    end

    cow = string(
        "        \\   ^__^\n",
        "         \\  (oo)\\_______\n",
        "            (__)\\       )\\/\\\n",
        "                ||----w |\n",
        "                ||     ||"
    )

println(string(balloon, cow))
end


end
