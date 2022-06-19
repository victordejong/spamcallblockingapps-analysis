package com.google.android.gms.maps;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.maps.model.C1463c;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.d;
import com.google.android.gms.maps.p028g.AbstractC1448b;
import g.f.a.d.c.j.g;
/* renamed from: com.google.android.gms.maps.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c.class */
public final class C1438c {

    /* renamed from: a */
    private final AbstractC1448b f4019a;

    /* renamed from: com.google.android.gms.maps.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c$a.class */
    public interface AbstractC1439a {
        /* renamed from: a */
        View m1781a(C1463c c1463c);

        /* renamed from: b */
        View m1780b(C1463c c1463c);
    }

    /* renamed from: com.google.android.gms.maps.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c$b.class */
    public interface AbstractC1440b {
        /* renamed from: G */
        void m1779G();
    }

    /* renamed from: com.google.android.gms.maps.c$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c$c.class */
    public interface AbstractC1441c {
        /* renamed from: n */
        void m1778n();
    }

    /* renamed from: com.google.android.gms.maps.c$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c$d.class */
    public interface AbstractC1442d {
        /* renamed from: v */
        void m1777v(int i);
    }

    /* renamed from: com.google.android.gms.maps.c$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/c$e.class */
    public interface AbstractC1443e {
        /* renamed from: a */
        void m1776a(C1463c c1463c);
    }

    public C1438c(AbstractC1448b abstractC1448b) {
        C0931r.m3308k(abstractC1448b);
        this.f4019a = abstractC1448b;
    }

    /* renamed from: a */
    public final C1463c m1789a(d dVar) {
        try {
            g m1771A2 = this.f4019a.m1771A2(dVar);
            if (m1771A2 == null) {
                return null;
            }
            return new C1463c(m1771A2);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final CameraPosition m1788b() {
        try {
            return this.f4019a.m1764x0();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: c */
    public final void m1787c(C1436a c1436a) {
        try {
            this.f4019a.m1765w0(c1436a.m1794a());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: d */
    public final void m1786d(AbstractC1439a abstractC1439a) {
        try {
            if (abstractC1439a == null) {
                this.f4019a.m1766q2(null);
            } else {
                this.f4019a.m1766q2(new k(this, abstractC1439a));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: e */
    public final void m1785e(AbstractC1440b abstractC1440b) {
        try {
            if (abstractC1440b == null) {
                this.f4019a.m1767p1(null);
            } else {
                this.f4019a.m1767p1(new n(this, abstractC1440b));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: f */
    public final void m1784f(AbstractC1441c abstractC1441c) {
        try {
            if (abstractC1441c == null) {
                this.f4019a.m1770R1(null);
            } else {
                this.f4019a.m1770R1(new m(this, abstractC1441c));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: g */
    public final void m1783g(AbstractC1442d abstractC1442d) {
        try {
            if (abstractC1442d == null) {
                this.f4019a.m1769W(null);
            } else {
                this.f4019a.m1769W(new l(this, abstractC1442d));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: h */
    public final void m1782h(AbstractC1443e abstractC1443e) {
        try {
            if (abstractC1443e == null) {
                this.f4019a.m1768i2(null);
            } else {
                this.f4019a.m1768i2(new j(this, abstractC1443e));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
