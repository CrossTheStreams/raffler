class Raffler.Collections.Entries extends Backbone.Collection
  url: '/api/entries'

  model: Raffler.Models.Entry

  drawWinner: ->
    winner = @shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
      winner.trigger('highlight')
