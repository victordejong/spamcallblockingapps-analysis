package p081h.p203i.p325c.p364t;

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
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.google.firebase.iid.FirebaseIidMessengerCompat;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7089b;
import p081h.p203i.p204a.p224e.p259j.p268i.C7750a;
import p081h.p203i.p204a.p224e.p259j.p268i.C7755f;
import p081h.p203i.p204a.p224e.p259j.p268i.HandlerC7754e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p364t.C9916x;
/* renamed from: h.i.c.t.x */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/x.class */
public class C9916x {
    @GuardedBy("MessengerIpcClient.class")

    /* renamed from: e */
    public static C9916x f22441e;

    /* renamed from: a */
    public final Context f22442a;

    /* renamed from: b */
    public final ScheduledExecutorService f22443b;
    @GuardedBy("this")

    /* renamed from: c */
    public ServiceConnectionC9918b f22444c = new ServiceConnectionC9918b();
    @GuardedBy("this")

    /* renamed from: d */
    public int f22445d = 1;

    /* renamed from: h.i.c.t.x$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$b.class */
    public class ServiceConnectionC9918b implements ServiceConnection {
        @GuardedBy("this")

        /* renamed from: a */
        public int f22446a;

        /* renamed from: b */
        public final Messenger f22447b;

        /* renamed from: c */
        public C9919c f22448c;
        @GuardedBy("this")

        /* renamed from: d */
        public final Queue<AbstractC9921e<?>> f22449d;
        @GuardedBy("this")

        /* renamed from: e */
        public final SparseArray<AbstractC9921e<?>> f22450e;

        public ServiceConnectionC9918b() {
            this.f22446a = 0;
            this.f22447b = new Messenger(new HandlerC7754e(Looper.getMainLooper(), new Handler.Callback(this) { // from class: h.i.c.t.y

                /* renamed from: a */
                public final C9916x.ServiceConnectionC9918b f22466a;

                {
                    this.f22466a = this;
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f22466a.m13957a(message);
                }
            }));
            this.f22449d = new ArrayDeque();
            this.f22450e = new SparseArray<>();
        }

        /* renamed from: a */
        public final /* synthetic */ void m13961a() {
            m13959a(2, "Service disconnected");
        }

        /* renamed from: a */
        public void m13960a(int i) {
            synchronized (this) {
                AbstractC9921e<?> eVar = this.f22450e.get(i);
                if (eVar != null) {
                    StringBuilder sb = new StringBuilder(31);
                    sb.append("Timing out request: ");
                    sb.append(i);
                    sb.toString();
                    this.f22450e.remove(i);
                    eVar.m13943a(new C9922f(3, "Timed out waiting for response"));
                    m13948f();
                }
            }
        }

