extends Node2D

export (PackedScene) var Bus
export (PackedScene) var Truck
export (PackedScene) var Car1
export (PackedScene) var Car2

func _ready():
	$BusTimer.start()
	$TruckTimer.start()
	$CarTimer1.start()
	$CarTimer2.start()

func _on_BusTimer_timeout():
	randomize()	
	$BusTimer.wait_time = rand_range(5,10)
	bus_spawn()
	
func _on_TruckTimer_timeout():
	randomize()	
	$TruckTimer.wait_time = rand_range(5,10)
	truck_spawn()

func _on_CarTimer1_timeout():
	randomize()	
	$CarTimer1.wait_time = rand_range(5,10)
	car1_spawn()

func _on_CarTimer2_timeout():
	randomize()	
	$CarTimer2.wait_time = rand_range(5,10)
	car2_spawn()	

func bus_spawn():
	var bus = Bus.instance()
	add_child(bus)
	bus.position = $BusSpawn.position
	bus.linear_velocity = Vector2(rand_range(bus.min_speed, bus.max_speed), 0)	
	
func truck_spawn():
	var truck = Truck.instance()
	add_child(truck)
	truck.position = $TruckSpawn.position
	truck.linear_velocity = Vector2(-(rand_range(truck.min_speed, truck.max_speed)), 0)	
	
func car1_spawn():
	var car1 = Car1.instance()
	add_child(car1)
	car1.position = $CarSpawn1.position
	car1.linear_velocity = Vector2(rand_range(car1.min_speed, car1.max_speed), 0)	
	
func car2_spawn():
	var car2 = Car2.instance()
	add_child(car2)
	car2.position = $CarSpawn2.position
	car2.linear_velocity = Vector2(-(rand_range(car2.min_speed, car2.max_speed)), 0)	




