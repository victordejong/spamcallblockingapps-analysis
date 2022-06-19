package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import g.f.a.d.c.j.d;
/* renamed from: com.google.android.gms.maps.model.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/model/b.class */
public final class C1462b {

    /* renamed from: a */
    private static d f4054a;

    /* renamed from: a */
    public static C1461a m1726a(int i) {
        try {
            return new C1461a(m1724c().c(i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public static void m1725b(d dVar) {
        if (f4054a != null) {
            return;
        }
        C0931r.m3308k(dVar);
        f4054a = dVar;
    }

    /* renamed from: c */
    private static d m1724c() {
        d dVar = f4054a;
        C0931r.m3307l(dVar, "IBitmapDescriptorFactory is not initialized");
        return dVar;
    }
}
