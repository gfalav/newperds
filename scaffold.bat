rails g scaffold Distribuidora distribuidora:string
rails g scaffold Tdato tipo:string
rails g scaffold Zona zona:string
rails g scaffold Dato distribuidora_id:integer tdato_id:integer zona_id:integer periodo:integer energia:decimal
