network Simulation01	// モデル名をSimulation01とする
{
    @display("bgb=459,206");	// 枠の大きさは横459ピクセル，縦206ピクセルとする
    submodules:					// モジュールの定義
        enter: Create {			// Createモジュールを継承してenterノードを定義とする
            parameters:
                @display("p=74,88;i=block/source");		// 座標(74,88)にimages/block/source.pngを表示する
        }
        wait: Queue {			// Queueモジュールを継承してwaitノードを定義する
            parameters:
                @display("p=215,88,c,100;i=block/queue;q=queue");	// 座標(215,88)にimages/block/queue.pngを表示する。ノードにqueueの値を表示する
        }
        doctor: Sink {			// Sinkモジュールを継承してdoctorノードを定義する
            parameters:
                @display("p=348,88,c,100;i=block/sink");	// 座標(348,88)にimages/block/sink.pngを表示する
        }
    connections:					// モジュール間の接続の定義
        enter.out --> wait.in++;	// enterの出口をwaitの入口にセットする
        wait.out --> doctor.in;		// waitの出口をdoctorの入口にセットする
        doctor.out --> wait.in++;	// doctorの出口をwaitの入口にセットする
}
