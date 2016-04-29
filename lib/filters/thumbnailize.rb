class Thumbnailize < Nanoc::Filter
  identifier :thumbnailize
  type       :binary

  def run(filename, params = {})
    if `uname -s` == 'Darwin'
      system(
        'sips',
        '--resampleWidth',
        params[:width].to_s,
        '--out',
        output_filename,
        filename
      )
    elsif `uname -s` == 'FreeBSD'
      system(
        'convert',
        '-resize',
        params[:width].to_s,
        filename,
        output_filename
      )
    end
  end
end
