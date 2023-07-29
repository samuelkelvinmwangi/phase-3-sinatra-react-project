class Runner < ActiveRecord::Base
    has_many :races

    def delete_race(race)
        runner.races.find_by(id: race.id).destroy
    end
end