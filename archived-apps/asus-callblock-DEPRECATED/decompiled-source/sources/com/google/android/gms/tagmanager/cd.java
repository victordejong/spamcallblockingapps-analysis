package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cd.class */
public final class cd extends cc {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4343a = new Object();
    private static cd n;

    /* renamed from: b  reason: collision with root package name */
    private Context f4344b;
    private aa c;
    private volatile y d;
    private a k;
    private as l;
    private int e = 1800000;
    private boolean f = true;
    private boolean g = false;
    private boolean h = true;
    private boolean i = true;
    private ab j = new ab() { // from class: com.google.android.gms.tagmanager.cd.1
        @Override // com.google.android.gms.tagmanager.ab
        public final void a(boolean z) {
            cd.this.a(z, cd.this.h);
        }
    };
    private boolean m = false;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cd$a.class */
    public interface a {
        void a();

        void a(long j);

        void b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cd$b.class */
    private final class b implements a {

        /* renamed from: b  reason: collision with root package name */
        private Handler f4348b;

        private b() {
            this.f4348b = new Handler(cd.this.f4344b.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.tagmanager.cd.b.1
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    if (1 != message.what || !cd.f4343a.equals(message.obj)) {
                        return true;
                    }
                    cd.this.a();
                    if (cd.this.f()) {
                        return true;
                    }
                    b.this.a(cd.this.e);
                    return true;
                }
            });
        }

        /* synthetic */ b(cd cdVar, byte b2) {
            this();
        }

        private Message c() {
            return this.f4348b.obtainMessage(1, cd.f4343a);
        }

        @Override // com.google.android.gms.tagmanager.cd.a
        public final void a() {
            this.f4348b.removeMessages(1, cd.f4343a);
            this.f4348b.sendMessage(c());
        }

        @Override // com.google.android.gms.tagmanager.cd.a
        public final void a(long j) {
            this.f4348b.removeMessages(1, cd.f4343a);
            this.f4348b.sendMessageDelayed(c(), j);
        }

        @Override // com.google.android.gms.tagmanager.cd.a
        public final void b() {
            this.f4348b.removeMessages(1, cd.f4343a);
        }
    }

    private cd() {
    }

    public static cd c() {
        if (n == null) {
            n = new cd();
        }
        return n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.m || !this.h || this.e <= 0;
    }

    @Override // com.google.android.gms.tagmanager.cc
    public final void a() {
        synchronized (this) {
            if (!this.g) {
                an.e("Dispatch call queued. Dispatch will run once initialization is complete.");
                this.f = true;
            } else {
                this.d.a(new Runnable() { // from class: com.google.android.gms.tagmanager.cd.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        cd.this.c.a();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, y yVar) {
        synchronized (this) {
            if (this.f4344b == null) {
                this.f4344b = context.getApplicationContext();
                if (this.d == null) {
                    this.d = yVar;
                }
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.cc
    public final void a(boolean z) {
        synchronized (this) {
            a(this.m, z);
        }
    }

    final void a(boolean z, boolean z2) {
        synchronized (this) {
            boolean f = f();
            this.m = z;
            this.h = z2;
            if (f() != f) {
                if (f()) {
                    this.k.b();
                    an.e("PowerSaveMode initiated.");
                } else {
                    this.k.a(this.e);
                    an.e("PowerSaveMode terminated.");
                }
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.cc
    public final void b() {
        synchronized (this) {
            if (!f()) {
                this.k.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aa d() {
        aa aaVar;
        synchronized (this) {
            if (this.c == null) {
                if (this.f4344b == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
                this.c = new bg(this.j, this.f4344b);
            }
            if (this.k == null) {
                this.k = new b(this, (byte) 0);
                if (this.e > 0) {
                    this.k.a(this.e);
                }
            }
            this.g = true;
            if (this.f) {
                a();
                this.f = false;
            }
            if (this.l == null && this.i) {
                this.l = new as(this);
                as asVar = this.l;
                Context context = this.f4344b;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(asVar, intentFilter);
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
                intentFilter2.addCategory(context.getPackageName());
                context.registerReceiver(asVar, intentFilter2);
            }
            aaVar = this.c;
        }
        return aaVar;
    }
}
