package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.stats.C0955a;
import g.f.a.d.c.f.e;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.cloudmessaging.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/j.class */
public final class ServiceConnectionC0793j implements ServiceConnection {

    /* renamed from: a */
    int f3296a;

    /* renamed from: b */
    final Messenger f3297b;

    /* renamed from: c */
    C0801s f3298c;

    /* renamed from: d */
    final Queue<AbstractC0802t<?>> f3299d;

    /* renamed from: e */
    final SparseArray<AbstractC0802t<?>> f3300e;

    /* renamed from: f */
    final /* synthetic */ C0792i f3301f;

    /* JADX INFO: Access modifiers changed from: private */
    public ServiceConnectionC0793j(C0792i c0792i) {
        this.f3301f = c0792i;
        this.f3296a = 0;
        this.f3297b = new Messenger((Handler) new e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.m

            /* renamed from: a */
            private final ServiceConnectionC0793j f3303a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3303a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f3303a.m3711d(message);
            }
        }));
        this.f3299d = new ArrayDeque();
        this.f3300e = new SparseArray<>();
    }

    /* renamed from: a */
    public final void m3714a() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f3301f.f3293b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.n

            /* renamed from: f */
            private final ServiceConnectionC0793j f3304f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3304f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final AbstractC0802t poll;
                final ServiceConnectionC0793j serviceConnectionC0793j = this.f3304f;
                while (true) {
                    synchronized (serviceConnectionC0793j) {
                        if (serviceConnectionC0793j.f3296a != 2) {
                            return;
                        }
                        if (serviceConnectionC0793j.f3299d.isEmpty()) {
                            serviceConnectionC0793j.m3709f();
                            return;
                        }
                        poll = serviceConnectionC0793j.f3299d.poll();
                        serviceConnectionC0793j.f3300e.put(poll.f3312a, poll);
                        C0792i.m3715g(serviceConnectionC0793j.f3301f).schedule(new Runnable(serviceConnectionC0793j, poll) { // from class: com.google.android.gms.cloudmessaging.p

                            /* renamed from: f */
                            private final ServiceConnectionC0793j f3307f;

                            /* renamed from: g */
                            private final AbstractC0802t f3308g;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f3307f = serviceConnectionC0793j;
                                this.f3308g = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f3307f.m3713b(this.f3308g.f3312a);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context m3720b = C0792i.m3720b(serviceConnectionC0793j.f3301f);
                    Messenger messenger = serviceConnectionC0793j.f3297b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f3314c;
                    obtain.arg1 = poll.f3312a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.m3703d());
                    bundle.putString("pkg", m3720b.getPackageName());
                    bundle.putBundle("data", poll.f3315d);
                    obtain.setData(bundle);
                    try {
                        serviceConnectionC0793j.f3298c.m3707a(obtain);
                    } catch (RemoteException e) {
                        serviceConnectionC0793j.m3712c(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* renamed from: b */
    public final void m3713b(int i) {
        synchronized (this) {
            AbstractC0802t<?> abstractC0802t = this.f3300e.get(i);
            if (abstractC0802t != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f3300e.remove(i);
                abstractC0802t.m3705b(new zzp(3, "Timed out waiting for response"));
                m3709f();
            }
        }
    }

    /* renamed from: c */
    public final void m3712c(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f3296a;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        this.f3296a = 4;
                        return;
                    } else if (i2 == 4) {
                        return;
                    } else {
                        int i3 = this.f3296a;
                        StringBuilder sb = new StringBuilder(26);
                        sb.append("Unknown state: ");
                        sb.append(i3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f3296a = 4;
                C0955a m3193b = C0955a.m3193b();
                context = this.f3301f.f3292a;
                m3193b.m3192c(context, this);
                zzp zzpVar = new zzp(i, str);
                for (AbstractC0802t<?> abstractC0802t : this.f3299d) {
                    abstractC0802t.m3705b(zzpVar);
                }
                this.f3299d.clear();
                for (int i4 = 0; i4 < this.f3300e.size(); i4++) {
                    this.f3300e.valueAt(i4).m3705b(zzpVar);
                }
                this.f3300e.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: d */
    public final boolean m3711d(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            AbstractC0802t<?> abstractC0802t = this.f3300e.get(i);
            if (abstractC0802t == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f3300e.remove(i);
            m3709f();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                abstractC0802t.m3705b(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            abstractC0802t.m3706a(data);
            return true;
        }
    }

    /* renamed from: e */
    public final boolean m3710e(AbstractC0802t<?> abstractC0802t) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.f3296a;
            if (i == 0) {
                this.f3299d.add(abstractC0802t);
                C0931r.m3305n(this.f3296a == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.f3296a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                C0955a m3193b = C0955a.m3193b();
                context = this.f3301f.f3292a;
                if (!m3193b.m3194a(context, intent, this, 1)) {
                    m3712c(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.f3301f.f3293b;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.l

                        /* renamed from: f */
                        private final ServiceConnectionC0793j f3302f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f3302f = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f3302f.m3708g();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f3299d.add(abstractC0802t);
                return true;
            } else if (i == 2) {
                this.f3299d.add(abstractC0802t);
                m3714a();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f3296a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* renamed from: f */
    public final void m3709f() {
        Context context;
        synchronized (this) {
            if (this.f3296a == 2 && this.f3299d.isEmpty() && this.f3300e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f3296a = 3;
                C0955a m3193b = C0955a.m3193b();
                context = this.f3301f.f3292a;
                m3193b.m3192c(context, this);
            }
        }
    }

    /* renamed from: g */
    public final void m3708g() {
        synchronized (this) {
            if (this.f3296a == 1) {
                m3712c(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.f3301f.f3293b;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.o

            /* renamed from: f */
            private final ServiceConnectionC0793j f3305f;

            /* renamed from: g */
            private final IBinder f3306g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3305f = this;
                this.f3306g = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC0793j serviceConnectionC0793j = this.f3305f;
                IBinder iBinder2 = this.f3306g;
                synchronized (serviceConnectionC0793j) {
                    if (iBinder2 == null) {
                        serviceConnectionC0793j.m3712c(0, "Null service connection");
                        return;
                    }
                    try {
                        serviceConnectionC0793j.f3298c = new C0801s(iBinder2);
                        serviceConnectionC0793j.f3296a = 2;
                        serviceConnectionC0793j.m3714a();
                    } catch (RemoteException e) {
                        serviceConnectionC0793j.m3712c(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        scheduledExecutorService = this.f3301f.f3293b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.q

            /* renamed from: f */
            private final ServiceConnectionC0793j f3309f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3309f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f3309f.m3712c(2, "Service disconnected");
            }
        });
    }
}
