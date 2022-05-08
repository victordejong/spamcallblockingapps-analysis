package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzk.class */
public final class zzk implements ServiceConnection {

    /* renamed from: a */
    private final Context f7788a;

    /* renamed from: b */
    private final Intent f7789b;

    /* renamed from: c */
    private final ScheduledExecutorService f7790c;

    /* renamed from: d */
    private final Queue<zzg> f7791d;

    /* renamed from: e */
    private zzi f7792e;
    @GuardedBy

    /* renamed from: f */
    private boolean f7793f;

    public zzk(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("EnhancedIntentService")));
    }

    @VisibleForTesting
    private zzk(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f7791d = new ArrayDeque();
        this.f7793f = false;
        this.f7788a = context.getApplicationContext();
        this.f7789b = new Intent(str).setPackage(this.f7788a.getPackageName());
        this.f7790c = scheduledExecutorService;
    }

    /* renamed from: b */
    private final void m14140b() {
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "flush queue called");
            }
            while (!this.f7791d.isEmpty()) {
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "found intent to be delivered");
                }
                if (this.f7792e == null || !this.f7792e.isBinderAlive()) {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        boolean z = !this.f7793f;
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("binder is dead. start connection? ");
                        sb.append(z);
                        Log.d("EnhancedIntentService", sb.toString());
                    }
                    if (!this.f7793f) {
                        this.f7793f = true;
                        try {
                        } catch (SecurityException e) {
                            Log.e("EnhancedIntentService", "Exception while binding the service", e);
                        }
                        if (!ConnectionTracker.m14372b().m14373a(this.f7788a, this.f7789b, this, 65)) {
                            Log.e("EnhancedIntentService", "binding to the service failed");
                            this.f7793f = false;
                            m14139c();
                        } else {
                            return;
                        }
                    }
                    return;
                }
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "binder is alive, sending the intent.");
                }
                this.f7792e.m14142b(this.f7791d.poll());
            }
        }
    }

    @GuardedBy
    /* renamed from: c */
    private final void m14139c() {
        while (!this.f7791d.isEmpty()) {
            this.f7791d.poll().m14144a();
        }
    }

    /* renamed from: a */
    public final void m14141a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
            }
            this.f7791d.add(new zzg(intent, pendingResult, this.f7790c));
            m14140b();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.f7793f = false;
            this.f7792e = (zzi) iBinder;
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
                Log.d("EnhancedIntentService", sb.toString());
            }
            if (iBinder == null) {
                Log.e("EnhancedIntentService", "Null service connection");
                m14139c();
            } else {
                m14140b();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            String valueOf = String.valueOf(componentName);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("onServiceDisconnected: ");
            sb.append(valueOf);
            Log.d("EnhancedIntentService", sb.toString());
        }
        m14140b();
    }
}
