package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekl.class */
public enum zzekl {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzeip.class, zzeip.class, zzeip.zzier),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    
    public final Class<?> zzikn;
    public final Class<?> zziko;
    public final Object zzikp;

    zzekl(Class cls, Class cls2, Object obj) {
        this.zzikn = cls;
        this.zziko = cls2;
        this.zzikp = obj;
    }

    public final Class<?> zzbhg() {
        return this.zziko;
    }
}
