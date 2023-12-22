class Grandfather:
    def gf(self):
        print("inside grandfather")
class father(Grandfather):
    def fa(self):
        print("inside father")
class son1(father):
    def s1(self):
        print("son1")
class son2(father):
    def s2(self):
        print("son2")
chintu=son1()
bittu=son2()
chintu.gf()
chintu.fa()
bittu.fa()
bittu.s2()