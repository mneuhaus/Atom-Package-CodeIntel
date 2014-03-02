{View} = require 'atom'

module.exports =
class CodeIntelView extends View
  @content: ->
    @div class: 'code-intel overlay from-top', =>
      @div "The CodeIntel package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "code-intel:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "CodeIntelView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
