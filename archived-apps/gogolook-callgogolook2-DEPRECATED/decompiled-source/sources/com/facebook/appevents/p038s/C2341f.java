package com.facebook.appevents.p038s;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.f */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/f.class */
public class C2341f {

    /* renamed from: a */
    public static final String f2850a = "com.facebook.appevents.s.f";

    /* renamed from: b */
    public static final AtomicBoolean f2851b = new AtomicBoolean(false);

    /* renamed from: c */
    public static Boolean f2852c = null;

    /* renamed from: d */
    public static Boolean f2853d = null;

    /* renamed from: e */
    public static ServiceConnection f2854e;

    /* renamed from: f */
    public static Application.ActivityLifecycleCallbacks f2855f;

    /* renamed from: g */
    public static Intent f2856g;

    /* renamed from: h */
    public static Object f2857h;

    /* renamed from: com.facebook.appevents.s.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/f$a.class */
    public static final class ServiceConnectionC2342a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Object unused = C2341f.f2857h = C2346g.m35106a(C6135n.m23746e(), iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.facebook.appevents.s.f$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/f$b.class */
    public static final class C2343b implements Application.ActivityLifecycleCallbacks {

        /* renamed from: com.facebook.appevents.s.f$b$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/f$b$a.class */
        public class RunnableC2344a implements Runnable {
            public RunnableC2344a(C2343b bVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context e = C6135n.m23746e();
                C2341f.m35111b(e, C2346g.m35096b(e, C2341f.f2857h), false);
                C2341f.m35111b(e, C2346g.m35092c(e, C2341f.f2857h), true);
            }
        }

        /* renamed from: com.facebook.appevents.s.f$b$b */
        /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/f$b$b.class */
        public class RunnableC2345b implements Runnable {
            public RunnableC2345b(C2343b bVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context e = C6135n.m23746e();
                ArrayList<String> b = C2346g.m35096b(e, C2341f.f2857h);
                ArrayList<String> arrayList = b;
                if (b.isEmpty()) {
                    arrayList = C2346g.m35105a(e, C2341f.f2857h);
                }
                C2341f.m35111b(e, arrayList, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                C6135n.m23737n().execute(new RunnableC2344a(this));
            } catch (Exception e) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                if (C2341f.f2853d.booleanValue() && activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                    C6135n.m23737n().execute(new RunnableC2345b(this));
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    public static void m35111b(Context context, ArrayList<String> arrayList, boolean z) {
        if (!arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    String string = new JSONObject(next).getString("productId");
                    hashMap.put(string, next);
                    arrayList2.add(string);
                } catch (JSONException e) {
                    Log.e(f2850a, "Error parsing in-app purchase data.", e);
                }
            }
            for (Map.Entry<String, String> entry : C2346g.m35101a(context, arrayList2, f2857h, z).entrySet()) {
                C2338d.m35118a((String) hashMap.get(entry.getKey()), entry.getValue(), z);
            }
        }
    }

    /* renamed from: c */
    public static void m35110c() {
        if (f2852c == null) {
            try {
                Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
                f2852c = true;
                try {
                    Class.forName("com.android.billingclient.api.ProxyBillingActivity");
                    f2853d = true;
                } catch (ClassNotFoundException e) {
                    f2853d = false;
                }
                C2346g.m35107a();
                f2856g = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                f2854e = new ServiceConnectionC2342a();
                f2855f = new C2343b();
            } catch (ClassNotFoundException e2) {
                f2852c = false;
            }
        }
    }

    /* renamed from: d */
    public static void m35109d() {
        if (f2851b.compareAndSet(false, true)) {
            Context e = C6135n.m23746e();
            if (e instanceof Application) {
                ((Application) e).registerActivityLifecycleCallbacks(f2855f);
                e.bindService(f2856g, f2854e, 1);
            }
        }
    }

    /* renamed from: e */
    public static void m35108e() {
        m35110c();
        if (f2852c.booleanValue() && C2338d.m35122a()) {
            m35109d();
        }
    }
}
