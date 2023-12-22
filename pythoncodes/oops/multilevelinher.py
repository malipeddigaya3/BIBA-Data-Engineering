class Grandfather:
    def gf(self):
        print("gf is honest")
class father(Grandfather):
    def father(self):
        print("father is cool")
class son(father):
    def aim(self):
        print('inside sonclass')
rao=Grandfather()
mouli=father()
pavan=son()
pavan.gf()
pavan.father()
pavan.aim()
