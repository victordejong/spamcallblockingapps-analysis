package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxf.class */
public final class zzdxf<T> implements zzdxa<T>, zzdxg<T> {

    /* renamed from: a */
    private static final zzdxf<Object> f14714a = new zzdxf<>(null);

    /* renamed from: b */
    private final T f14715b;

    private zzdxf(T t) {
        this.f14715b = t;
    }

    public static <T> zzdxg<T> zzbe(T t) {
        return new zzdxf(zzdxm.zza(t, "instance cannot be null"));
    }

    public static <T> zzdxg<T> zzbf(T t) {
        return t == null ? f14714a : new zzdxf(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdxa, com.google.android.gms.internal.ads.zzdxp
    public final T get() {
        return this.f14715b;
    }
}
