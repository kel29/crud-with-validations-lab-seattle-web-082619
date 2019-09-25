class ReleaseYearValidator < ActiveModel::Validator
  def validate(record)
    unless record.released && !record.release_year.nil? || !record.released
      record.errors[:released] << "If a song has been released, it needs to have a release year."
    end
  end
end
