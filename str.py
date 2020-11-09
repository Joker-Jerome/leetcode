import sys

str_in = sys.argv[1]
print(str_in)
# '141. Linked List Cycle'
items = str_in.split(".")
num = items[0]
words = "_".join(items[1].strip().split())
str_out = num + "_" + words + ".py"
print(str_out)
