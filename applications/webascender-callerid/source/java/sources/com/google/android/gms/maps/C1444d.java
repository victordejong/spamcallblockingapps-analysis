package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.maps.model.C1462b;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p028g.AbstractC1455l;
import com.google.android.gms.maps.p028g.C1454k;
/* renamed from: com.google.android.gms.maps.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/d.class */
public final class C1444d {

    /* renamed from: a */
    private static boolean f4020a = false;

    /* renamed from: a */
    public static int m1775a(Context context) {
        synchronized (C1444d.class) {
            try {
                C0931r.m3307l(context, "Context is null");
                if (f4020a) {
                    return 0;
                }
                try {
                    AbstractC1455l m1746a = C1454k.m1746a(context);
                    try {
                        C1437b.m1791c(m1746a.m1741d());
                        C1462b.m1725b(m1746a.m1739k());
                        f4020a = true;
                        return 0;
                    } catch (RemoteException e) {
                        throw new RuntimeRemoteException(e);
                    }
                } catch (GooglePlayServicesNotAvailableException e2) {
                    return e2.f3320f;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
