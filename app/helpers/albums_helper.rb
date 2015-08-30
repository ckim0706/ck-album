module AlbumsHelper
  def album_thumbnail(album)
    if album.pictures.count > 0
      image_tag(album.pictures.first.asset.url(:album))
    else
      image_tag("http://placehold.it/800x800")
    end
  end
end
