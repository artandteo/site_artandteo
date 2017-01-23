module BlogsHelper
	# Methode remove_tags #
	# Permet d'enlever les balises HTML #
	def remove_tags(content)
        doc = Nokogiri::HTML(content)
        doc.search('h1').xpath('text()').remove
        doc.search('h2').xpath('text()').remove
        doc.search('h3').xpath('text()').remove
        doc.search('h4').xpath('text()').remove
        doc.search('h5').xpath('text()').remove
        doc.search('ul').xpath('text()').remove
        doc.search('li').xpath('text()').remove
        doc.search('p').find_all.each do |p|
            p.remove if p.content.blank?
            p.remove if p.content.strip.empty?
        end
        doc = doc.to_html
	end
end
