package com.google.android.gms.measurement.internal;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzel.class */
public final class zzel<V> {

    /* renamed from: f */
    private static final Object f17114f = new Object();

    /* renamed from: a */
    private final String f17115a;

    /* renamed from: b */
    private final AbstractC2724de<V> f17116b;

    /* renamed from: c */
    private final V f17117c;

    /* renamed from: d */
    private final V f17118d;

    /* renamed from: e */
    private final Object f17119e;

    /* renamed from: g */
    private volatile V f17120g;

    /* renamed from: h */
    private volatile V f17121h;

    private zzel(String str, V v, V v2, AbstractC2724de<V> deVar) {
        this.f17119e = new Object();
        this.f17120g = null;
        this.f17121h = null;
        this.f17115a = str;
        this.f17117c = v;
        this.f17118d = v2;
        this.f17116b = deVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzel(String str, Object obj, Object obj2, AbstractC2724de deVar, byte b) {
        this(str, obj, obj2, deVar);
    }

    public final V zza(V v) {
        List<zzel> list;
        synchronized (this.f17119e) {
            V v2 = this.f17120g;
        }
        if (v != null) {
            return v;
        }
        if (C2725df.f16650a == null) {
            return this.f17117c;
        }
        synchronized (f17114f) {
            if (zzw.zza()) {
                return this.f17121h == null ? this.f17117c : this.f17121h;
            }
            try {
                list = zzap.f17107a;
                for (zzel zzelVar : list) {
                    if (!zzw.zza()) {
                        V v3 = null;
                        try {
                            if (zzelVar.f17116b != null) {
                                v3 = zzelVar.f17116b.mo2003a();
                            }
                        } catch (IllegalStateException e) {
                            v3 = null;
                        }
                        synchronized (f17114f) {
                            zzelVar.f17121h = v3;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC2724de<V> deVar = this.f17116b;
            if (deVar == null) {
                return this.f17117c;
            }
            try {
                return deVar.mo2003a();
            } catch (IllegalStateException e3) {
                return this.f17117c;
            } catch (SecurityException e4) {
                return this.f17117c;
            }
        }
    }

    public final String zza() {
        return this.f17115a;
    }
}
