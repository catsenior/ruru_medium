import FroalaEditor from 'froala-editor'
import 'froala-editor/js/languages/zh_tw.js'
import 'froala-editor/js/plugins/align.min.js'
import 'froala-editor/js/plugins/char_counter.min.js'
import 'froala-editor/js/plugins/code_beautifier.min.js'
import 'froala-editor/js/plugins/colors.min.js'
import 'froala-editor/js/plugins/draggable.min.js'
import 'froala-editor/js/third_party/embedly.min.js'
import 'froala-editor/js/plugins/emoticons.min.js'
import 'froala-editor/js/plugins/file.min.js'
import 'froala-editor/js/plugins/font_family.min.js'
import 'froala-editor/js/plugins/font_size.min.js'
import 'froala-editor/js/plugins/image.min.js'
import 'froala-editor/js/plugins/image_manager.min.js'
import 'froala-editor/js/plugins/line_breaker.min.js'
import 'froala-editor/js/plugins/link.min.js'
import 'froala-editor/js/plugins/lists.min.js'
import 'froala-editor/js/plugins/quote.min.js'
import 'froala-editor/js/plugins/table.min.js'
import 'froala-editor/js/plugins/url.min.js'
import 'froala-editor/js/plugins/video.min.js'

document.addEventListener('turbolinks:load', function (event) {
  let editor = new FroalaEditor('#story_content', {
    language: 'zh_tw',
    spellcheck: false,
    imageUploadURL: '/api/upload_image'
  })
})
