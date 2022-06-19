package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.f0;
import com.google.android.gms.internal.firebase-auth-api.mp;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/m.class */
public class C1139m {

    /* renamed from: a */
    protected volatile f0 f3753a;

    /* renamed from: b */
    private volatile mp f3754b;

    static {
        C1011aq.m3024a();
    }

    /* renamed from: a */
    public final int m2745a() {
        if (this.f3754b != null) {
            return this.f3754b.i.length;
        }
        if (this.f3753a == null) {
            return 0;
        }
        return this.f3753a.g();
    }

    /* renamed from: b */
    public final mp m2744b() {
        if (this.f3754b != null) {
            return this.f3754b;
        }
        synchronized (this) {
            if (this.f3754b != null) {
                return this.f3754b;
            }
            if (this.f3753a == null) {
                this.f3754b = AbstractC1151mp.f3756g;
            } else {
                this.f3754b = this.f3753a.j();
            }
            return this.f3754b;
        }
    }

    /* renamed from: c */
    protected final void m2743c(f0 f0Var) {
        if (this.f3753a != null) {
            return;
        }
        synchronized (this) {
            if (this.f3753a != null) {
                return;
            }
            try {
                this.f3753a = f0Var;
                this.f3754b = AbstractC1151mp.f3756g;
            } catch (zzaal e) {
                this.f3753a = f0Var;
                this.f3754b = AbstractC1151mp.f3756g;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1139m)) {
            return false;
        }
        C1139m c1139m = (C1139m) obj;
        f0 f0Var = this.f3753a;
        f0 f0Var2 = c1139m.f3753a;
        if (f0Var == null && f0Var2 == null) {
            return m2744b().equals(c1139m.m2744b());
        }
        if (f0Var != null && f0Var2 != null) {
            return f0Var.equals(f0Var2);
        }
        if (f0Var != null) {
            c1139m.m2743c(f0Var.m2862q());
            return f0Var.equals(c1139m.f3753a);
        }
        m2743c(f0Var2.m2862q());
        return this.f3753a.equals(f0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
