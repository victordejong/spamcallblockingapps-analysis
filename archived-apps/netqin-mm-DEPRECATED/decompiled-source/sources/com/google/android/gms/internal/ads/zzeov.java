package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeov.class */
public final class zzeov<T> implements zzeos<T>, zzeph<T> {

    /* renamed from: c */
    public static final Object f28138c = new Object();

    /* renamed from: a */
    public volatile zzeph<T> f28139a;

    /* renamed from: b */
    public volatile Object f28140b = f28138c;

    public zzeov(zzeph<T> zzephVar) {
        this.f28139a = zzephVar;
    }

    /* renamed from: a */
    public static <P extends zzeph<T>, T> zzeph<T> m12198a(P p) {
        zzepe.m12189a(p);
        return p instanceof zzeov ? p : new zzeov(p);
    }

    /* renamed from: b */
    public static <P extends zzeph<T>, T> zzeos<T> m12197b(P p) {
        if (p instanceof zzeos) {
            return (zzeos) p;
        }
        zzepe.m12189a(p);
        return new zzeov(p);
    }

    @Override // com.google.android.gms.internal.ads.zzeos, com.google.android.gms.internal.ads.zzeph
    public final T get() {
        Object obj = this.f28140b;
        T t = (T) obj;
        if (obj == f28138c) {
            synchronized (this) {
                Object obj2 = this.f28140b;
                t = obj2;
                if (obj2 == f28138c) {
                    t = this.f28139a.get();
                    Object obj3 = this.f28140b;
                    if (!(obj3 != f28138c && !(obj3 instanceof zzepb)) || obj3 == t) {
                        this.f28140b = t;
                        this.f28139a = null;
                    } else {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
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
