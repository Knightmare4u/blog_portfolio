class HTMLBlockCode < Redcarpet::Render::HTML
  include ActionView::Helpers::AssetTagHelper

  def image(link, title, alt_text)
    image_tag(link, title: title, alt: alt_text, width: "100%")
  end
end

def markdown(text)
   renderer = HTMLBlockCode.new
   text.gsub!(/(https?:\/\/[\S]*.png)/, '![](\1)')
   markdown = Redcarpet::Markdown.new(renderer)
   markdown.render(text)
end


module ApplicationHelper
	class HTMLwithPygments < Redcarpet::Render::HTML
		def block_code(code, language)
			Pygments.highlight(code, lexer: language)
		end
	end
	def markdown(content)
		renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
		options = {
			autolink: true,
			no_intra_emphasis: true,
			disable_intended_code_blocks: true,
			lax_html_bloacks: true,
			strikethrough: true,
			superscript: true
			}
		Redcarpet::Markdown.new(renderer, options).render(content).html_safe
	end
end
