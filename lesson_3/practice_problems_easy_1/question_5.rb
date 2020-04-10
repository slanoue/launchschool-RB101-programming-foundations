# Programmatically determine if 42 lies between 10 and 100.

# Initial answer:
(10..100).include?(42)
# After doing some research, I discovered that Range#cover
# is much more efficient for this specific type of operation
# https://stackoverflow.com/questions/21608935/what-is-the-difference-between-rangeinclude-and-rangecover

# Refactored:
(10..100).cover?(42)
