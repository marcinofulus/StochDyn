import sys, re

pattern = re.compile('\d')

if len(sys.argv) == 3:
  f = open(sys.argv[1], 'r')
  o = open(sys.argv[2], 'w')
elif len(sys.argv) == 2:
  f = open(sys.argv[1], 'r')
  o = open(sys.argv[1][:-3]+"rst", 'w')
else:
  exit()

WHOLETXT = ""

i, counter = 0, 0
eqnlabels, newlabels = [], []
for l in f.readlines():
  i += 1
  #if l[0:2] == "$$":
  if "$$" in l:
    counter += 1 
    newlabel = 'eqn%d'%counter
    if "quad" in l:
      try:
	buf = l[::-1]
	leftidx = buf.index('(')
	rightidx = buf.index(')')
	oldlabel = "("+l[-leftidx:-rightidx-1]+")"
	if pattern.match(oldlabel[1]) != None and oldlabel[1] != "0":
	  eqnlabels.append(oldlabel)
	  newlabels.append(newlabel)
          l = l.replace(oldlabel,"")
	  #print oldlabel
      except:
	pass
    
    WHOLETXT += ".. MATH::\n    :label: %s\n\n"%newlabel
    WHOLETXT += "    " + l[2:-3] + "\n\n"
    #o.write(l.replace("$$","ALA"))
    #o.write("Title%d="%(101-i)+l.split('/')[-1][:-5]+"\n")
  elif 'SAGECELL' in l:
    WHOLETXT += '.. only:: latex\n\n'
    WHOLETXT += '  .. code-block:: python\n\n\n\n'
    WHOLETXT += '  .. figure:: images/\n'
    WHOLETXT += '     :align: center\n'
    WHOLETXT += '     :width: 80%\n'
    WHOLETXT += '     :alt: figch\n\n\n\n'
    WHOLETXT += '.. only:: html\n\n'
    WHOLETXT += '  .. sagecellserver::\n'
    WHOLETXT += '      :is_verbatim: True\n\n\n\n'
    WHOLETXT += '  .. end of input\n\n'
  elif 'IMAGE' in l:
    WHOLETXT += '.. figure:: images/\n'
    WHOLETXT += '   :align: center\n'
    WHOLETXT += '   :alt: \n\n'
    WHOLETXT += '   caption goes here\n\n'
  else:
    words = l.split('$')
    lw = len(words)
   
    if lw == 1:
      WHOLETXT += l
    else:
      text = ""
      for k in range(lw-1):
        if k%2 == 0:
          text += words[k] + ":math:`" 
        else:
	  text += words[k] + "`"
      text += words[lw-1]
      WHOLETXT += text

dlabels = dict(zip(eqnlabels,newlabels))
lines = WHOLETXT.split('\n')
WHOLETXT = ""
for l in lines:
  l = l.replace('\quad \quad \quad','\qquad')
  l = l.replace('\qquad \qquad','\qquad')
  l = l.replace('   ',' ')
  l = l.replace('  ',' ')
  l = l.replace(' .','.')
  l = l.replace(' ,',',')

  for elabel in eqnlabels:
    if elabel in l:      
      l = l.replace(':math:`%s`'%elabel,':eq:`%s`'%dlabels[elabel])

  WHOLETXT += l+"\n"

lines = WHOLETXT.split('\n')
nlines = []
for l in lines:
  for elabel in eqnlabels:
    if elabel in l:      
      nlines.append(lines.index(l)+1)

if len(nlines) > 0:
  print "jest jeszcze %d nie zmienionych miejsc podejrzanych o reczne referencjew liniach: %s"%(len(nlines),nlines)
  ask = raw_input("pokazac linie? [t/N] ")
  if ask == 't' or ask == 'T':
    print dlabels
    for n in nlines:
      print lines[n-1]


o.write(WHOLETXT)			
f.close()
o.close()
