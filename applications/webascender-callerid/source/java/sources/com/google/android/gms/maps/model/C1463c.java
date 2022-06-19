package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import g.f.a.d.c.j.g;
/* renamed from: com.google.android.gms.maps.model.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/model/c.class */
public final class C1463c {

    /* renamed from: a */
    private final g f4055a;

    public C1463c(g gVar) {
        C0931r.m3308k(gVar);
        this.f4055a = gVar;
    }

    /* renamed from: a */
    public final void m1723a(boolean z) {
        try {
            this.f4055a.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1463c)) {
            return false;
        }
        try {
            return this.f4055a.x1(((C1463c) obj).f4055a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f4055a.h();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
