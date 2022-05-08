package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.j;
import com.google.android.gms.tagmanager.bj;
import com.google.android.gms.tagmanager.dc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd.class */
public final class dd extends ax<com.google.android.gms.tagmanager.b> {
    public final d d;
    public final Looper e;
    public final int f;
    public final Context g;
    public final com.google.android.gms.tagmanager.e h;
    public final String i;
    public f j;
    public volatile dc k;
    public e l;
    public a m;
    private final com.google.android.gms.common.a.d n;
    private final bl o;
    private com.google.android.gms.internal.b p;
    private volatile boolean q;
    private j.C0127j r;
    private long s;
    private String t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$a.class */
    public interface a {
        boolean a(com.google.android.gms.tagmanager.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$b.class */
    public final class b implements am<a.C0122a> {
        private b() {
        }

        public /* synthetic */ b(dd ddVar, byte b2) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.am
        public final void a() {
            if (!dd.this.q) {
                dd.this.a(0L);
            }
        }

        @Override // com.google.android.gms.tagmanager.am
        public final /* synthetic */ void a(a.C0122a aVar) {
            j.C0127j jVar;
            a.C0122a aVar2 = aVar;
            if (aVar2.c != null) {
                jVar = aVar2.c;
            } else {
                j.f fVar = aVar2.f4094b;
                jVar = new j.C0127j();
                jVar.f4209b = fVar;
                jVar.f4208a = null;
                jVar.c = fVar.l;
            }
            dd.this.a(jVar, aVar2.f4093a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$c.class */
    public final class c implements am<j.C0127j> {
        private c() {
        }

        public /* synthetic */ c(dd ddVar, byte b2) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.am
        public final void a() {
            synchronized (dd.this) {
                if (!dd.this.b()) {
                    if (dd.this.k != null) {
                        dd.this.a((dd) dd.this.k);
                    } else {
                        dd.this.a((dd) dd.this.a(Status.d));
                    }
                }
            }
            dd.this.a(3600000L);
        }

        @Override // com.google.android.gms.tagmanager.am
        public final /* synthetic */ void a(j.C0127j jVar) {
            j.C0127j jVar2 = jVar;
            synchronized (dd.this) {
                if (jVar2.f4209b == null) {
                    if (dd.this.r.f4209b == null) {
                        an.a("Current resource is null; network resource is also null");
                        dd.this.a(3600000L);
                        return;
                    }
                    jVar2.f4209b = dd.this.r.f4209b;
                }
                dd.this.a(jVar2, dd.this.n.a(), false);
                an.e(new StringBuilder(58).append("setting refresh time to current time: ").append(dd.this.s).toString());
                if (!dd.this.a()) {
                    dd.this.a(jVar2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$d.class */
    public final class d implements dc.a {
        private d() {
        }

        /* synthetic */ d(dd ddVar, byte b2) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.dc.a
        public final void a() {
            if (dd.this.o.a()) {
                dd.this.a(0L);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$e.class */
    public interface e extends com.google.android.gms.common.api.d {
        void a(long j, String str);

        void a(am<j.C0127j> amVar);

        void a(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dd$f.class */
    public interface f extends com.google.android.gms.common.api.d {
        c.C0126c a(int i);

        void a(a.C0122a aVar);

        void a(am<a.C0122a> amVar);

        void b();
    }

    private dd(Context context, com.google.android.gms.tagmanager.e eVar, String str, int i, f fVar, e eVar2, com.google.android.gms.internal.b bVar, com.google.android.gms.common.a.d dVar, bl blVar) {
        super(Looper.getMainLooper());
        this.g = context;
        this.h = eVar;
        this.e = Looper.getMainLooper();
        this.i = str;
        this.f = i;
        this.j = fVar;
        this.l = eVar2;
        this.p = bVar;
        this.d = new d(this, (byte) 0);
        this.r = new j.C0127j();
        this.n = dVar;
        this.o = blVar;
        if (a()) {
            a(bj.a().c);
        }
    }

    public dd(Context context, com.google.android.gms.tagmanager.e eVar, String str, int i, dg dgVar) {
        this(context, eVar, str, i, new bv(context, str), new bu(context, str, dgVar), new com.google.android.gms.internal.b(context), com.google.android.gms.common.a.e.c(), new al("refreshing", com.google.android.gms.common.a.e.c()));
        this.p.f4144a = dgVar.f4384a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        synchronized (this) {
            if (this.l == null) {
                an.b("Refresh requested, but no network load scheduler.");
            } else {
                this.l.a(j, this.r.c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(j.C0127j jVar) {
        synchronized (this) {
            if (this.j != null) {
                a.C0122a aVar = new a.C0122a();
                aVar.f4093a = this.s;
                aVar.f4094b = new j.f();
                aVar.c = jVar;
                this.j.a(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(j.C0127j jVar, long j, boolean z) {
        synchronized (this) {
            if (z) {
                boolean z2 = this.q;
            }
            if (b()) {
                dc dcVar = this.k;
            }
            this.r = jVar;
            this.s = j;
            a(Math.max(0L, Math.min(43200000L, (this.s + 43200000) - this.n.a())));
            com.google.android.gms.tagmanager.a aVar = new com.google.android.gms.tagmanager.a(this.g, this.h.c, this.i, j, jVar);
            if (this.k == null) {
                this.k = new dc(this.h, this.e, aVar, this.d);
            } else {
                this.k.a(aVar);
            }
            if (!b() && this.m.a(aVar)) {
                a((dd) this.k);
            }
        }
    }

    private void a(String str) {
        synchronized (this) {
            this.t = str;
            if (this.l != null) {
                this.l.a(str);
            }
        }
    }

    public final boolean a() {
        bj a2 = bj.a();
        return (a2.f4303a == bj.a.CONTAINER || a2.f4303a == bj.a.CONTAINER_DEBUG) && this.i.equals(a2.f4304b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final com.google.android.gms.tagmanager.b a(Status status) {
        dc dcVar;
        if (this.k != null) {
            dcVar = this.k;
        } else {
            if (status == Status.d) {
                an.a("timer expired: setting result to failure");
            }
            dcVar = new dc(status);
        }
        return dcVar;
    }
}
