import sys
import json
import fnss
import networkx as nx
from networkx.readwrite import json_graph
import http_server


topology = fnss.parse_brite(sys.argv[1])
print "parsed!"

#fnss.write_topology(topology, sys.argv[2]+".xml")
#print "XML!"

for n in topology:
    topology.node[n]['name'] = n

d = json_graph.node_link_data(topology)

json.dump(d, open('force/force.json', 'w'))

http_server.load_url('force/force.html')

