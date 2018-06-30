from time import gmtime, strftime

buildtime = strftime("%Y-%m-%d %H:%M:%S", gmtime())

print(buildtime)

