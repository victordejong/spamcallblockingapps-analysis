package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4641a3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4871z2;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzej.class */
public final class zzej<V> {

    /* renamed from: h */
    public static final Object f29909h = new Object();

    /* renamed from: a */
    public final String f29910a;

    /* renamed from: b */
    public final AbstractC4641a3<V> f29911b;

    /* renamed from: c */
    public final V f29912c;

    /* renamed from: d */
    public final V f29913d;

    /* renamed from: e */
    public final Object f29914e;

    /* renamed from: f */
    public volatile V f29915f;

    /* renamed from: g */
    public volatile V f29916g;

    public zzej(String str, V v, V v2, AbstractC4641a3<V> a3Var) {
        this.f29914e = new Object();
        this.f29915f = null;
        this.f29916g = null;
        this.f29910a = str;
        this.f29912c = v;
        this.f29913d = v2;
        this.f29911b = a3Var;
    }

    /* renamed from: a */
    public final V m9196a(V v) {
        List<zzej> list;
        synchronized (this.f29914e) {
        }
        if (v != null) {
            return v;
        }
        if (C4871z2.f17489a == null) {
            return this.f29912c;
        }
        synchronized (f29909h) {
            if (zzw.m8665a()) {
                return this.f29916g == null ? this.f29912c : this.f29916g;
            }
            try {
                list = zzas.f29857a;
                for (zzej zzejVar : list) {
                    if (!zzw.m8665a()) {
                        V v2 = null;
                        try {
                            if (zzejVar.f29911b != null) {
                                v2 = zzejVar.f29911b.zza();
                            }
                        } catch (IllegalStateException e) {
                            v2 = null;
                        }
                        synchronized (f29909h) {
                            zzejVar.f29916g = v2;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC4641a3<V> a3Var = this.f29911b;
            if (a3Var == null) {
                return this.f29912c;
            }
            try {
                return a3Var.zza();
            } catch (IllegalStateException e3) {
                return this.f29912c;
            } catch (SecurityException e4) {
                return this.f29912c;
            }
        }
    }

    /* renamed from: a */
    public final String m9197a() {
        return this.f29910a;
    }
}
