class father:
    def fa(self):
        print("inside father")
class son1(father):
    def s1(self):
        print("son1")
class son2(father):
    def s2(self):
        print("son2")
rao=father()
chintu=son1()
bittu=son2()
chintu.fa()
chintu.s1()
bittu.fa()