class bird:
    def __init__(self,name):
        self.name=name
    def info(self):
        print('bird',self.name)
    def fly(self):
        print('the bird can fly')
class shalik(bird):
    def __init__(self,name,color):
        super().__init__(name)
        self.color=color
    def info(self):
        super().info()
        print('color is ',self.color)
    def fly(self):
        print("inside child bird can fly")
obj=shalik('sha','white')
obj.fly()
obj.info()
        