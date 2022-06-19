package com.google.android.gms.internal.measurement;
/* JADX WARN: Init of enum zzb can be incorrect */
/* JADX WARN: Init of enum zzi can be incorrect */
/* renamed from: com.google.android.gms.internal.measurement.v6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/v6.class */
public enum EnumC1399v6 {
    VOID(Void.class, Void.class, null),
    INT(r0, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(AbstractC1351m5.class, AbstractC1351m5.class, AbstractC1351m5.f3935g),
    ENUM(r0, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    private final Class<?> zzk;
    private final Class<?> zzl;
    private final Object zzm;

    static {
        Class cls = Integer.TYPE;
    }

    EnumC1399v6(Class cls, Class cls2, Object obj) {
        this.zzk = cls;
        this.zzl = cls2;
        this.zzm = obj;
    }

    public final Class<?> zza() {
        return this.zzl;
    }
}
