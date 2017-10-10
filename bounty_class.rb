require('pg')

class Bounty

  attr_accessor
  :name
  :bounty_value
  :last_known_location
  :favourite_weapon
  attr_reader :id

  def initialize(suspect)
    @id = suspect['id'].to_i if suspect['id']
    @name = suspect['name']
    @bounty_value = suspect['bounty_value']
    @last_known_location = suspect['last_known_location']
    @favourite_weapon = suspect['favourite_weapon']

  end

  def save()
    db = PG.connect({
      dbname: 'space_cowboys',
      host: 'localhost'
      })
    sql = "INSERT INTO space_cowboys
    (
      name,
      bounty_value,
      last_known_location,
      favourite_weapon
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *
    "

    values = [@name,
      @bounty_value,
      @last_known_location,
      @favourite_weapon]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]['id'].to_i
    db.close()
  end

  def delete()
    db = PG.connect({
      dbname: 'space_cowboys',
      host: 'localhost'
      })
      sql = "DELTE FROM space_cowboys WHERE id = $1"
      values = [@id]
      db.prepare("delete_one", sql)
      db.exec_prepared("delete_one", values)
      db.close()

  end













end
