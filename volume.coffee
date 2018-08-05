command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Menlo
  top: 50
  bottom: 26px
  right: 220px
  color: #eee8d5
  span
    color: #aaa
"""
