## Purpose: This view is for defining the "Event Path" dimensions, it is extended into events.view


view: event_path {
  extension: required

  ## Event Path Dimensions
  dimension: event_path_1 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "1st Event in Session."
    type: string
    sql: case when ${event_rank} = 1 then ${full_event} else null end ;;
  }
  dimension: event_path_2 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "2nd Event in Session."
    type: string
    sql: case when ${event_rank} = 2 then ${full_event} else null end ;;
  }
  dimension: event_path_3 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "3rd Event in Session."
    type: string
    sql: case when ${event_rank} = 3 then ${full_event} else null end ;;
  }
  dimension: event_path_4 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "4th Event in Session."
    type: string
    sql: case when ${event_rank} = 4 then ${full_event} else null end ;;
  }
  dimension: event_path_5 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "5th Event in Session."
    type: string
    sql: case when ${event_rank} = 5 then ${full_event} else null end ;;
  }
  dimension: event_path_6 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "6th Event in Session."
    type: string
    sql: case when ${event_rank} = 6 then ${full_event} else null end ;;
  }
  dimension: event_path_7 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "7th Event in Session."
    type: string
    sql: case when ${event_rank} = 7 then ${full_event} else null end ;;
  }
  dimension: event_path_8 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "8th Event in Session."
    type: string
    sql: case when ${event_rank} = 8 then ${full_event} else null end ;;
  }
  dimension: event_path_9 {
    view_label: "Event Flow"
    group_label: "Event Path"
    description: "9th Event in Session."
    type: string
    sql: case when ${event_rank} = 9 then ${full_event} else null end ;;
  }

  ## Relative full_event Path Dimensions
  dimension: current_event_plus_1 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came directly before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 1) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_2 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 2 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 2) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_3 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 3 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 3) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_4 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 4 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 4) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_5 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 5 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 5) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_6 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 6 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 6) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_7 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 7 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 7) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_8 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 8 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 8) limit 1) ;;
    type: string
  }
  dimension: current_event_plus_9 {
    view_label: "Event Flow"
    group_label: "Relative Event Path"
    description: "Event Path for Event that came 9 Events before current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank + 9) limit 1) ;;
    type: string
  }

  ## Reverse full_event Path Dimensions

  dimension: current_event_minus_1 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came directly after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 1) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_2 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 2 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 2) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_3 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 3 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 3) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_4 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 4 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 4) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_5 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 5 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 5) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_6 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 6 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 6) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_7 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 7 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 7) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_8 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 8 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 8) limit 1) ;;
    type: string
  }
  dimension: current_event_minus_9 {
    view_label: "Event Flow"
    group_label: "Reverse Event Path"
    description: "Event Path for Event that came 9 Events after current Event."
    sql: (select (select value.string_value FROM UNNEST(event_history.event_params) WHERE key = "full_event")
          from UNNEST(${sessions.event_data}) as event_history
          where event_history.event_rank = (${TABLE}.event_rank - 9) limit 1) ;;
    type: string
  }
}
