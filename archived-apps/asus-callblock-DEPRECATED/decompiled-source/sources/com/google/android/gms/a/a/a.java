package com.google.android.gms.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.c;
import com.google.android.gms.common.h;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.aa;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    h f3754a;

    /* renamed from: b  reason: collision with root package name */
    aa f3755b;
    b e;
    private final Context g;
    Object d = new Object();
    boolean c = false;
    final long f = -1;

    /* renamed from: com.google.android.gms.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/a/a/a$a.class */
    public static final class C0105a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3756a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3757b;

        public C0105a(String str, boolean z) {
            this.f3756a = str;
            this.f3757b = z;
        }

        public final String toString() {
            String str = this.f3756a;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.f3757b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/a/a/a$b.class */
    public static final class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        CountDownLatch f3758a = new CountDownLatch(1);

        /* renamed from: b  reason: collision with root package name */
        boolean f3759b = false;
        private WeakReference<a> c;
        private long d;

        public b(a aVar, long j) {
            this.c = new WeakReference<>(aVar);
            this.d = j;
            start();
        }

        private void a() {
            a aVar = this.c.get();
            if (aVar != null) {
                aVar.a();
                this.f3759b = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!this.f3758a.await(this.d, TimeUnit.MILLISECONDS)) {
                    a();
                }
            } catch (InterruptedException e) {
                a();
            }
        }
    }

    private a(Context context) {
        com.google.android.gms.common.internal.b.a(context);
        this.g = context;
    }

    public static C0105a a(Context context) {
        a aVar = new a(context);
        try {
            aVar.b();
            return aVar.c();
        } finally {
            aVar.a();
        }
    }

    private static aa a(h hVar) {
        try {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            com.google.android.gms.common.internal.b.c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
            if (hVar.f3966a) {
                throw new IllegalStateException("Cannot call get on this connection more than once");
            }
            hVar.f3966a = true;
            IBinder poll = hVar.f3967b.poll(10000L, timeUnit);
            if (poll != null) {
                return aa.a.a(poll);
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private static h b(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (j.b().a(context)) {
                case 0:
                case 2:
                    h hVar = new h();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        com.google.android.gms.common.stats.b.a();
                        if (com.google.android.gms.common.stats.b.b(context, intent, hVar, 1)) {
                            return hVar;
                        }
                        throw new IOException("Connection failure");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new c();
        }
    }

    private void b() {
        com.google.android.gms.common.internal.b.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.c) {
                a();
            }
            this.f3754a = b(this.g);
            this.f3755b = a(this.f3754a);
            this.c = true;
        }
    }

    private C0105a c() {
        C0105a aVar;
        com.google.android.gms.common.internal.b.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.c) {
                synchronized (this.d) {
                    if (this.e == null || !this.e.f3759b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    b();
                    if (!this.c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            com.google.android.gms.common.internal.b.a(this.f3754a);
            com.google.android.gms.common.internal.b.a(this.f3755b);
            try {
                aVar = new C0105a(this.f3755b.a(), this.f3755b.a(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        synchronized (this.d) {
            if (this.e != null) {
                this.e.f3758a.countDown();
                try {
                    this.e.join();
                } catch (InterruptedException e3) {
                }
            }
            if (this.f > 0) {
                this.e = new b(this, this.f);
            }
        }
        return aVar;
    }

    public final void a() {
        com.google.android.gms.common.internal.b.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.g != null && this.f3754a != null) {
                try {
                    if (this.c) {
                        com.google.android.gms.common.stats.b.a();
                        com.google.android.gms.common.stats.b.a(this.g, this.f3754a);
                    }
                } catch (IllegalArgumentException e) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
                }
                this.c = false;
                this.f3755b = null;
                this.f3754a = null;
            }
        }
    }

    protected final void finalize() {
        a();
        super.finalize();
    }
}
