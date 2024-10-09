module func(out, a, b, c, d, _a, _b, _c, _d);
	output out;
	input a, b, c, d, _a, _b, _c, _d;
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9;
	supply1 power;
	supply0 ground;

	pmos(w1 , power, _a);
	pmos(out, w1, _c);
	pmos(w2, power, _a);
	pmos(w3, w2, _b);
	pmos(out, w3, c);
	pmos(w4, power, _b);
	pmos(out, w4, d);
	pmos(w5, power, a);
	pmos(w6, w5, c);
	pmos(out, w6, d);

	nmos(w9, ground, a);
	nmos(w9, ground, c);
	nmos(w9, ground, d);
	nmos(w8, w9, _b);
	nmos(w8, w9, d);
	nmos(w7, w8, _a);
	nmos(w7, w8, _b);
	nmos(w7, w8, c);
	nmos(out, w7, _a);
	nmos(out, w7, _c);
endmodule