        /* renamed from: a */
        public void m13959a(int i, String str) {
            synchronized (this) {
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    String valueOf = String.valueOf(str);
                    if (valueOf.length() != 0) {
                        "Disconnected: ".concat(valueOf);
                    } else {
                        new String("Disconnected: ");
                    }
                }
                int i2 = this.f22446a;
                if (i2 == 0) {
                    throw new IllegalStateException();
                } else if (i2 == 1 || i2 == 2) {
                    Log.isLoggable("MessengerIpcClient", 2);
                    this.f22446a = 4;
                    C7064a.m21184a().m21182a(C9916x.this.f22442a, this);
                    m13955a(new C9922f(i, str));
                } else if (i2 == 3) {
                    this.f22446a = 4;
                } else if (i2 != 4) {
                    int i3 = this.f22446a;
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("Unknown state: ");
                    sb.append(i3);
                    throw new IllegalStateException(sb.toString());
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ void m13958a(IBinder iBinder) {
            synchronized (this) {
                if (iBinder == null) {
                    m13959a(0, "Null service connection");
                    return;
                }
                try {
                    this.f22448c = new C9919c(iBinder);
                    this.f22446a = 2;
                    m13952c();
                } catch (RemoteException e) {
                    m13959a(0, e.getMessage());
                }
            }
        }

        @GuardedBy("this")
        /* renamed from: a */
        public void m13955a(C9922f fVar) {
            for (AbstractC9921e<?> eVar : this.f22449d) {
                eVar.m13943a(fVar);
            }
            this.f22449d.clear();
            for (int i = 0; i < this.f22450e.size(); i++) {
                this.f22450e.valueAt(i).m13943a(fVar);
            }
            this.f22450e.clear();
        }

        /* renamed from: a */
        public boolean m13957a(Message message) {
            int i = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("Received response to request: ");
                sb.append(i);
                sb.toString();
            }
            synchronized (this) {
                AbstractC9921e<?> eVar = this.f22450e.get(i);
                if (eVar == null) {
                    StringBuilder sb2 = new StringBuilder(50);
                    sb2.append("Received response for unknown request: ");
                    sb2.append(i);
                    sb2.toString();
                    return true;
                }
                this.f22450e.remove(i);
                m13948f();
                eVar.m13944a(message.getData());
                return true;
            }
        }

        /* renamed from: a */
        public boolean m13956a(AbstractC9921e<?> eVar) {
            synchronized (this) {
                int i = this.f22446a;
                if (i == 0) {
                    this.f22449d.add(eVar);
                    m13950d();
                    return true;
                } else if (i == 1) {
                    this.f22449d.add(eVar);
                    return true;
                } else if (i == 2) {
                    this.f22449d.add(eVar);
                    m13952c();
                    return true;
                } else if (i == 3 || i == 4) {
                    return false;
                } else {
                    int i2 = this.f22446a;
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("Unknown state: ");
                    sb.append(i2);
                    throw new IllegalStateException(sb.toString());
                }
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m13954b() {
            final AbstractC9921e<?> poll;
            while (true) {
                synchronized (this) {
                    if (this.f22446a == 2) {
                        if (this.f22449d.isEmpty()) {
                            m13948f();
                            return;
                        }
                        poll = this.f22449d.poll();
                        this.f22450e.put(poll.f22454a, poll);
                        C9916x.this.f22443b.schedule(new Runnable(this, poll) { // from class: h.i.c.t.d0

                            /* renamed from: a */
                            public final C9916x.ServiceConnectionC9918b f22351a;

                            /* renamed from: b */
                            public final C9916x.AbstractC9921e f22352b;

                            {
                                this.f22351a = this;
                                this.f22352b = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f22351a.m13953b(this.f22352b);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    } else {
                        return;
                    }
                }
                m13951c(poll);
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m13953b(AbstractC9921e eVar) {
            m13960a(eVar.f22454a);
        }

        /* renamed from: c */
        public void m13952c() {
            C9916x.this.f22443b.execute(new Runnable(this) { // from class: h.i.c.t.b0

                /* renamed from: a */
                public final C9916x.ServiceConnectionC9918b f22346a;

                {
                    this.f22346a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22346a.m13954b();
                }
            });
        }

        /* renamed from: c */
        public void m13951c(AbstractC9921e<?> eVar) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(eVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                sb.append("Sending ");
                sb.append(valueOf);
                sb.toString();
            }
            try {
                this.f22448c.m13947a(eVar.m13945a(C9916x.this.f22442a, this.f22447b));
            } catch (RemoteException e) {
                m13959a(2, e.getMessage());
            }
        }

        @GuardedBy("this")
        /* renamed from: d */
        public void m13950d() {
            C7021t.m21282b(this.f22446a == 0);
            Log.isLoggable("MessengerIpcClient", 2);
            this.f22446a = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (!C7064a.m21184a().m21183a(C9916x.this.f22442a, intent, this, 1)) {
                m13959a(0, "Unable to bind to service");
            } else {
                C9916x.this.f22443b.schedule(new Runnable(this) { // from class: h.i.c.t.z

                    /* renamed from: a */
                    public final C9916x.ServiceConnectionC9918b f22467a;

                    {
                        this.f22467a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f22467a.m13949e();
                    }
                }, 30L, TimeUnit.SECONDS);
            }
        }

        /* renamed from: e */
        public void m13949e() {
            synchronized (this) {
                if (this.f22446a == 1) {
                    m13959a(1, "Timed out while binding");
                }
            }
        }

        /* renamed from: f */
        public void m13948f() {
            synchronized (this) {
                if (this.f22446a == 2 && this.f22449d.isEmpty() && this.f22450e.size() == 0) {
                    Log.isLoggable("MessengerIpcClient", 2);
                    this.f22446a = 3;
                    C7064a.m21184a().m21182a(C9916x.this.f22442a, this);
                }
            }
        }

        @Override // android.content.ServiceConnection
        @MainThread
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            Log.isLoggable("MessengerIpcClient", 2);
            C9916x.this.f22443b.execute(new Runnable(this, iBinder) { // from class: h.i.c.t.a0

                /* renamed from: a */
                public final C9916x.ServiceConnectionC9918b f22342a;

                /* renamed from: b */
                public final IBinder f22343b;

                {
                    this.f22342a = this;
                    this.f22343b = iBinder;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22342a.m13958a(this.f22343b);
                }
            });
        }

        @Override // android.content.ServiceConnection
        @MainThread
        public void onServiceDisconnected(ComponentName componentName) {
            Log.isLoggable("MessengerIpcClient", 2);
            C9916x.this.f22443b.execute(new Runnable(this) { // from class: h.i.c.t.c0

                /* renamed from: a */
                public final C9916x.ServiceConnectionC9918b f22349a;

                {
                    this.f22349a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f22349a.m13961a();
                }
            });
        }
    }

    /* renamed from: h.i.c.t.x$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$c.class */
    public static class C9919c {

        /* renamed from: a */
        public final Messenger f22452a;

        /* renamed from: b */
        public final FirebaseIidMessengerCompat f22453b;

        public C9919c(IBinder iBinder) throws RemoteException {
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if ("android.os.IMessenger".equals(interfaceDescriptor)) {
                this.f22452a = new Messenger(iBinder);
                this.f22453b = null;
            } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
                this.f22453b = new FirebaseIidMessengerCompat(iBinder);
                this.f22452a = null;
            } else {
                String valueOf = String.valueOf(interfaceDescriptor);
                if (valueOf.length() != 0) {
                    "Invalid interface descriptor: ".concat(valueOf);
                } else {
                    new String("Invalid interface descriptor: ");
                }
                throw new RemoteException();
            }
        }

        /* renamed from: a */
        public void m13947a(Message message) throws RemoteException {
            Messenger messenger = this.f22452a;
            if (messenger != null) {
                messenger.send(message);
                return;
            }
            FirebaseIidMessengerCompat firebaseIidMessengerCompat = this.f22453b;
            if (firebaseIidMessengerCompat != null) {
                firebaseIidMessengerCompat.m31108a(message);
                return;
            }
            throw new IllegalStateException("Both messengers are null");
        }
    }

    /* renamed from: h.i.c.t.x$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$d.class */
    public static class C9920d extends AbstractC9921e<Void> {
        public C9920d(int i, int i2, Bundle bundle) {
            super(i, i2, bundle);
        }

        @Override // p081h.p203i.p325c.p364t.C9916x.AbstractC9921e
        /* renamed from: b */
        public void mo13940b(Bundle bundle) {
            if (bundle.getBoolean("ack", false)) {
                m13942a((C9920d) null);
            } else {
                m13943a(new C9922f(4, "Invalid response to one way request"));
            }
        }

        @Override // p081h.p203i.p325c.p364t.C9916x.AbstractC9921e
        /* renamed from: b */
        public boolean mo13941b() {
            return true;
        }
    }

    /* renamed from: h.i.c.t.x$e */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$e.class */
    public static abstract class AbstractC9921e<T> {

        /* renamed from: a */
        public final int f22454a;

        /* renamed from: b */
        public final C9145i<T> f22455b = new C9145i<>();

        /* renamed from: c */
        public final int f22456c;

        /* renamed from: d */
        public final Bundle f22457d;

        public AbstractC9921e(int i, int i2, Bundle bundle) {
            this.f22454a = i;
            this.f22456c = i2;
            this.f22457d = bundle;
        }

        /* renamed from: a */
        public Message m13945a(Context context, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = this.f22456c;
            obtain.arg1 = this.f22454a;
            obtain.replyTo = messenger;
            Bundle bundle = new Bundle();
            bundle.putBoolean("oneWay", mo13941b());
            bundle.putString("pkg", context.getPackageName());
            bundle.putBundle("data", this.f22457d);
            obtain.setData(bundle);
            return obtain;
        }

        /* renamed from: a */
        public AbstractC9143h<T> m13946a() {
            return this.f22455b.m16008a();
        }

        /* renamed from: a */
        public void m13944a(Bundle bundle) {
            if (bundle.getBoolean("unsupported", false)) {
                m13943a(new C9922f(4, "Not supported by GmsCore"));
            } else {
                mo13940b(bundle);
            }
        }

        /* renamed from: a */
        public void m13943a(C9922f fVar) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(fVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
                sb.append("Failing ");
                sb.append(valueOf);
                sb.append(" with ");
                sb.append(valueOf2);
                sb.toString();
            }
            this.f22455b.m16007a(fVar);
        }

        /* renamed from: a */
        public void m13942a(T t) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(t);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
                sb.append("Finishing ");
                sb.append(valueOf);
                sb.append(" with ");
                sb.append(valueOf2);
                sb.toString();
            }
            this.f22455b.m16006a((C9145i<T>) t);
        }

        /* renamed from: b */
        public abstract void mo13940b(Bundle bundle);

        /* renamed from: b */
        public abstract boolean mo13941b();

        public String toString() {
            int i = this.f22456c;
            int i2 = this.f22454a;
            boolean b = mo13941b();
            StringBuilder sb = new StringBuilder(55);
            sb.append("Request { what=");
            sb.append(i);
            sb.append(" id=");
            sb.append(i2);
            sb.append(" oneWay=");
            sb.append(b);
            sb.append(CssParser.BLOCK_END);
            return sb.toString();
        }
    }

    /* renamed from: h.i.c.t.x$f */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$f.class */
    public static class C9922f extends Exception {
        public C9922f(int i, String str) {
            super(str);
        }
    }

    /* renamed from: h.i.c.t.x$g */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/x$g.class */
    public static class C9923g extends AbstractC9921e<Bundle> {
        public C9923g(int i, int i2, Bundle bundle) {
            super(i, i2, bundle);
        }

        @Override // p081h.p203i.p325c.p364t.C9916x.AbstractC9921e
        /* renamed from: b */
        public void mo13940b(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("data");
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = Bundle.EMPTY;
            }
            m13942a((C9923g) bundle3);
        }

        @Override // p081h.p203i.p325c.p364t.C9916x.AbstractC9921e
        /* renamed from: b */
        public boolean mo13941b() {
            return false;
        }
    }

