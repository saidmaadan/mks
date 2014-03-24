# Translate the following into the new format and make sure you get the same results:

{ ruby: 'backend', html: 'frontend' }.send(:invert)
# => {"backend"=>:ruby, "frontend"=>:html}
{ ruby: 'backend', html: 'frontend' }.invert
# => {"backend"=>:ruby, "frontend"=>:html}

10.send(:/, 3)
# => 3
10/3
# => 3

['a', 'b', 'c', 'd'].send(:slice, 1, 2)
#  => ["b", "c"] 
['a', 'b', 'c', 'd'].slice(1, 2)
#  => ["b", "c"] 