command: "echo $(./i3-macbar/scripts/getWorkspaces.sh)"

refreshFrequency: 100 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Menlo
  top: 50
  bottom: 5px
  left: 30px
  color: #eee8d5
  span
    color: #aaa
"""
