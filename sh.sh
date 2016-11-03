rails g scaffold procedure procedure_name
rails g scaffold procedure_type procedure_type_name procedure:references
rails g scaffold procedure_class procedure_class_name procedure_type:references
rails g scaffold clinic name cnpj social_name fantasy_name address neighborhood city state cep phone fax celphone representative_name representative_phone geolocation nusai:date procedure_class:references
