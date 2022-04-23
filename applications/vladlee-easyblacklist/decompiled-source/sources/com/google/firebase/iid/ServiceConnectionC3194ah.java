package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* renamed from: com.google.firebase.iid.ah */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ah.class */
public final class ServiceConnectionC3194ah implements ServiceConnection {

    /* renamed from: a */
    private final Context f19070a;

    /* renamed from: b */
    private final Intent f19071b;

    /* renamed from: c */
    private final ScheduledExecutorService f19072c;

    /* renamed from: d */
    private final Queue<C3190ad> f19073d;

    /* renamed from: e */
    private BinderC3192af f19074e;

    /* renamed from: f */
    private boolean f19075f;

    public ServiceConnectionC3194ah(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    private ServiceConnectionC3194ah(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f19073d = new ArrayDeque();
        this.f19075f = false;
        this.f19070a = context.getApplicationContext();
        this.f19071b = new Intent(str).setPackage(this.f19070a.getPackageName());
        this.f19072c = scheduledExecutorService;
    }

    /* renamed from: a */
    private final void m522a() {
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "flush queue called");
            }
            while (!this.f19073d.isEmpty()) {
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "found intent to be delivered");
                }
                if (this.f19074e == null || !this.f19074e.isBinderAlive()) {
                    if (Log.isLoggable("EnhancedIntentService", 3)) {
                        boolean z = !this.f19075f;
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("binder is dead. start connection? ");
                        sb.append(z);
                        Log.d("EnhancedIntentService", sb.toString());
                    }
                    if (!this.f19075f) {
                        this.f19075f = true;
                        try {
                        } catch (SecurityException e) {
                            Log.e("EnhancedIntentService", "Exception while binding the service", e);
                        }
                        if (!ConnectionTracker.getInstance().bindService(this.f19070a, this.f19071b, this, 65)) {
                            Log.e("EnhancedIntentService", "binding to the service failed");
                            this.f19075f = false;
                            m520b();
                        } else {
                            return;
                        }
                    }
                    return;
                }
                if (Log.isLoggable("EnhancedIntentService", 3)) {
                    Log.d("EnhancedIntentService", "binder is alive, sending the intent.");
                }
                this.f19074e.m528a(this.f19073d.poll());
            }
        }
    }

    /* renamed from: b */
    private final void m520b() {
        while (!this.f19073d.isEmpty()) {
            this.f19073d.poll().m529a();
        }
    }

    /* renamed from: a */
    public final void m521a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "new intent queued in the bind-strategy delivery");
            }
            this.f19073d.add(new C3190ad(intent, pendingResult, this.f19072c));
            m522a();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                String valueOf = String.valueOf(componentName);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("onServiceConnected: ");
                sb.append(valueOf);
                Log.d("EnhancedIntentService", sb.toString());
            }
            this.f19075f = false;
            if (!(iBinder instanceof BinderC3192af)) {
                String valueOf2 = String.valueOf(iBinder);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 28);
                sb2.append("Invalid service connection: ");
                sb2.append(valueOf2);
                Log.e("EnhancedIntentService", sb2.toString());
                m520b();
                return;
            }
            this.f19074e = (BinderC3192af) iBinder;
            m522a();
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
        m522a();
    }
}
