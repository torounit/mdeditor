CodeMirror = require('codemirror')
require('../../../node_modules/codemirror/mode/markdown/markdown.js')
marked = require('marked')

class EditorView

  constructor:(sel)->
    @sel = sel
    @el = document.querySelector(sel)



class PreviewView

  constructor:(sel)->
    @sel = sel
    @el = document.querySelector(sel)

  render:(value) ->
    console.log value
    @el.innerHTML = marked value


editor = new EditorView("#editor_markdown")
preview = new PreviewView("#preview")




markdown = CodeMirror.fromTextArea( editor.el , {
  mode: "markdown",
  lineNumbers: true,
  indentUnit: 4
});

markdown.on 'change', ->
  console.log markdown.getValue()
  preview.render markdown.getValue()



