# Angular Features
# --------------

# * @@ is scope

test "@@ returns $scope", ->
  $scope = "some value"
  a = @@
  ok a is $scope

test "property access of @@", ->
  $scope = { key: 'value' }
  a = @@.key
  b = @@['key']
  ok a is 'value'
  ok b is 'value'

test 'property access of @@ without .', ->
  $scope = { key: 'value' }
  a = @@key
  ok a is 'value'

test 'for example, @@ works with $apply()', ->
  $scope = { $apply: -> 'value' }
  a = @@$apply()
  ok a is 'value'

test '@@ can be injected into a function', ->
 a = (@@) -> @@
 ok a('value') is 'value'

test '@@ can be assiged to', ->
  @@ = 'value'
  ok @@ is 'value'

test '@@property can be assiged to', ->
  @@ = {}
  @@property = 'value'
  ok @@property is 'value'
