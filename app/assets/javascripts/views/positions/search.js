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
    debugger
    data = $target.serialize()
    alert(data)
  }
});
