# 4-Request-First-Come-First-Serve-Arbiter
4 request first come first serve arbiter design using verilog HDL
# Table Of Content
- [Requirements](###Requirements)
- [Architecture](###Architecture)
- [FSM](###FSM)
- [Simulation](###Simulation)
- [Verification](###Verification)
- [Synthesis](###Synthesis)

### Requirements
First Come First Serve (FCFS) is an  scheduling algorithm that automatically executes queued requests and processes in order of their arrival. It is the easiest and simplest CPU scheduling algorithm. In this type of algorithm, processes which requests the CPU first get the CPU allocation first. This is managed with a FIFO queue. The full form of FCFS is First Come First Serve.
Allows atomic operation in CPU i.e., when there is source sharing  happens in between instructions then it should have some kind of locking/unlocking system to avoid overriding. 

### Architecture
![image](https://user-images.githubusercontent.com/60102705/163356479-28707571-7f21-483c-baf8-8d0c4faffab2.png)

### FSM
![image](https://user-images.githubusercontent.com/60102705/163356689-0bcbe0b3-2527-4691-92fb-051ed8cfcd64.png)

### Simulation
![image](https://user-images.githubusercontent.com/60102705/163356866-f3a2ebf3-4a8d-4b18-90d8-3f532ea31d54.png)

### Verification
![image](https://user-images.githubusercontent.com/60102705/163356988-c527835e-5fcf-4446-837e-9bdb15198e55.png)

### Synthesis
![image](https://user-images.githubusercontent.com/60102705/163357131-9f7102bd-c69c-4812-8aff-31b7ecb8b1c1.png)
