package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.a.a.a;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.c;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/f.class */
public final class f {
    private static Object l = new Object();
    private static f m;

    /* renamed from: a  reason: collision with root package name */
    private volatile long f4406a;

    /* renamed from: b  reason: collision with root package name */
    private volatile long f4407b;
    private volatile boolean c;
    private volatile a.C0105a d;
    private volatile long e;
    private volatile long f;
    private final Context g;
    private final d h;
    private final Thread i;
    private final Object j;
    private a k;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/f$a.class */
    public interface a {
        a.C0105a a();
    }

    private f(Context context) {
        this(context, e.c());
    }

    private f(Context context, d dVar) {
        this.f4406a = 900000L;
        this.f4407b = 30000L;
        this.c = false;
        this.j = new Object();
        this.k = new a() { // from class: com.google.android.gms.tagmanager.f.1
            @Override // com.google.android.gms.tagmanager.f.a
            public final a.C0105a a() {
                a.C0105a aVar = null;
                try {
                    aVar = com.google.android.gms.a.a.a.a(f.this.g);
                } catch (c e) {
                    an.b("GooglePlayServicesNotAvailableException getting Advertising Id Info", e);
                } catch (com.google.android.gms.common.d e2) {
                    an.b("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
                } catch (IOException e3) {
                    an.b("IOException getting Ad Id Info", e3);
                } catch (IllegalStateException e4) {
                    an.b("IllegalStateException getting Advertising Id Info", e4);
                } catch (Exception e5) {
                    an.b("Unknown exception. Could not get the Advertising Id Info.", e5);
                }
                return aVar;
            }
        };
        this.h = dVar;
        if (context != null) {
            this.g = context.getApplicationContext();
        } else {
            this.g = context;
        }
        this.e = this.h.a();
        this.i = new Thread(new Runnable() { // from class: com.google.android.gms.tagmanager.f.2
            @Override // java.lang.Runnable
            public final void run() {
                f.b(f.this);
            }
        });
    }

    public static f a(Context context) {
        if (m == null) {
            synchronized (l) {
                if (m == null) {
                    f fVar = new f(context);
                    m = fVar;
                    fVar.i.start();
                }
            }
        }
        return m;
    }

    static /* synthetic */ void b(f fVar) {
        Process.setThreadPriority(10);
        while (!fVar.c) {
            a.C0105a a2 = fVar.k.a();
            if (a2 != null) {
                fVar.d = a2;
                fVar.f = fVar.h.a();
                an.c("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (fVar) {
                fVar.notifyAll();
            }
            try {
                synchronized (fVar.j) {
                    fVar.j.wait(fVar.f4406a);
                }
            } catch (InterruptedException e) {
                an.c("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    private void c() {
        synchronized (this) {
            try {
                d();
                wait(500L);
            } catch (InterruptedException e) {
            }
        }
    }

    private void d() {
        if (this.h.a() - this.e > this.f4407b) {
            synchronized (this.j) {
                this.j.notify();
            }
            this.e = this.h.a();
        }
    }

    private void e() {
        if (this.h.a() - this.f > 3600000) {
            this.d = null;
        }
    }

    public final String a() {
        if (this.d == null) {
            c();
        } else {
            d();
        }
        e();
        return this.d == null ? null : this.d.f3756a;
    }

    public final boolean b() {
        if (this.d == null) {
            c();
        } else {
            d();
        }
        e();
        return this.d == null ? true : this.d.f3757b;
    }
}
