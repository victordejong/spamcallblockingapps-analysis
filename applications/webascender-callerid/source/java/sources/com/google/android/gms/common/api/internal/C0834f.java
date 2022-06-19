package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC0823i;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0813c;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.C0906c0;
import com.google.android.gms.common.internal.C0925p;
import com.google.android.gms.common.util.C0968j;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1647h;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import f.e.b;
import g.f.a.d.c.e.h;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public class C0834f implements Handler.Callback {

    /* renamed from: o */
    public static final Status f3381o = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: p */
    private static final Status f3382p = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: q */
    private static final Object f3383q = new Object();

    /* renamed from: r */
    private static C0834f f3384r;

    /* renamed from: d */
    private final Context f3388d;

    /* renamed from: e */
    private final e f3389e;

    /* renamed from: f */
    private final C0906c0 f3390f;

    /* renamed from: j */
    private w2 f3394j;
    @NotOnlyInitialized

    /* renamed from: m */
    private final Handler f3397m;

    /* renamed from: n */
    private volatile boolean f3398n;

    /* renamed from: a */
    private long f3385a = 5000;

    /* renamed from: b */
    private long f3386b = 120000;

    /* renamed from: c */
    private long f3387c = 10000;

    /* renamed from: g */
    private final AtomicInteger f3391g = new AtomicInteger(1);

    /* renamed from: h */
    private final AtomicInteger f3392h = new AtomicInteger(0);

    /* renamed from: i */
    private final Map<C0825b<?>, a<?>> f3393i = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: k */
    private final Set<C0825b<?>> f3395k = new b();

    /* renamed from: l */
    private final Set<C0825b<?>> f3396l = new b();

    /* renamed from: com.google.android.gms.common.api.internal.f$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f$c.class */
    private static final class C0835c {

        /* renamed from: a */
        private final C0825b<?> f3399a;

        /* renamed from: b */
        private final d f3400b;

        private C0835c(C0825b<?> c0825b, d dVar) {
            this.f3399a = c0825b;
            this.f3400b = dVar;
        }

        /* synthetic */ C0835c(C0825b c0825b, d dVar, u0 u0Var) {
            this(c0825b, dVar);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C0835c)) {
                return false;
            }
            C0835c c0835c = (C0835c) obj;
            return C0925p.m3327a(this.f3399a, c0835c.f3399a) && C0925p.m3327a(this.f3400b, c0835c.f3400b);
        }

        public final int hashCode() {
            return C0925p.m3326b(this.f3399a, this.f3400b);
        }

        public final String toString() {
            C0925p.C0926a m3325c = C0925p.m3325c(this);
            m3325c.m3324a(SubscriberAttributeKt.JSON_NAME_KEY, this.f3399a);
            m3325c.m3324a("feature", this.f3400b);
            return m3325c.toString();
        }
    }

    private C0834f(Context context, Looper looper, e eVar) {
        this.f3398n = true;
        this.f3388d = context;
        h hVar = new h(looper, this);
        this.f3397m = hVar;
        this.f3389e = eVar;
        this.f3390f = new C0906c0(eVar);
        if (C0968j.m3159a(context)) {
            this.f3398n = false;
        }
        hVar.sendMessage(hVar.obtainMessage(6));
    }

    /* renamed from: a */
    public static void m3603a() {
        synchronized (f3383q) {
            C0834f c0834f = f3384r;
            if (c0834f != null) {
                c0834f.f3392h.incrementAndGet();
                Handler handler = c0834f.f3397m;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* renamed from: c */
    public static C0834f m3601c(Context context) {
        C0834f c0834f;
        synchronized (f3383q) {
            if (f3384r == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f3384r = new C0834f(context.getApplicationContext(), handlerThread.getLooper(), e.r());
            }
            c0834f = f3384r;
        }
        return c0834f;
    }

    /* renamed from: n */
    private final a<?> m3590n(C0813c<?> c0813c) {
        C0825b<?> m3681i = c0813c.m3681i();
        a<?> aVar = this.f3393i.get(m3681i);
        a<?> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a<>(this, c0813c);
            this.f3393i.put(m3681i, aVar2);
        }
        if (aVar2.M()) {
            this.f3396l.add(m3681i);
        }
        aVar2.K();
        return aVar2;
    }

    /* renamed from: d */
    public final <O extends C0807a.AbstractC0810d> AbstractC1646g<Boolean> m3600d(C0813c<O> c0813c, C0842i.C0843a<?> c0843a) {
        C1647h c1647h = new C1647h();
        e2 e2Var = new e2(c0843a, c1647h);
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(13, new C0838g1(e2Var, this.f3392h.get(), c0813c)));
        return c1647h.m1449a();
    }

    /* renamed from: e */
    public final <O extends C0807a.AbstractC0810d> AbstractC1646g<Void> m3599e(C0813c<O> c0813c, AbstractC0851l<C0807a.AbstractC0808b, ?> abstractC0851l, AbstractC0872t<C0807a.AbstractC0808b, ?> abstractC0872t, Runnable runnable) {
        C1647h c1647h = new C1647h();
        c2 c2Var = new c2(new C0840h1(abstractC0851l, abstractC0872t, runnable), c1647h);
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(8, new C0838g1(c2Var, this.f3392h.get(), c0813c)));
        return c1647h.m1449a();
    }

    /* renamed from: f */
    public final void m3598f(C0813c<?> c0813c) {
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(7, c0813c));
    }

    /* renamed from: g */
    public final <O extends C0807a.AbstractC0810d> void m3597g(C0813c<O> c0813c, int i, d<? extends AbstractC0823i, C0807a.AbstractC0808b> dVar) {
        d2 d2Var = new d2(i, dVar);
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(4, new C0838g1(d2Var, this.f3392h.get(), c0813c)));
    }

    /* renamed from: h */
    public final <O extends C0807a.AbstractC0810d, ResultT> void m3596h(C0813c<O> c0813c, int i, AbstractC0865r<C0807a.AbstractC0808b, ResultT> abstractC0865r, C1647h<ResultT> c1647h, AbstractC0861p abstractC0861p) {
        f2 f2Var = new f2(i, abstractC0865r, c1647h, abstractC0861p);
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(4, new C0838g1(f2Var, this.f3392h.get(), c0813c)));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02db  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 1178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C0834f.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    final boolean m3595i(com.google.android.gms.common.b bVar, int i) {
        return this.f3389e.C(this.f3388d, bVar, i);
    }

    /* renamed from: j */
    public final int m3594j() {
        return this.f3391g.getAndIncrement();
    }

    /* renamed from: l */
    public final void m3592l(com.google.android.gms.common.b bVar, int i) {
        if (!m3595i(bVar, i)) {
            Handler handler = this.f3397m;
            handler.sendMessage(handler.obtainMessage(5, i, 0, bVar));
        }
    }

    /* renamed from: o */
    public final void m3589o() {
        Handler handler = this.f3397m;
        handler.sendMessage(handler.obtainMessage(3));
    }
}
