package com.bumptech.glide;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.d.c;
import com.bumptech.glide.d.e;
import com.bumptech.glide.d.g;
import com.bumptech.glide.d.i;
import com.bumptech.glide.d.l;
import com.bumptech.glide.d.m;
import com.bumptech.glide.load.c.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h.class */
public final class h implements com.bumptech.glide.d.h {

    /* renamed from: a  reason: collision with root package name */
    public final Context f3448a;

    /* renamed from: b  reason: collision with root package name */
    public final g f3449b;
    public final m c;
    public final e d;
    public final b e;
    private final l f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$a.class */
    public final class a<A, T> {

        /* renamed from: a  reason: collision with root package name */
        public final j<A, T> f3452a;

        /* renamed from: b  reason: collision with root package name */
        public final Class<T> f3453b;

        /* renamed from: com.bumptech.glide.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$a$a.class */
        public final class C0095a {

            /* renamed from: a  reason: collision with root package name */
            public final A f3455a;

            /* renamed from: b  reason: collision with root package name */
            public final Class<A> f3456b;
            public final boolean c = true;

            public C0095a(A a2) {
                this.f3455a = a2;
                this.f3456b = a2 != null ? (Class<A>) a2.getClass() : null;
            }
        }

        public a(j<A, T> jVar, Class<T> cls) {
            this.f3452a = jVar;
            this.f3453b = cls;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$b.class */
    public final class b {
        b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$c.class */
    private static final class c implements c.a {

        /* renamed from: a  reason: collision with root package name */
        private final m f3458a;

        public c(m mVar) {
            this.f3458a = mVar;
        }

        @Override // com.bumptech.glide.d.c.a
        public final void a(boolean z) {
            if (z) {
                m mVar = this.f3458a;
                for (com.bumptech.glide.g.b bVar : com.bumptech.glide.i.h.a(mVar.f3399a)) {
                    if (!bVar.f() && !bVar.h()) {
                        bVar.d();
                        if (!mVar.c) {
                            bVar.b();
                        } else {
                            mVar.f3400b.add(bVar);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public h(android.content.Context r7, com.bumptech.glide.d.g r8, com.bumptech.glide.d.l r9) {
        /*
            r6 = this;
            com.bumptech.glide.d.m r0 = new com.bumptech.glide.d.m
            r1 = r0
            r1.<init>()
            r10 = r0
            com.bumptech.glide.d.d r0 = new com.bumptech.glide.d.d
            r1 = r0
            r1.<init>()
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.h.<init>(android.content.Context, com.bumptech.glide.d.g, com.bumptech.glide.d.l):void");
    }

    private h(Context context, final g gVar, l lVar, m mVar) {
        this.f3448a = context.getApplicationContext();
        this.f3449b = gVar;
        this.f = lVar;
        this.c = mVar;
        this.d = e.a(context);
        this.e = new b();
        com.bumptech.glide.d.h eVar = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? new e(context, new c(mVar)) : new i();
        if (com.bumptech.glide.i.h.c()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bumptech.glide.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    gVar.a(h.this);
                }
            });
        } else {
            gVar.a(this);
        }
        gVar.a(eVar);
    }

    public final com.bumptech.glide.b<String> a(String str) {
        j a2 = e.a(String.class, this.f3448a);
        j b2 = e.b(String.class, this.f3448a);
        if (a2 != null || b2 != null) {
            return (com.bumptech.glide.b) new com.bumptech.glide.b(String.class, a2, b2, this.f3448a, this.d, this.c, this.f3449b, this.e).a((com.bumptech.glide.b) str);
        }
        throw new IllegalArgumentException("Unknown type " + String.class + ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class");
    }

    public final void a() {
        e eVar = this.d;
        eVar.f3405b.a();
        eVar.c.a();
    }

    @Override // com.bumptech.glide.d.h
    public final void onDestroy() {
        m mVar = this.c;
        for (com.bumptech.glide.g.b bVar : com.bumptech.glide.i.h.a(mVar.f3399a)) {
            bVar.c();
        }
        mVar.f3400b.clear();
    }

    @Override // com.bumptech.glide.d.h
    public final void onStart() {
        com.bumptech.glide.i.h.a();
        m mVar = this.c;
        mVar.c = false;
        for (com.bumptech.glide.g.b bVar : com.bumptech.glide.i.h.a(mVar.f3399a)) {
            if (!bVar.f() && !bVar.h() && !bVar.e()) {
                bVar.b();
            }
        }
        mVar.f3400b.clear();
    }

    @Override // com.bumptech.glide.d.h
    public final void onStop() {
        com.bumptech.glide.i.h.a();
        m mVar = this.c;
        mVar.c = true;
        for (com.bumptech.glide.g.b bVar : com.bumptech.glide.i.h.a(mVar.f3399a)) {
            if (bVar.e()) {
                bVar.d();
                mVar.f3400b.add(bVar);
            }
        }
    }
}
