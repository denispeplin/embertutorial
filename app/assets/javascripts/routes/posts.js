Embertutorial.PostsRoute = Ember.Route.extend({
  model: function() {
    return $.getJSON('/posts.json').then(function(data) {
      return data.posts.map(function(post) {
        post.body = post.content;
        return post;
      });
    });
  }
});

Embertutorial.PostRoute = Ember.Route.extend({
  model: function(params) {
    return $.getJSON('/posts/'+params.post_id+'.json').then(function(data) {
      data.post.body = data.post.content;
      return data.post;
    });
  }
});