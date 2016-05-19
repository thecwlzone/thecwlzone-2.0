class Thumbnailize < Nanoc::Filter
  identifier :thumbnailize
  type       :binary

  def run(filename, params = {})
    system(
      'sips',
      '--resampleWidth',
      params[:width].to_s,
      '--out',
      output_filename,
      filename
    )
  end
end
