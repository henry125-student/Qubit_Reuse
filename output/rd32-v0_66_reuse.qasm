OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
h q[3];
t q[1];
t q[0];
t q[3];
cx q[0],q[1];
cx q[3],q[0];
cx q[1],q[3];
tdg q[0];
cx q[1],q[0];
tdg q[1];
tdg q[0];
t q[3];
cx q[3],q[0];
cx q[1],q[3];
cx q[0],q[1];
h q[3];
cx q[0],q[1];
h q[3];
t q[1];
t q[3];
measure q[0] -> c[0];
reset q[0];
t q[0];
cx q[1],q[0];
cx q[3],q[1];
cx q[0],q[3];
tdg q[1];
cx q[0],q[1];
tdg q[0];
tdg q[1];
t q[3];
cx q[3],q[1];
cx q[0],q[3];
cx q[1],q[0];
h q[3];
cx q[1],q[0];
