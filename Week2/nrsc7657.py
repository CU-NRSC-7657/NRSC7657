class ThingWeMade:
    def __init__(self):
        self.thing='neuron'
        
        self.start()
    
    def start(self):
        self.thing2='neuron'
        
    def fire(self):
        self.spike = self.thing+' fires an action potential'
        return self.spike
        # print(self.spike)
        
    def fire_a_thing(self,input_string):
        self.spike = self.thing+' fires an '+input_string
        print(self.spike)

def startswith(_string='take',string_to_check='dan'):
    out = False
    for character in range(len(string_to_check)):
        if string_to_check[character] == _string[character]:
            out = True
        else: 
            out = False
            break
    return out