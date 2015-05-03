FFProject.Views.SearchForm = Backbone.View.extend({
  template: JST["positions/search"],

  events: {
    "submit form.search": "submit",
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  submit: function(event) {
    event.preventDefault();
    var $target = $(event.currentTarget);
    var positions = FFProject.Collections.SearchResults.extend({
      url: '/api/positions/'
    });
    data = $target.serialize()
    debugger
    positions.search(data)
  }
});
