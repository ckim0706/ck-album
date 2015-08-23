module AlbumsHelper
  def album_thumbnail(album)
    if album.pictures.count > 0
      image_tag(album.pictures.first.asset.url(:medium))
    else
      image_tag("http://placehold.it/300x300")
    end
  end
end
