package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzln.class */
public enum zzln {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(false),
    STRING(""),
    BYTE_STRING(zzgp.zza),
    ENUM(null),
    MESSAGE(null);
    
    public final Object zzj;

    zzln(Object obj) {
        this.zzj = obj;
    }
}
