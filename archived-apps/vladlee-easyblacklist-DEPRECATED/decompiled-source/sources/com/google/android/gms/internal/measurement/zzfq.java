package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
public enum zzfq {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzdu.class, zzdu.class, zzdu.zza),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    

    /* renamed from: a */
    private final Class<?> f16292a;

    /* renamed from: b */
    private final Class<?> f16293b;

    /* renamed from: c */
    private final Object f16294c;

    zzfq(Class cls, Class cls2, Object obj) {
        this.f16292a = cls;
        this.f16293b = cls2;
        this.f16294c = obj;
    }

    public final Class<?> zza() {
        return this.f16293b;
    }
}
