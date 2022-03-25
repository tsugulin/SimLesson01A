simple Create	// シンプルモジュール名をCreateとする
{
    parameters:
        volatile double intervalTime @unit(s) = default(0);		// パラメータとしてintervalTimeを定義し，単位は秒，初期値はゼロとする
    gates:
        output out;		// 出口としてoutを定義する
}