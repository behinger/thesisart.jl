module Thesisart
    using PDFIO
    using BSplineKit
    using RollingFunctions
    using Makie
    import Makie.layout_text
    import Makie._get_glyphcollection_and_linesegments

    include("importpdf.jl")
    include("utils.jl")
    include("interpolateCurve.jl")
    include("fontOnCurve.jl")
    
    export import_pdf
    export get_rotation
    export rolling_inter2d
    export addSpacer!,addTitle!,newfigure
end