    @VisibleForTesting
    public C9916x(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f22443b = scheduledExecutorService;
        this.f22442a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C9916x m13966a(Context context) {
        C9916x xVar;
        synchronized (C9916x.class) {
            try {
                if (f22441e == null) {
                    f22441e = new C9916x(context, C7750a.m19590a().mo19589a(1, new ThreadFactoryC7089b("MessengerIpcClient"), C7755f.f18146a));
                }
                xVar = f22441e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return xVar;
    }

    /* renamed from: a */
    public final int m13968a() {
        int i;
        synchronized (this) {
            i = this.f22445d;
            this.f22445d = i + 1;
        }
        return i;
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m13967a(int i, Bundle bundle) {
        return m13965a(new C9920d(m13968a(), i, bundle));
    }

    /* renamed from: a */
    public final <T> AbstractC9143h<T> m13965a(AbstractC9921e<T> eVar) {
        AbstractC9143h<T> a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(eVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                sb.toString();
            }
            if (!this.f22444c.m13956a((AbstractC9921e<?>) eVar)) {
                this.f22444c = new ServiceConnectionC9918b();
                this.f22444c.m13956a((AbstractC9921e<?>) eVar);
            }
            a = eVar.m13946a();
        }
        return a;
    }

    /* renamed from: b */
    public AbstractC9143h<Bundle> m13963b(int i, Bundle bundle) {
        return m13965a(new C9923g(m13968a(), i, bundle));
    }
}
