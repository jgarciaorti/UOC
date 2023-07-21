package com.weldtic.enums;

public enum WeldStatus {

	CREADA ("creada"),
	INICIADA ("iniciada"),
	FINALIZADA ("finalizada"),
	PENDIENTE ("pendiente"),
	ACEPTADA ("aceptada"),
	RECHAZADA ("rechazada");
	
    private final String val;

    WeldStatus(String val) {
        this.val = val;
    }
    
    public String getStatus() {
        return val;
    }
}
