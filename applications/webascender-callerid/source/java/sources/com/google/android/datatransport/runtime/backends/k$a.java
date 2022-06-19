package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/k$a.class */
class k$a {

    /* renamed from: a */
    private final Context f3210a;

    /* renamed from: b */
    private Map<String, String> f3211b = null;

    k$a(Context context) {
        this.f3210a = context;
    }

    /* renamed from: a */
    private Map<String, String> m3833a(Context context) {
        Bundle m3830d = m3830d(context);
        if (m3830d == null) {
            Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : m3830d.keySet()) {
            Object obj = m3830d.get(str);
            if ((obj instanceof String) && str.startsWith("backend:")) {
                for (String str2 : ((String) obj).split(",", -1)) {
                    String trim = str2.trim();
                    if (!trim.isEmpty()) {
                        hashMap.put(trim, str.substring(8));
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    private Map<String, String> m3831c() {
        if (this.f3211b == null) {
            this.f3211b = m3833a(this.f3210a);
        }
        return this.f3211b;
    }

    /* renamed from: d */
    private static Bundle m3830d(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("BackendRegistry", "Context has no PackageManager.");
                return null;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
            if (serviceInfo != null) {
                return serviceInfo.metaData;
            }
            Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("BackendRegistry", "Application info not found.");
            return null;
        }
    }

    /* renamed from: b */
    AbstractC0738d m3832b(String str) {
        String str2 = m3831c().get(str);
        if (str2 == null) {
            return null;
        }
        try {
            return (AbstractC0738d) Class.forName(str2).asSubclass(AbstractC0738d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e);
            return null;
        } catch (IllegalAccessException e2) {
            Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e2);
            return null;
        } catch (InstantiationException e3) {
            Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e3);
            return null;
        } catch (NoSuchMethodException e4) {
            Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e4);
            return null;
        } catch (InvocationTargetException e5) {
            Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e5);
            return null;
        }
    }
}
