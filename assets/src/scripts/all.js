/**
 * Created by torounit on 15/03/04.
 */
(function(){
  'use strict';
  var  CodeMirror = require('codemirror');
  require('../../../node_modules/codemirror/mode/markdown/markdown.js');
  var marked = require('marked');

  class EditorView {

    constructor(sel) {

      this.sel = sel;
      this.el = document.querySelector(sel)
    }
  }

  EditorView.create()





});
