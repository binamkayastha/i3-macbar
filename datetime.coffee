command: "date +\"%a %d %b %Y %H:%M:%S\""

refreshFrequency: 1000

render: (output) ->
  "<div class='date'>#{output}</div>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 12px Menlo
  top: 50
  bottom: 26px
  width: 100%

  .date
    text-align: center
"""
