package com.google.android.gms.maps.p028g;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* renamed from: com.google.android.gms.maps.g.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/g/k.class */
public class C1454k {

    /* renamed from: a */
    private static final String f4046a = "k";

    /* renamed from: b */
    private static Context f4047b;

    /* renamed from: c */
    private static AbstractC1455l f4048c;

    /* renamed from: a */
    public static AbstractC1455l m1746a(Context context) throws GooglePlayServicesNotAvailableException {
        AbstractC1455l abstractC1455l;
        C0931r.m3308k(context);
        AbstractC1455l abstractC1455l2 = f4048c;
        if (abstractC1455l2 != null) {
            return abstractC1455l2;
        }
        int h = g.h(context, 13400000);
        if (h != 0) {
            throw new GooglePlayServicesNotAvailableException(h);
        }
        Log.i(f4046a, "Making Creator dynamically");
        IBinder iBinder = (IBinder) m1744c(m1743d(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
        if (iBinder == null) {
            abstractC1455l = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            abstractC1455l = queryLocalInterface instanceof AbstractC1455l ? (AbstractC1455l) queryLocalInterface : new m(iBinder);
        }
        f4048c = abstractC1455l;
        try {
            abstractC1455l.m1740h2(d.F(m1743d(context).getResources()), g.f);
            return f4048c;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    private static <T> T m1745b(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf2) : new String("Unable to instantiate the dynamic class "));
        }
    }

    /* renamed from: c */
    private static <T> T m1744c(ClassLoader classLoader, String str) {
        try {
            C0931r.m3308k(classLoader);
            return (T) m1745b(classLoader.loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    /* renamed from: d */
    private static Context m1743d(Context context) {
        Context context2 = f4047b;
        if (context2 != null) {
            return context2;
        }
        Context m1742e = m1742e(context);
        f4047b = m1742e;
        return m1742e;
    }

    /* renamed from: e */
    private static Context m1742e(Context context) {
        Context context2;
        try {
            context2 = DynamiteModule.m3066e(context, DynamiteModule.f3633i, "com.google.android.gms.maps_dynamite").m3069b();
        } catch (Exception e) {
            Log.e(f4046a, "Failed to load maps module, use legacy", e);
            context2 = g.e(context);
        }
        return context2;
    }
}
