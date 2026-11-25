# graded12.R
# Tiffany Agosto-Martinez
# 11/24/2026
# Using ggplot2 to create a line chart between (disp) and (mpg) in mtcars data

# Load the required library
library(ggplot2)

# Load mtcars dataset
data("mtcars")

# Use ggplot() to setup base for line plot w/ layers for an informative visual
fuel_plot <- ggplot(mtcars, 
                    aes(x = disp, y = mpg,
                        group = factor(cyl),
                        color = factor(cyl))
                    ) +
                      geom_line(alpha = 0.8, linewidth = 1) +
                      scale_color_discrete(name = "Number of Cylinders") +
                      labs(
                        title = "Engine Displacement by Cylinder Count",
                        subtitle = "Comparison across 4, 6, and 8-cylinders",
                        x = "Engine Displacement (cu.in)",
                        y = "Fuel Efficiency (mpg)",
                        caption = "Data from the 1974 Motor Trend US magazine"
                    ) + 
                      theme_minimal() + 
                      theme(
                        legend.position = "bottom",
                        plot.title = element_text(size = 14, face = "bold"),
                        plot.subtitle = element_text(size = 11, 
                                                     color = "gray30"),
                        axis.title = element_text(size = 10)
                      )

# Display the newly made line plot
print(fuel_plot)