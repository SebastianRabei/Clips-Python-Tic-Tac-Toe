import clips
import re

env = clips.Environment() #crearea unei variabile de tip clips
env.clear() #clear echivalent celui din Clips
env.load("proiect.clp") #load fisier
env.reset() #reset echivalent celui din Clips
env.run() #run echivalent celui din Clips

l11= '-'
l12= '-'
l13= '-'
l21= '-'
l22= '-'
l23= '-'
l31= '-'
l32= '-'
l33= '-'

facts = env.eval("(get-fact-list *)") 
for fact in facts:
  fapt = str(fact)

  lista_loc = re.findall('l[1-3][1-3]',fapt) #returneaza lista ex: ['l11']
  lista_ocupat = re.findall('loc [a-zA-Z]',fapt) #returneaza lista ex: ['loc X']

  loc = str(lista_loc)[2:5] #returneaza string ex: 'l11'
  ocupat = str(lista_ocupat)[6:7] #returneaza string ex: 'loc X'
  
  # verificare loc ocupat de jucator
  if loc == 'l11' and ocupat =='X':
    l11 = ocupat
  if loc == 'l12' and ocupat =='X':
    l12 = ocupat
  if loc == 'l13' and ocupat =='X':
    l13 = ocupat
  if loc == 'l21' and ocupat =='X':
    l21 = ocupat
  if loc == 'l22' and ocupat =='X':
    l22 = ocupat
  if loc == 'l23' and ocupat =='X':
    l23 = ocupat
  if loc == 'l31' and ocupat =='X':
    l31 = ocupat
  if loc == 'l32' and ocupat =='X':
    l32 = ocupat
  if loc == 'l33' and ocupat =='X':
    l33 = ocupat

# verificare loc ocupat de calculator
  if loc == 'l11' and ocupat =='O':
    l11 = ocupat
  if loc == 'l12' and ocupat =='O':
    l12 = ocupat
  if loc == 'l13' and ocupat =='O':
    l13 = ocupat
  if loc == 'l21' and ocupat =='O':
    l21 = ocupat
  if loc == 'l22' and ocupat =='O':
    l22 = ocupat
  if loc == 'l23' and ocupat =='O':
    l23 = ocupat
  if loc == 'l31' and ocupat =='O':
    l31 = ocupat
  if loc == 'l32' and ocupat =='O':
    l32 = ocupat
  if loc == 'l33' and ocupat =='O':
    l33 = ocupat
  
  # print final
print (l11 , l12 , l13)
print (l21 , l22 , l23)
print (l31 , l32 , l33)
  



  

