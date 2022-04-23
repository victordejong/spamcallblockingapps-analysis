package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.firebase.iid.x */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/x.class */
public final class C3233x {

    /* renamed from: a */
    private static C3233x f19152a;

    /* renamed from: b */
    private String f19153b = null;

    /* renamed from: c */
    private Boolean f19154c = null;

    /* renamed from: d */
    private Boolean f19155d = null;

    /* renamed from: e */
    private final Queue<Intent> f19156e = new ArrayDeque();

    private C3233x() {
    }

    /* renamed from: a */
    public static C3233x m439a() {
        C3233x xVar;
        synchronized (C3233x.class) {
            try {
                if (f19152a == null) {
                    f19152a = new C3233x();
                }
                xVar = f19152a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xVar;
    }

    /* renamed from: b */
    private final int m435b(Context context, Intent intent) {
        ComponentName componentName;
        String c = m434c(context, intent);
        if (c != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(c);
                Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Restricting intent to a specific service: ".concat(valueOf) : new String("Restricting intent to a specific service: "));
            }
            intent.setClassName(context.getPackageName(), c);
        }
        try {
            if (m438a(context)) {
                componentName = WakefulBroadcastReceiver.startWakefulService(context, intent);
            } else {
                componentName = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            }
            if (componentName != null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (IllegalStateException e) {
            String valueOf2 = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 45);
            sb.append("Failed to start service while in background: ");
            sb.append(valueOf2);
            Log.e("FirebaseInstanceId", sb.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", e2);
            return 401;
        }
    }

    /* renamed from: c */
    private final String m434c(Context context, Intent intent) {
        String str;
        synchronized (this) {
            if (this.f19153b != null) {
                return this.f19153b;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (!(resolveService == null || resolveService.serviceInfo == null)) {
                ServiceInfo serviceInfo = resolveService.serviceInfo;
                if (context.getPackageName().equals(serviceInfo.packageName) && serviceInfo.name != null) {
                    if (serviceInfo.name.startsWith(".")) {
                        String valueOf = String.valueOf(context.getPackageName());
                        String valueOf2 = String.valueOf(serviceInfo.name);
                        str = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                    } else {
                        str = serviceInfo.name;
                    }
                    this.f19153b = str;
                    return this.f19153b;
                }
                String str2 = serviceInfo.packageName;
                String str3 = serviceInfo.name;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length());
                sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                sb.append(str2);
                sb.append("/");
                sb.append(str3);
                Log.e("FirebaseInstanceId", sb.toString());
                return null;
            }
            Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        }
    }

    /* renamed from: a */
    public final int m437a(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Starting service");
        }
        this.f19156e.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return m435b(context, intent2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m438a(Context context) {
        if (this.f19154c == null) {
            this.f19154c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f19154c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f19154c.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m436b(Context context) {
        if (this.f19155d == null) {
            this.f19155d = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f19154c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f19155d.booleanValue();
    }
}
