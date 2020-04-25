from io import open
import time
from nltk.corpus import wordnet

input = {"meat", "fish", "chicken", "beef"}
filename = time.strftime("%Y%m%d-%H%M%S")
f = open("output/"+filename, "a")

types = set()
hypernym_set = set()

for word in input:
    for ss in wordnet.synsets(word):
        types.add(ss.name().split('.')[0])
        for hyper in ss.hypernyms():
            hypernym_set.add(hyper.name().split('.')[0])
        for hypo in ss.hyponyms():
            types.add(hypo.name().split('.')[0])
        for holo in ss.part_holonyms():
            types.add(holo.name().split('.')[0])

for i in types:
    f.write("typeOf("+i+",meat).\n")

for i in hypernym_set:
    f.write("typeOf(meat," + i +").\n")

f.close()
print(types)
