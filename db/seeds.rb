
users = User.create(
  [
    {
      index: '1',
      login: 'admin',
      password: '123456'
    },
    {
      index: '2',
      login: 'exampleadmin',
      password: 'exampleadmin'
    },
    {
      index: '3',
      login: 'exampleuser',
      password: 'exampleuser'
    },
    {
      index: '4',
      login: 'exampleuser2',
      password: 'exampleuser2'
    },
    {
      index: '5',
      login: 'exampleworker',
      password: 'exampleworker'
    }
  ]
)

roles = Role.create(
  [
    {
      login: 'admin',
      is_admin: true,
      is_worker: false,
      is_client: false
    },
    {
      login: 'user',
      is_admin: false,
      is_worker: false,
      is_client: true
    },
    {
      login: 'worker',
      is_admin: false,
      is_worker: true,
      is_client: false
    }
  ]
)

profiles = Profile.create(
  [
    {
      role_id: 1,
      user_id:users.first['id'],
      first_name: 'admin_first_name',
      last_name: 'admin_last_name'
    },
    {
      role_id: 2,
      user_id:users[1]['id'],
      first_name: 'user_first_name',
      last_name: 'user_last_name'
    },
    {
      role_id: 2,
      user_id:users[2]['id'],
      first_name: 'user_first_name2',
      last_name: 'user_last_name2'
    },
    {
      role_id: 3,
      user_id:users.last['id'],
      first_name: 'worker_first_name',
      last_name: 'worker_last_name'
    }
  ]
)

balls = BowlingBall.create(
  [
    {
      is_avalable: true,
      size: 6
    },
    {
      is_avalable: true,
      size: 7
    },
    {
      is_avalable: true,
      size: 8
    },
    {
      is_avalable: true,
      size: 9
    },
    {
      is_avalable: true,
      size: 10
    },
    {
      is_avalable: true,
      size: 11
    },
    {
      is_avalable: true,
      size: 12
    },
    {
      is_avalable: true,
      size: 13
    },
    {
      is_avalable: true,
      size: 14
    },
    {
      is_avalable: true,
      size: 15
    },
    {
      is_avalable: true,
      size: 16
    }
  ]
)

shoes = Shoe.create(
  [
    {
      is_avalable: true,
      size: 35
    },
    {
      is_avalable: true,
      size: 36
    },
    {
      is_avalable: true,
      size: 37
    },
    {
      is_avalable: true,
      size: 38
    },
    {
      is_avalable: true,
      size: 39
    },
    {
      is_avalable: true,
      size: 40
    },
    {
      is_avalable: true,
      size: 41
    },
    {
      is_avalable: true,
      size: 42
    },
    {
      is_avalable: true,
      size: 43
    },
    {
      is_avalable: true,
      size: 44
    },
    {
      is_avalable: true,
      size: 45
    },
    {
      is_avalable: true,
      size: 46
    }
  ]
)

tracks = Track.create(
  [
    {
      index: 1,
      is_working: true,
      is_for_kids: false
    },
    {
      index: 2,
      is_working: true,
      is_for_kids: false
    },
    {
      index: 3,
      is_working: true,
      is_for_kids: false
    },
    {
      index: 4,
      is_working: true,
      is_for_kids: false
    },
    {
      index: 5,
      is_working: true,
      is_for_kids: true
    },
    {
      index: 6,
      is_working: true,
      is_for_kids: true
    }
  ]
)

reservation = Reservation.create(
  [
    {
      profile_id: 2,
      quipment_id: 1,
      track_id: 2,
      reservation_date: '2022-06-09 12:15:00',
      nb_of_people: 4,
      price: 360
    },
    {
      profile_id: 3,
      quipment_id: 2,
      track_id: 4,
      reservation_date: '2022-06-09 15:15:00',
      nb_of_people: 2,
      price: 180
    }
  ]
)

equipment = Equipment.create!(
  [
    {
      reservation_id: reservation[0]['id'],
      shoe_id: shoes[3]['id'],
      bowling_ball_id: balls[5]['id']
    },
    {
      reservation_id: reservation[0]['id'],
      shoe_id: shoes[3]['id'],
      bowling_ball_id: balls[5]['id']
    },
    {
      reservation_id: reservation[0]['id'],
      shoe_id: shoes[8]['id'],
      bowling_ball_id: balls[9]['id']
    },
    {
      reservation_id: reservation[0]['id'],
      shoe_id: shoes[6]['id'],
      bowling_ball_id: balls[6]['id']
    },
    {
      reservation_id: reservation[1]['id'],
      shoe_id: shoes[11]['id'],
      bowling_ball_id: balls[10]['id']
    },
    {
      reservation_id: reservation[1]['id'],
      shoe_id: shoes[1]['id'],
      bowling_ball_id: balls[1]['id']
    }
  ]
)
