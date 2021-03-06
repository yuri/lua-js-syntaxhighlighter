module(..., package.seeall)

--local js = require('syntaxhighlighter.js')
--local css = require('syntaxhighlighter.css')

function get_text(module_name)
   local loaded_module = require("syntaxhighlighter."..module_name)
   return loaded_module.content
end


JS_INIT = [===========[

if (jQuery) {  
 $('pre > code').each(function(){
  var klass = $(this).attr("class");
  if (klass) {
   $(this).parent().attr("class", "brush:"+klass);
  }
  var cnt = $(this).contents();
  $(this).replaceWith(cnt);
 });
 
}

SyntaxHighlighter.defaults["wrap-lines"] = false;
SyntaxHighlighter.defaults["toolbar"] = false;

//SyntaxHighlighter.config.clipboardSwf = 'http://localhost/syntaxhigh/scripts/clipboard.swf';
SyntaxHighlighter.all();

]===========]

function get_javascript(brushes)
   buffer = get_text("scripts.shCore")
   for i, brush in ipairs(brushes) do
      buffer = buffer..get_text("scripts.shBrush"..brush)
   end
   return buffer..JS_INIT
end


function get_css()
    return get_text("styles.shCore")..get_text("styles.shThemeDefault")
end
