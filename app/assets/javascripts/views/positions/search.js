FFProject.Views.SearchForm = Backbone.CompositeView.extend({
  template: JST["positions/search"],

  events: {
    "submit form.search-form": "submit",
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  submit: function(event) {
    event.preventDefault();
    var that = this;
    var $target = $(event.currentTarget);
    var data = $target.serialize()
    debugger
    var positions = FFProject.Collections.SearchResults.extend({
      url: '/api/positions/?' + data
    });
    var results = positions.search(data)
    results.done(function(positions){
      that.graphView && that.graphView.remove()
      that.graphView = new FFProject.Views.GraphView({
        collection: positions
      });
      that.addSubview('#graph', that.graphView)
    });
  }
});
