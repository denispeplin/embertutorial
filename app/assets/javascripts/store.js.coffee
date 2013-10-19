# http://emberjs.com/guides/models/defining-a-store/

Embertutorial.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

