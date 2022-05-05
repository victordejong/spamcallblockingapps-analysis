package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsg.class */
public enum zzdsg {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zzdqk.class, zzdqk.class, zzdqk.zzhhx),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    

    /* renamed from: a */
    private final Class<?> f14572a;

    /* renamed from: b */
    private final Class<?> f14573b;

    /* renamed from: c */
    private final Object f14574c;

    zzdsg(Class cls, Class cls2, Object obj) {
        this.f14572a = cls;
        this.f14573b = cls2;
        this.f14574c = obj;
    }

    public final Class<?> zzbat() {
        return this.f14573b;
    }
}
