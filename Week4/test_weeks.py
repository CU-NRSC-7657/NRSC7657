def test_always_passes():
    assert True

# def test_always_fails():
#     assert False

def test_ThingWeMade():
    import importlib.util, sys
    modname='nsrc'
    spec = importlib.util.spec_from_file_location(modname, '/Users/danieljdenman/github/NRSC7657/Week2/nrsc7657.py')
    nrsc = importlib.util.module_from_spec(spec)
    sys.modules[modname] = nrsc
    spec.loader.exec_module(nrsc)

    t = nrsc.ThingWeMade()

    line = t.fire()
    assert line == 'neuron fires an action potential'