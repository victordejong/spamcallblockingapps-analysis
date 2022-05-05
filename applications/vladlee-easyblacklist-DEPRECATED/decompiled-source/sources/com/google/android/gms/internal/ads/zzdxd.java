package com.google.android.gms.internal.ads;

import androidx.appcompat.C0247a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxd.class */
public final class zzdxd<T> implements zzdxa<T>, zzdxp<T> {

    /* renamed from: a */
    private static final Object f14710a = new Object();

    /* renamed from: b */
    private volatile zzdxp<T> f14711b;

    /* renamed from: c */
    private volatile Object f14712c = f14710a;

    private zzdxd(zzdxp<T> zzdxpVar) {
        this.f14711b = zzdxpVar;
    }

    public static <P extends zzdxp<T>, T> zzdxp<T> zzan(P p) {
        zzdxm.checkNotNull(p);
        return p instanceof zzdxd ? p : new zzdxd(p);
    }

    public static <P extends zzdxp<T>, T> zzdxa<T> zzao(P p) {
        return p instanceof zzdxa ? (zzdxa) p : new zzdxd((zzdxp) zzdxm.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzdxa, com.google.android.gms.internal.ads.zzdxp
    public final T get() {
        Object obj = this.f14712c;
        T t = (T) obj;
        if (obj == f14710a) {
            synchronized (this) {
                Object obj2 = this.f14712c;
                t = obj2;
                if (obj2 == f14710a) {
                    t = this.f14711b.get();
                    Object obj3 = this.f14712c;
                    if (!(obj3 != f14710a && !(obj3 instanceof zzdxj)) || obj3 == t) {
                        this.f14712c = t;
                        this.f14711b = null;
                    } else {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + C0247a.C0257j.f776aJ + String.valueOf(valueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
        }
        return t;
    }
}
