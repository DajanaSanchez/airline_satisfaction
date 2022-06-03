
friday_customers = [
    'C00004', 'C00007', 'C00015', 'C00016', 'C00020',
    'C00010', 'C00006', 'C00001', 'C00003', 'C00014',
    'C00001', 'C00001', 'C00005', 'C00008', 'C00013'
]

saturday_customers = [
    'C00004', 'C00017', 'C00019', 'C00002', 'C00008',
    'C00021', 'C00022'
]

sunday_customers = ['C00006', 'C00018', 'C00018', 'C00010', 'C00016']

sunday_set = set(sunday_customers)
saturday_set = set(saturday_customers)

weekend_set = sunday_set.union(saturday_set)

weekend_set

len(weekend_set)

friday_set

returning_customers = friday_set.intersection(weekend_set)

returning_customers