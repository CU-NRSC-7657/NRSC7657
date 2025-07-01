class ThingWeMade:
    def __init__(self):
        self.thing='neuron'
        self.start()
    
    def start(self):
        self.thing2='neuron'
        
    def fire(self):
        self.spike = self.thing+' fires an action potential'
        print(self.spike)
        
    def fire_a_thing(self,input_string):
        self.spike = self.thing+' fires an '+input_string
        print(self.spike)

    def new_fun(self):
        print('new')

class ABetterThing(ThingWeMade):
    def __init__(self):
        self.newthing='better'
        ThingWeMade.__init__(self)
        
    def make_it_better(self):
        print(self.thing+' '+self.newthing)
        return self.thing+' '+self.newthing

def new_fun():
    print('new')