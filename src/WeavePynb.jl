module WeavePynb


## Goal here
## have a weave that:
## markdownToHTML: creates web page with questions
## markdownToPynb: creates notebooks, evaluated
## markdownToLaTeX: creates latex files from markdown (needs Pandoc)
## markdownToLaTeXQ: creates latex with questions handled so they can be picked up (not done yet)


using JSON, Mustache, Markdown, LaTeXStrings


include("evalit.jl")
include("pandoc.jl")
include("markdown-additions.jl")
include("questions.jl")
include("formatting.jl")
include("bootstrap.jl")

include("markdownToPynb.jl")    # notebook for questions,
include("markdownToHTML.jl")   # for making webpages
include("markdownToLaTeXQ.jl")  # for CSI questions, not of more general usage
#include("markdownToLaTeX.jl")

export markdownToPynb 
export markdownToHTML
export markdownToLaTeXQ

export Verbatim, Invisible, Outputonly, ImageFile
export alert, warning, note
export example, popup, table
export gif_to_data

end # module
