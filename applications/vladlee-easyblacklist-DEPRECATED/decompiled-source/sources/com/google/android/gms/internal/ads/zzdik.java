package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdik.class */
public abstract class zzdik<PrimitiveT, KeyT> {

    /* renamed from: a */
    private final Class<PrimitiveT> f14314a;

    public zzdik(Class<PrimitiveT> cls) {
        this.f14314a = cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Class<PrimitiveT> m3531a() {
        return this.f14314a;
    }

    public abstract PrimitiveT zzak(KeyT keyt);
}
