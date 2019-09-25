class DoubleSongValidator < ActiveModel::Validator
  def validate(record)
    same_title = Song.where(title: record.title)
    same_title.each do |check|
      if check.release_year == record.release_year && check.artist_name == record.artist_name
        record.errors[:title] << "An artist cannot release two songs of the same name within one year."
      end
    end
  end
end
