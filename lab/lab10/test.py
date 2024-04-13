def mutate_list(lst):
    lst[0] = 2

def test(lst):
    lst = [2] + lst[1:]
