```
Una vez en la consola la siguientes consultas se pueden ejecutar:
```sh
> cli = Client.all #Retorna todos los registros que estan el la tabla Clients
> cli = Client.first #Retorna el primer registro de la tabla Clients
> cli = Client.last #Retorna el primer registro de la tabla Clients
> cli = Client.find(10) #Retorna el registro de la tabla Clients con id  10
> cli = Client.take #Recupera un registro sin ningún orden implícito.
> cli = Client.find_by first_name: 'Lifo' #Recupera los registros que tienen 'Lifo' en el campo first_name
> cli = Client.where(first_name: 'Lifo').take  #Recupera los registros que tienen 'Lifo' en el campo first_name
> cli = Client.order(:created_at) #Retorna los registros ordenados por fecha de creacion
> cli = Client.order(created_at: :desc) #Retorna los registros ordenados descendentemente por fecha de creacion
> cli = Client.order(created_at: :asc) #Retorna los registros ordenados asendentemente por fecha de creacion
> cli = Client.limit(5) #Retorna 5 registros

```

