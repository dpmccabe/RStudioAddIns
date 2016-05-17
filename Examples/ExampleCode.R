library(dplyr)

iris

iris %>%
  filter(Species == 'setosa')

# Note that since I have bound this addin to a keyboard shortcut, I can further expedite the workflow
# simply by invoking that shortcut on my keyboard.

iris %>%
  group_by(Species) %>%
  summarize(
    Count.of.Flowers = n()
  )
