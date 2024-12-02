# [Example](@id init_example)

## Create a Figure

by default the Figure is created to be A3 format 420x297 px

```@example
using ThesisArt
using CairoMakie

nothing #hide
```

```@example

backgroundcolor = "#333"
f,ax_main = ThesisArt.newfigure(;backgroundcolor)
nothing #hide
```

## Read the text

I cant share the pdf right now, so we'll use a dummy text

```@example
# t_text = import_pdf("file.pdf",pages=[2 4:24...]);
t_text = text = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
nothing #hide
```

## Create the title

```@example
 (h_title,h_nameyear),ax_title = add_title!(f,"My Awesome Thesis \n Title","Benedikt Ehinger","August 2024")
    nothing #hide
```

## Create a curve, path etc

For this example we'll use a simple BezierPath / Svg String

```@example

path_bat = CairoMakie.BezierPath("M96.84 141.998c-4.947-23.457-20.359-32.211-25.862-13.887-11.822-22.963-37.961-16.135-22.041 6.289-3.005-1.295-5.872-2.682-8.538-4.191-8.646-5.318-15.259-11.314-19.774-17.586-3.237-5.07-4.994-10.541-4.994-16.229 0-19.774 21.115-36.758 50.861-43.694.446-.078.909-.154 1.372-.231-22.657 30.039 9.386 50.985 15.258 24.645l2.528-24.367 5.086 6.52H103.205l5.07-6.52 2.543 24.367c5.842 26.278 37.746 5.502 15.414-24.429 29.777 6.951 50.891 23.936 50.891 43.709 0 15.136-12.406 28.651-31.609 37.267 14.842-21.822-10.867-28.266-22.549-5.549-5.502-18.325-21.147-9.341-26.125 13.886")
nothing #hide
```

## Plot the text on path

```@example
textpath = ThesisArt.TextOnPath(t_text,path_bat)
text!(ax_main,0.0,0,text=textpath,fontcolor = :white,fontsize=10)
```

## The final thesis art

```@example
f
```
