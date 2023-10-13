
FUNCTION_BLOCK FB_Controller (*Функциональный блок регулятора*)
	VAR_INPUT
		e : REAL; (*Вход регулятора (об/мин)*)
	END_VAR
	VAR_OUTPUT
		u : REAL; (*Выход регулятора (В)*)
	END_VAR
	VAR
		dt : REAL; (*Шаг интегрирвоания (с)*)
		k_i : REAL; (*Интегральный коэфффициент*)
		k_p : REAL; (*Пропорциональный коэффициент*)
		max_abs_value : REAL; (*Максимальное входное напряжение*)
		integrator : FB_Integrator; (*ФБ-интератор в составе регулятора*)
		iyOld : REAL; (*Разница между выходом регулятора*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator (*Функциональный блок интегратора*)
	VAR_INPUT
		in : REAL; (*Вход интеграторируещего звена*)
	END_VAR
	VAR_OUTPUT
		out : REAL; (*Выход интеграторируещего звена*)
	END_VAR
	VAR
		dt : REAL; (*Шаг интегрирования*)
		state : REAL; (*Состояние интегратора на*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Motor (*Функциональный блок двигателя*)
	VAR_INPUT
		in : REAL; (*Входное напряжение (В)*)
	END_VAR
	VAR_OUTPUT
		out_w : REAL; (*Частота вращения (об/мин)*)
	END_VAR
	VAR
		dt : REAL; (*Шаг интегрирования (с)*)
		k_e : REAL; (*Постоянная ЭДС двигателя*)
		T_m : REAL; (*Электромеханическая постоянная двигателя*)
		integrator : FB_Integrator; (*ФБ-интегратор в составе двигателя*)
	END_VAR
END_FUNCTION_BLOCK
