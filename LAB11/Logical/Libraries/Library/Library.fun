
FUNCTION_BLOCK FB_Controller (*�������������� ���� ����������*)
	VAR_INPUT
		e : REAL; (*���� ���������� (��/���)*)
	END_VAR
	VAR_OUTPUT
		u : REAL; (*����� ���������� (�)*)
	END_VAR
	VAR
		dt : REAL; (*��� �������������� (�)*)
		k_i : REAL; (*������������ ������������*)
		k_p : REAL; (*���������������� �����������*)
		max_abs_value : REAL; (*������������ ������� ����������*)
		integrator : FB_Integrator; (*��-��������� � ������� ����������*)
		iyOld : REAL; (*������� ����� ������� ����������*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator (*�������������� ���� �����������*)
	VAR_INPUT
		in : REAL; (*���� ������������������ �����*)
	END_VAR
	VAR_OUTPUT
		out : REAL; (*����� ������������������ �����*)
	END_VAR
	VAR
		dt : REAL; (*��� ��������������*)
		state : REAL; (*��������� ����������� ��*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Motor (*�������������� ���� ���������*)
	VAR_INPUT
		in : REAL; (*������� ���������� (�)*)
	END_VAR
	VAR_OUTPUT
		out_w : REAL; (*������� �������� (��/���)*)
	END_VAR
	VAR
		dt : REAL; (*��� �������������� (�)*)
		k_e : REAL; (*���������� ��� ���������*)
		T_m : REAL; (*������������������� ���������� ���������*)
		integrator : FB_Integrator; (*��-���������� � ������� ���������*)
	END_VAR
END_FUNCTION_BLOCK
