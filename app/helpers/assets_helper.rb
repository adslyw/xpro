module AssetsHelper
  def icon_for(asset)
      icon = case asset.file_name
        when /jpe?g\Z/i then ' fa fa-picture-o'
        when /png\Z/i then 'fa fa-picture-o'
        when /gif\Z/i then 'fa fa-picture-o'
        when /csv\Z/i then 'fa fa-file-text-o'
        when /text\Z/i then 'fa fa-file-text-o'
        when /pdf\Z/i then 'fa fa-file-pdf-o'
        when /docx?\Z/i then 'fa fa-file-word-o'
        when /pptx?\Z/i then 'fa fa-file-powerpoint-o'
        when /xlsx?\Z/i then 'fa fa-file-excel-o'
        when /zip\Z/i then 'fa fa-file-zip-o'
        when /rar\Z/i then 'fa fa-file-zip-o'
        when /mp4\Z/i then 'fa fa-film'
        when /flv\Z/i then 'fa fa-film'
        when /mp3\Z/i then 'fa fa-music'
        when /ogg\Z/i then 'fa fa-music'
      end      
  end
end
