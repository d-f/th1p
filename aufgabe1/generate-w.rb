require 'nokogiri'
require 'open-uri'
require 'pp'

doc = Nokogiri::XML(open("./nets/solution1.spped"))

def getName(node)
  x = node.css('attribute[name=Name]').children[1].text
  if x[0] == "t"
    "t" + shortenName(x)
  else
    shortenName(x)
  end
end

def shortenName(str)
  str.split("").select { |c| c.upcase == c  }.join
end




nodes = Hash[doc.css('node').map do |n|
  [n['id'].to_i, getName(n)]
end]


edges = doc.css('edge').map do |e|
  [e['source'].to_i, e['target'].to_i]
end

tuples = edges.map do |e|
  #[ "(", nodes[e[0]], nodes[e[1]] ]
  "(\\op{#{nodes[e[0]]}}, \\op{#{nodes[e[1]]}})"
end

tuples.each_with_index do |t, i|
  print "#{t}, "
  print "\\\\\n&" if ((i+1)%4) == 0
end


puts ""
