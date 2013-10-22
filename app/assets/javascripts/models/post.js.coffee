# for more details see: http://emberjs.com/guides/models/defining-models/

Embertutorial.Post = DS.Model.extend
  title: DS.attr 'string'
  author: DS.belongsTo 'Embertutorial.Author'
  date: DS.attr 'date'
  excerpt: DS.attr 'string'
  content: DS.attr 'string'
