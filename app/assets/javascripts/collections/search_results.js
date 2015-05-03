FFProject.Collections.SearchResults = Backbone.Collection.extend({},{
  search: function(query, options){
    var search = $.Deferred();
    options = options || {};
    var collection = new this([], options);
    collection.url = _.result(collection, 'url');
    var fetch = collection.fetch({
      data: {
        q: query
      }
    });
    fetch.done(_.bind(function(){
      Backbone.Events.trigger('search:done');
      search.resolveWith(this, [collection]);
    }, this));
    fetch.fail(function(){
      Backbone.Events.trigger('search:fail');
      search.reject();
    });
    return search.promise();
  }
});

// from http://willdemaine.ghost.io/restful-search-with-backbone/
