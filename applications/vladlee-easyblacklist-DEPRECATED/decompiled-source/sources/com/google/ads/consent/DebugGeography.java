package com.google.ads.consent;
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/DebugGeography.class */
public enum DebugGeography {
    DEBUG_GEOGRAPHY_DISABLED(0),
    DEBUG_GEOGRAPHY_EEA(1),
    DEBUG_GEOGRAPHY_NOT_EEA(2);
    
    private final int value;

    DebugGeography(int i) {
        this.value = i;
    }

    public final Integer getCode() {
        return Integer.valueOf(this.value);
    }
}
