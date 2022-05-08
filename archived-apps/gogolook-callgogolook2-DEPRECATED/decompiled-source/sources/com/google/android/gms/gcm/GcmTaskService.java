package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.concurrent.GuardedBy;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p235d.p249s.C7086r;
import p081h.p203i.p204a.p224e.p254g.AbstractC7136e;
import p081h.p203i.p204a.p224e.p254g.C7132a;
import p081h.p203i.p204a.p224e.p254g.C7133b;
import p081h.p203i.p204a.p224e.p254g.C7137f;
import p081h.p203i.p204a.p224e.p254g.ThreadFactoryC7135d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService.class */
public abstract class GcmTaskService extends Service {

    /* renamed from: a */
    public final Object f6690a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    public int f6691b;

    /* renamed from: c */
    public ExecutorService f6692c;

    /* renamed from: d */
    public Messenger f6693d;

    /* renamed from: e */
    public ComponentName f6694e;

    /* renamed from: f */
    public C7132a f6695f;

    @TargetApi(21)
    /* renamed from: com.google.android.gms.gcm.GcmTaskService$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$a.class */
    public final class HandlerC3573a extends Handler {
        public HandlerC3573a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!C7086r.m21115a(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i == 1) {
                Bundle data = message.getData();
                if (!data.isEmpty() && (messenger = message.replyTo) != null) {
                    String string = data.getString(NovaHomeBadger.TAG);
                    ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                    if (!GcmTaskService.this.m31870a(string)) {
                        GcmTaskService.this.m31875a(new RunnableC3574b(string, messenger, data.getBundle("extras"), parcelableArrayList));
                    }
                }
            } else if (i != 2) {
                if (i != 4) {
                    String valueOf = String.valueOf(message);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 31);
                    sb.append("Unrecognized message received: ");
                    sb.append(valueOf);
                    Log.e("GcmTaskService", sb.toString());
                    return;
                }
                GcmTaskService.this.m31877a();
            } else if (Log.isLoggable("GcmTaskService", 3)) {
                String valueOf2 = String.valueOf(message);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 45);
                sb2.append("ignoring unimplemented stop message for now: ");
                sb2.append(valueOf2);
                sb2.toString();
            }
        }
    }

    /* renamed from: com.google.android.gms.gcm.GcmTaskService$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/GcmTaskService$b.class */
    public final class RunnableC3574b implements Runnable {

        /* renamed from: a */
        public final String f6697a;

        /* renamed from: b */
        public final Bundle f6698b;

        /* renamed from: c */
        public final List<Uri> f6699c;
        @Nullable

        /* renamed from: d */
        public final AbstractC7136e f6700d;
        @Nullable

        /* renamed from: e */
        public final Messenger f6701e;

        public RunnableC3574b(String str, @NonNull IBinder iBinder, Bundle bundle, List<Uri> list) {
            AbstractC7136e eVar;
            this.f6697a = str;
            if (iBinder == null) {
                eVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                eVar = queryLocalInterface instanceof AbstractC7136e ? (AbstractC7136e) queryLocalInterface : new C7137f(iBinder);
            }
            this.f6700d = eVar;
            this.f6698b = bundle;
            this.f6699c = list;
            this.f6701e = null;
        }

        public RunnableC3574b(String str, @NonNull Messenger messenger, Bundle bundle, List<Uri> list) {
            this.f6697a = str;
            this.f6701e = messenger;
            this.f6698b = bundle;
            this.f6699c = list;
            this.f6700d = null;
        }

        /* renamed from: a */
        public final void m31865a(int i) {
            GcmTaskService gcmTaskService;
            int i2;
            synchronized (GcmTaskService.this.f6690a) {
                try {
                } catch (RemoteException e) {
                    String valueOf = String.valueOf(this.f6697a);
                    Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                    GcmTaskService.this.f6695f.m21041b(this.f6697a, GcmTaskService.this.f6694e.getClassName());
                    if (!m31866a() && !GcmTaskService.this.f6695f.m21043a(GcmTaskService.this.f6694e.getClassName())) {
                        gcmTaskService = GcmTaskService.this;
                        i2 = GcmTaskService.this.f6691b;
                    }
                }
                if (GcmTaskService.this.f6695f.m21040c(this.f6697a, GcmTaskService.this.f6694e.getClassName())) {
                    GcmTaskService.this.f6695f.m21041b(this.f6697a, GcmTaskService.this.f6694e.getClassName());
                    if (!m31866a() && !GcmTaskService.this.f6695f.m21043a(GcmTaskService.this.f6694e.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.f6691b);
                    }
                    return;
                }
                if (m31866a()) {
                    Messenger messenger = this.f6701e;
                    Message obtain = Message.obtain();
                    obtain.what = 3;
                    obtain.arg1 = i;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("component", GcmTaskService.this.f6694e);
                    bundle.putString(NovaHomeBadger.TAG, this.f6697a);
                    obtain.setData(bundle);
                    messenger.send(obtain);
                } else {
                    this.f6700d.mo21034c(i);
                }
                GcmTaskService.this.f6695f.m21041b(this.f6697a, GcmTaskService.this.f6694e.getClassName());
                if (!m31866a() && !GcmTaskService.this.f6695f.m21043a(GcmTaskService.this.f6694e.getClassName())) {
                    gcmTaskService = GcmTaskService.this;
                    i2 = GcmTaskService.this.f6691b;
                    gcmTaskService.stopSelf(i2);
                }
            }
        }

        /* renamed from: a */
        public final boolean m31866a() {
            return this.f6701e != null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            m31865a(GcmTaskService.this.m31871a(new C7133b(this.f6697a, this.f6698b, this.f6699c)));
        }
    }

    /* renamed from: a */
    public abstract int m31871a(C7133b bVar);

    /* renamed from: a */
    public void m31877a() {
    }

    /* renamed from: a */
    public final void m31876a(int i) {
        synchronized (this.f6690a) {
            this.f6691b = i;
            if (!this.f6695f.m21043a(this.f6694e.getClassName())) {
                stopSelf(this.f6691b);
            }
        }
    }

    /* renamed from: a */
    public final void m31875a(RunnableC3574b bVar) {
        try {
            this.f6692c.execute(bVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            bVar.m31865a(1);
        }
    }

    /* renamed from: a */
    public final boolean m31870a(String str) {
        boolean z;
        synchronized (this.f6690a) {
            z = !this.f6695f.m21042a(str, this.f6694e.getClassName());
            if (z) {
                String packageName = getPackageName();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 44 + String.valueOf(str).length());
                sb.append(packageName);
                sb.append(" ");
                sb.append(str);
                sb.append(": Task already running, won't start another");
                sb.toString();
            }
        }
        return z;
    }

    @Override // android.app.Service
    @CallSuper
    public IBinder onBind(Intent intent) {
        if (intent == null || !C7083o.m21124h() || !"com.google.android.gms.gcm.ACTION_TASK_READY".equals(intent.getAction())) {
            return null;
        }
        return this.f6693d.getBinder();
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.f6695f = C7132a.m21044a(this);
        this.f6692c = Executors.newFixedThreadPool(2, new ThreadFactoryC7135d(this));
        this.f6693d = new Messenger(new HandlerC3573a(Looper.getMainLooper()));
        this.f6694e = new ComponentName(this, GcmTaskService.class);
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.f6692c.shutdownNow();
        if (!shutdownNow.isEmpty()) {
            int size = shutdownNow.size();
            StringBuilder sb = new StringBuilder(79);
            sb.append("Shutting down, but not all tasks are finished executing. Remaining: ");
            sb.append(size);
            Log.e("GcmTaskService", sb.toString());
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            m31876a(i2);
            return 2;
        }
        try {
            intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
            String action = intent.getAction();
            if ("com.google.android.gms.gcm.ACTION_TASK_READY".equals(action)) {
                String stringExtra = intent.getStringExtra(NovaHomeBadger.TAG);
                Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                Bundle bundleExtra = intent.getBundleExtra("extras");
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("triggered_uris");
                if (!(parcelableExtra instanceof PendingCallback)) {
                    String packageName = getPackageName();
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 47 + String.valueOf(stringExtra).length());
                    sb.append(packageName);
                    sb.append(" ");
                    sb.append(stringExtra);
                    sb.append(": Could not process request, invalid callback.");
                    Log.e("GcmTaskService", sb.toString());
                    m31876a(i2);
                    return 2;
                } else if (m31870a(stringExtra)) {
                    m31876a(i2);
                    return 2;
                } else {
                    m31875a(new RunnableC3574b(stringExtra, ((PendingCallback) parcelableExtra).f6705a, bundleExtra, parcelableArrayListExtra));
                }
            } else if ("com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE".equals(action)) {
                m31877a();
            } else {
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 37);
                sb2.append("Unknown action received ");
                sb2.append(action);
                sb2.append(", terminating");
                Log.e("GcmTaskService", sb2.toString());
            }
            m31876a(i2);
            return 2;
        } catch (Throwable th) {
            m31876a(i2);
            throw th;
        }
    }
}
