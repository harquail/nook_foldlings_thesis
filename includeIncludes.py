includes = []
thesis = []
with open("shell-scripts/includes.md") as f:
    includes = f.readlines()
    f.close()

with open("Main Thesis Style.tex") as f:
    thesis = f.readlines()
    f.close()
# split thesis to get portions before and after the includes
startIndex=thesis.index("%START_INCLUDES\n")
endIndex=thesis.index("%END_INCLUDES\n")
# combine thesis fragments
stitchedThesis = thesis[0:startIndex+1]+includes+thesis[endIndex:]
print(stitchedThesis)

with open("Main Thesis Style.tex","w") as f:
    f.write("".join(stitchedThesis))
    f.close()
