user1 = User.first

# create some sample groups for the users
group1 = Group.create!(name: 'Group 1', icon: 'fa-users', user_id: user1.id)
group2 = Group.create!(name: 'Group 2', icon: 'fa-users', user_id: user1.id)
group3 = Group.create!(name: 'Group 3', icon: 'fa-users', user_id: user1.id)

# create some sample entities for the users
entity1 = Entity.create!(name: 'Entity 1', amount: 100.00, author_id: user1.id)
entity2 = Entity.create!(name: 'Entity 2', amount: 200.00, author_id: user1.id)
entity3 = Entity.create!(name: 'Entity 3', amount: 300.00, author_id: user1.id)
entity4 = Entity.create!(name: 'Entity 4', amount: 400.00, author_id: user1.id)

# associate the entities with the groups
Membership.create!(group_id: group1.id, entity_id: entity1.id)
Membership.create!(group_id: group1.id, entity_id: entity2.id)
Membership.create!(group_id: group2.id, entity_id: entity3.id)
Membership.create!(group_id: group2.id, entity_id: entity4.id)
