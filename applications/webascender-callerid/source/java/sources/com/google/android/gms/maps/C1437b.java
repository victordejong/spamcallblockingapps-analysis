package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p028g.AbstractC1447a;
/* renamed from: com.google.android.gms.maps.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/b.class */
public final class C1437b {

    /* renamed from: a */
    private static AbstractC1447a f4018a;

    /* renamed from: a */
    public static C1436a m1793a(LatLng latLng) {
        try {
            return new C1436a(m1790d().m1772t0(latLng));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public static C1436a m1792b(LatLng latLng, float f) {
        try {
            return new C1436a(m1790d().m1773r2(latLng, f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: c */
    public static void m1791c(AbstractC1447a abstractC1447a) {
        C0931r.m3308k(abstractC1447a);
        f4018a = abstractC1447a;
    }

    /* renamed from: d */
    private static AbstractC1447a m1790d() {
        AbstractC1447a abstractC1447a = f4018a;
        C0931r.m3307l(abstractC1447a, "CameraUpdateFactory is not initialized");
        return abstractC1447a;
    }
}
