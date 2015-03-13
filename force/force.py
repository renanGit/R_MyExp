import json
import networkx as nx
from networkx.readwrite import json_graph

import fnss
import sys

G = fnss.parse_brite(sys.argv[1])

for n in G:
    G.node[n]['name'] = n

d = json_graph.node_link_data(G) 

json.dump(d, open('graph.json','w'))
