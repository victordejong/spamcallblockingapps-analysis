package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq.class */
public final class zzdxq<T> implements zzdxp<T> {

    /* renamed from: a */
    private static final Object f14722a = new Object();

    /* renamed from: b */
    private volatile zzdxp<T> f14723b;

    /* renamed from: c */
    private volatile Object f14724c = f14722a;

    private zzdxq(zzdxp<T> zzdxpVar) {
        this.f14723b = zzdxpVar;
    }

    public static <P extends zzdxp<T>, T> zzdxp<T> zzan(P p) {
        return ((p instanceof zzdxq) || (p instanceof zzdxd)) ? p : new zzdxq((zzdxp) zzdxm.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final T get() {
        Object obj = this.f14724c;
        T t = (T) obj;
        if (obj == f14722a) {
            zzdxp<T> zzdxpVar = this.f14723b;
            if (zzdxpVar == null) {
                t = (T) this.f14724c;
            } else {
                t = zzdxpVar.get();
                this.f14724c = t;
                this.f14723b = null;
            }
        }
        return t;
    }
}
