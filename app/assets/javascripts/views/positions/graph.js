FFProject.Views.GraphView = Backbone.CompositeView.extend({
  template: JST["positions/graph"],

  initialize: function(options) {
    this.positions = options.collection
  },


  render: function(){
    // var data = [{year: 2006, books: 54},
    // {year: 2007, books: 43},
    // {year: 2008, books: 41},
    // {year: 2009, books: 44},
    // {year: 2010, books: 35}];

    var data = this.positions.toJSON()


    var barWidth = 40;
    var width = (barWidth + 10) * data.length;
    var height = 200;
    var padding = 30;

    var x = d3.scale.linear().domain([0, data.length]).range([0, width]);
    var y = d3.scale.linear().domain([0, d3.max(data, function(datum) {  return datum.points; })]).
    rangeRound([0, height]);

    // add the canvas to the DOM
    var barDemo = d3.select("#rect-demo").
    append("svg:svg").
    attr("width", width + padding).
    attr("height", height + padding);

    barDemo.selectAll("rect").
    data(data).
    enter().
    append("svg:rect").
    attr("x", function(datum, index) { return x(index); }).
    attr("y", function(datum) { return height - y(datum.points); }).
    attr("height", function(datum) { return y(datum.points); }).
    attr("width", barWidth).
    attr("fill", "#2d578b");

    barDemo.selectAll("text").
    data(data).
    enter().
    append("svg:text").
    attr("x", function(datum, index) { return x(index) + barWidth; }).
    attr("y", function(datum) { return height - y(datum.points); }).
    attr("dx", -barWidth/2).
    attr("dy", "1.2em").
    attr("text-anchor", "middle").
    text(function(datum) { return datum.points;}).
    attr("fill", "white");

    barDemo.selectAll("text.yAxis").
    data(data).
    enter().append("svg:text").
    attr("x", function(datum, index) { return x(index) + barWidth; }).
    attr("y", height).
    attr("dx", -barWidth/2).
    attr("text-anchor", "middle").
    attr("style", "font-size: 12; font-family: Helvetica, sans-serif").
    text(function(datum) { return datum.week + " " + datum.position;}).
    attr("transform", "translate(0, 18)").
    attr("class", "yAxis");

    this.$el.html(this.template({
      positions: this.positions
    }));
    return this;

  }
});
