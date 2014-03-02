CodeIntelView = require './code-intel-view'

module.exports =
  codeIntelView: null

  activate: (state) ->
    @codeIntelView = new CodeIntelView(state.codeIntelViewState)

  deactivate: ->
    @codeIntelView.destroy()

  serialize: ->
    codeIntelViewState: @codeIntelView.serialize()
