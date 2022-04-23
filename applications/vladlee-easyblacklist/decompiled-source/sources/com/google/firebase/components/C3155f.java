package com.google.firebase.components;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.firebase.components.f */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/f.class */
public final class C3155f<T> {

    /* renamed from: a */
    private final T f18995a;

    /* renamed from: b */
    private final AbstractC3157b<T> f18996b;

    /* renamed from: com.google.firebase.components.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/f$a.class */
    private static final class C3156a implements AbstractC3157b<Context> {
        private C3156a() {
        }

        /* synthetic */ C3156a(byte b) {
            this();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        private static Bundle m615a(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, ComponentDiscoveryService.class), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("ComponentDiscovery", "ComponentDiscoveryService has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.C3155f.AbstractC3157b
        /* renamed from: a */
        public final /* synthetic */ List mo614a(Context context) {
            Bundle a = m615a(context);
            if (a == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : a.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(a.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.google.firebase.components.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/f$b.class */
    interface AbstractC3157b<T> {
        /* renamed from: a */
        List<String> mo614a(T t);
    }

    private C3155f(T t, AbstractC3157b<T> bVar) {
        this.f18995a = t;
        this.f18996b = bVar;
    }

    /* renamed from: a */
    public static C3155f<Context> m617a(Context context) {
        return new C3155f<>(context, new C3156a((byte) 0));
    }

    /* renamed from: a */
    private static List<AbstractC3159h> m616a(List<String> list) {
        Throwable e;
        String str;
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            try {
                Class<?> cls = Class.forName(str2);
                if (!AbstractC3159h.class.isAssignableFrom(cls)) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str2, "com.google.firebase.components.ComponentRegistrar"));
                } else {
                    arrayList.add((AbstractC3159h) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
            } catch (ClassNotFoundException e2) {
                e = e2;
                str = String.format("Class %s is not an found.", str2);
                Log.w("ComponentDiscovery", str, e);
            } catch (IllegalAccessException e3) {
                e = e3;
                str = String.format("Could not instantiate %s.", str2);
                Log.w("ComponentDiscovery", str, e);
            } catch (InstantiationException e4) {
                e = e4;
                str = String.format("Could not instantiate %s.", str2);
                Log.w("ComponentDiscovery", str, e);
            } catch (NoSuchMethodException e5) {
                e = e5;
                str = String.format("Could not instantiate %s", str2);
                Log.w("ComponentDiscovery", str, e);
            } catch (InvocationTargetException e6) {
                e = e6;
                str = String.format("Could not instantiate %s", str2);
                Log.w("ComponentDiscovery", str, e);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<AbstractC3159h> m618a() {
        return m616a(this.f18996b.mo614a(this.f18995a));
    }
}
