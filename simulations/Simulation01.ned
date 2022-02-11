network Simulation01
{
    @display("bgb=459,318");
    submodules:
        enter: Create {
            parameters:
                @display("p=74,88;i=block/source");
        }
        wait: Queue {
            parameters:
                @display("p=215,88,c,100;i=block/queue;q=queue");
        }
        doctor: Sink {
            parameters:
                @display("p=348,88,c,100;i=block/sink");
        }
    connections:
        enter.out --> wait.in++;
        wait.out --> doctor.in;
        doctor.out --> wait.in++;
}
