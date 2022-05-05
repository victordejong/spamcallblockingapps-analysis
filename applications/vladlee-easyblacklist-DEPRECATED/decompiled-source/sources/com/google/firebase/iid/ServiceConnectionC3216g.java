package com.google.firebase.iid;

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
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.firebase_messaging.zze;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.g */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/g.class */
public final class ServiceConnectionC3216g implements ServiceConnection {

    /* renamed from: a */
    int f19111a;

    /* renamed from: b */
    final Messenger f19112b;

    /* renamed from: c */
    C3219j f19113c;

    /* renamed from: d */
    final Queue<AbstractC3221l<?>> f19114d;

    /* renamed from: e */
    final SparseArray<AbstractC3221l<?>> f19115e;

    /* renamed from: f */
    final /* synthetic */ C3214e f19116f;

    private ServiceConnectionC3216g(C3214e eVar) {
        this.f19116f = eVar;
        this.f19111a = 0;
        this.f19112b = new Messenger(new zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.f

            /* renamed from: a */
            private final ServiceConnectionC3216g f19110a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19110a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f19110a.m476a(message);
            }
        }));
        this.f19114d = new ArrayDeque();
        this.f19115e = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ServiceConnectionC3216g(C3214e eVar, byte b) {
        this(eVar);
    }

    /* renamed from: c */
    private final void m473c() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f19116f.f19107c;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.h

            /* renamed from: a */
            private final ServiceConnectionC3216g f19117a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19117a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final AbstractC3221l<?> poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final ServiceConnectionC3216g gVar = this.f19117a;
                while (true) {
                    synchronized (gVar) {
                        if (gVar.f19111a == 2) {
                            if (gVar.f19114d.isEmpty()) {
                                gVar.m479a();
                                return;
                            }
                            poll = gVar.f19114d.poll();
                            gVar.f19115e.put(poll.f19123a, poll);
                            scheduledExecutorService2 = gVar.f19116f.f19107c;
                            scheduledExecutorService2.schedule(new Runnable(gVar, poll) { // from class: com.google.firebase.iid.k

                                /* renamed from: a */
                                private final ServiceConnectionC3216g f19121a;

                                /* renamed from: b */
                                private final AbstractC3221l f19122b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f19121a = gVar;
                                    this.f19122b = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f19121a.m478a(this.f19122b.f19123a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        } else {
                            return;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    context = gVar.f19116f.f19106b;
                    Messenger messenger = gVar.f19112b;
                    Message obtain = Message.obtain();
                    obtain.what = poll.f19125c;
                    obtain.arg1 = poll.f19123a;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", false);
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", poll.f19126d);
                    obtain.setData(bundle);
                    try {
                        gVar.f19113c.m472a(obtain);
                    } catch (RemoteException e) {
                        gVar.m477a(2, e.getMessage());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m479a() {
        Context context;
        synchronized (this) {
            if (this.f19111a == 2 && this.f19114d.isEmpty() && this.f19115e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f19111a = 3;
                ConnectionTracker instance = ConnectionTracker.getInstance();
                context = this.f19116f.f19106b;
                instance.unbindService(context, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m478a(int i) {
        synchronized (this) {
            AbstractC3221l<?> lVar = this.f19115e.get(i);
            if (lVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f19115e.remove(i);
                lVar.m471a(new C3223n(3, "Timed out waiting for response"));
                m479a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m477a(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f19111a;
            if (i2 == 0) {
                throw new IllegalStateException();
            } else if (i2 == 1 || i2 == 2) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f19111a = 4;
                ConnectionTracker instance = ConnectionTracker.getInstance();
                context = this.f19116f.f19106b;
                instance.unbindService(context, this);
                C3223n nVar = new C3223n(i, str);
                for (AbstractC3221l<?> lVar : this.f19114d) {
                    lVar.m471a(nVar);
                }
                this.f19114d.clear();
                for (int i3 = 0; i3 < this.f19115e.size(); i3++) {
                    this.f19115e.valueAt(i3).m471a(nVar);
                }
                this.f19115e.clear();
            } else if (i2 == 3) {
                this.f19111a = 4;
            } else if (i2 != 4) {
                int i4 = this.f19111a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m476a(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            AbstractC3221l<?> lVar = this.f19115e.get(i);
            if (lVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f19115e.remove(i);
            m479a();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                lVar.m471a(new C3223n(4, "Not supported by GmsCore"));
                return true;
            }
            lVar.mo470a(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m475a(AbstractC3221l lVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.f19111a;
            if (i == 0) {
                this.f19114d.add(lVar);
                Preconditions.checkState(this.f19111a == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.f19111a = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                ConnectionTracker instance = ConnectionTracker.getInstance();
                context = this.f19116f.f19106b;
                if (!instance.bindService(context, intent, this, 1)) {
                    m477a(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.f19116f.f19107c;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.iid.i

                        /* renamed from: a */
                        private final ServiceConnectionC3216g f19118a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f19118a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f19118a.m474b();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.f19114d.add(lVar);
                return true;
            } else if (i == 2) {
                this.f19114d.add(lVar);
                m473c();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.f19111a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m474b() {
        synchronized (this) {
            if (this.f19111a == 1) {
                m477a(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service connected");
            }
            if (iBinder == null) {
                m477a(0, "Null service connection");
                return;
            }
            try {
                this.f19113c = new C3219j(iBinder);
                this.f19111a = 2;
                m473c();
            } catch (RemoteException e) {
                m477a(0, e.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service disconnected");
            }
            m477a(2, "Service disconnected");
        }
    }
}
