package p193e.p194a.p437c.p438a.p514q.p516b;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Named;
import kotlinx.coroutines.CoroutineExceptionHandler;
import n3.z.i0;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1909z.i0$a;
import p1727n3.p1909z.i0$c;
import p1727n3.p1909z.i0$d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9115i;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p579q.C10509f;
import p193e.p194a.p437c.p579q.C10512i;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.g;
import q3.a.y;
import s1.s;
import s1.w.a;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.a.q.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e.class */
public final class C9542e extends i0<Long, AdapterItem> {

    /* renamed from: d */
    public final y f28893d;

    /* renamed from: e */
    public final q3.a.i0 f28894e;

    /* renamed from: h */
    public boolean f28897h;

    /* renamed from: i */
    public C10512i f28898i;

    /* renamed from: k */
    public final C9554f f28900k;

    /* renamed from: l */
    public final f f28901l;

    /* renamed from: m */
    public final C9538a f28902m;

    /* renamed from: n */
    public final C27010k0<Boolean> f28903n;

    /* renamed from: f */
    public final List<Long> f28895f = new ArrayList();

    /* renamed from: g */
    public final List<Long> f28896g = new ArrayList();

    /* renamed from: j */
    public final CoroutineExceptionHandler f28899j = new C9543a(CoroutineExceptionHandler.a.a);

    /* renamed from: e.a.c.a.q.b.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$a.class */
    public static final class C9543a extends a implements CoroutineExceptionHandler {
        public C9543a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10263b.f30414d.m26508b(th, null);
        }
    }

    @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource", f = "UpdatesPageDataSource.kt", l = {62}, m = "initializeBoundary")
    /* renamed from: e.a.c.a.q.b.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$b.class */
    public static final class C9544b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28904d;

        /* renamed from: e */
        public int f28905e;

        /* renamed from: g */
        public Object f28907g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9544b(d dVar) {
            super(dVar);
            C9542e.this = r4;
        }

        /* renamed from: s */
        public final Object m27457s(Object obj) {
            this.f28904d = obj;
            this.f28905e |= Integer.MIN_VALUE;
            return C9542e.this.m27458j(this);
        }
    }

    @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadAfter$1", f = "UpdatesPageDataSource.kt", l = {98, 165}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.q.b.e$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$c.class */
    public static final class C9545c extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f28908e;

        /* renamed from: g */
        public final /* synthetic */ i0$d f28910g;

        /* renamed from: h */
        public final /* synthetic */ i0$a f28911h;

        /* renamed from: e.a.c.a.q.b.e$c$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$c$a.class */
        public static final class C9546a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadAfter$1$invokeSuspend$$inlined$collect$1", f = "UpdatesPageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.q.b.e$c$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$c$a$a.class */
            public static final class C9547a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f28913d;

                /* renamed from: e */
                public int f28914e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9547a(d dVar) {
                    super(dVar);
                    C9546a.this = r4;
                }

                /* renamed from: s */
                public final Object m27452s(Object obj) {
                    this.f28913d = obj;
                    this.f28914e |= Integer.MIN_VALUE;
                    return C9546a.this.m27453a(null, this);
                }
            }

            public C9546a() {
                C9545c.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v29, types: [e.a.c.a.q.b.e, n3.z.v] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27453a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.C9546a.C9547a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.q.b.e$c$a$a r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.C9546a.C9547a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f28914e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f28914e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.q.b.e$c$a$a r0 = new e.a.c.a.q.b.e$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f28913d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f28914e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Ld0
                L55:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5f:
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r6
                    java.util.List r0 = (java.util.List) r0
                    r6 = r0
                    r0 = r5
                    e.a.c.a.q.b.e$c r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.this
                    r10 = r0
                    r0 = r10
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    java.util.List<java.lang.Long> r0 = r0.f28895f
                    r1 = r10
                    n3.z.i0$d r1 = r1.f28910g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto Lac
                    r0 = r5
                    e.a.c.a.q.b.e$c r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.q.b.e$c r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    q3.a.y r0 = r0.f28893d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f28914e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Ld0
                    r0 = r8
                    return r0
                Lac:
                    r0 = r5
                    e.a.c.a.q.b.e$c r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.this
                    r7 = r0
                    r0 = r7
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    java.util.List<java.lang.Long> r0 = r0.f28895f
                    r1 = r7
                    n3.z.i0$d r1 = r1.f28910g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.add(r1)
                    r0 = r5
                    e.a.c.a.q.b.e$c r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.this
                    n3.z.i0$a r0 = r0.f28911h
                    r1 = r6
                    r0.m87a(r1)
                Ld0:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9545c.C9546a.m27453a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9545c(i0$d i0_d, i0$a i0_a, d dVar) {
            super(2, dVar);
            C9542e.this = r5;
            this.f28910g = i0_d;
            this.f28911h = i0_a;
        }

        /* renamed from: i */
        public final d<s> m27456i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9545c(this.f28910g, this.f28911h, dVar);
        }

        /* renamed from: k */
        public final Object m27455k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9545c(this.f28910g, this.f28911h, dVar).m27454s(s.a);
        }

        /* renamed from: s */
        public final Object m27454s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f28908e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9542e c9542e = C9542e.this;
                this.f28908e = 1;
                if (c9542e.m27458j(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C9554f c9554f = C9542e.this.f28900k;
            LoadDirection loadDirection = LoadDirection.AFTER;
            long longValue = ((Number) this.f28910g.f77696a).longValue();
            b y = new b(((Number) this.f28910g.f77696a).longValue()).P().y(15);
            l.d(y, "DateTime(params.key).wit…).minusDays(DAYS_TO_LOAD)");
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c9554f.m27874c(new C10509f(false, longValue, ((w3.b.a.e0.e) y).a, loadDirection, C9542e.m27459i(C9542e.this), null, null, null, 224));
            C9546a c9546a = new C9546a();
            this.f28908e = 2;
            if (m27874c.c(c9546a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadBefore$1", f = "UpdatesPageDataSource.kt", l = {121, 165}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.q.b.e$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$d.class */
    public static final class C9548d extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f28916e;

        /* renamed from: g */
        public final /* synthetic */ i0$d f28918g;

        /* renamed from: h */
        public final /* synthetic */ i0$a f28919h;

        /* renamed from: e.a.c.a.q.b.e$d$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$d$a.class */
        public static final class C9549a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadBefore$1$invokeSuspend$$inlined$collect$1", f = "UpdatesPageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.q.b.e$d$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$d$a$a.class */
            public static final class C9550a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f28921d;

                /* renamed from: e */
                public int f28922e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9550a(d dVar) {
                    super(dVar);
                    C9549a.this = r4;
                }

                /* renamed from: s */
                public final Object m27447s(Object obj) {
                    this.f28921d = obj;
                    this.f28922e |= Integer.MIN_VALUE;
                    return C9549a.this.m27448a(null, this);
                }
            }

            public C9549a() {
                C9548d.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v29, types: [e.a.c.a.q.b.e, n3.z.v] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27448a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.C9549a.C9550a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.q.b.e$d$a$a r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.C9549a.C9550a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f28922e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f28922e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.q.b.e$d$a$a r0 = new e.a.c.a.q.b.e$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f28921d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f28922e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Ld0
                L55:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5f:
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r6
                    java.util.List r0 = (java.util.List) r0
                    r6 = r0
                    r0 = r5
                    e.a.c.a.q.b.e$d r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.this
                    r10 = r0
                    r0 = r10
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    java.util.List<java.lang.Long> r0 = r0.f28896g
                    r1 = r10
                    n3.z.i0$d r1 = r1.f28918g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto Lac
                    r0 = r5
                    e.a.c.a.q.b.e$d r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.q.b.e$d r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    q3.a.y r0 = r0.f28893d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f28922e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Ld0
                    r0 = r8
                    return r0
                Lac:
                    r0 = r5
                    e.a.c.a.q.b.e$d r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.this
                    r7 = r0
                    r0 = r7
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    java.util.List<java.lang.Long> r0 = r0.f28896g
                    r1 = r7
                    n3.z.i0$d r1 = r1.f28918g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.add(r1)
                    r0 = r5
                    e.a.c.a.q.b.e$d r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.this
                    n3.z.i0$a r0 = r0.f28919h
                    r1 = r6
                    r0.m87a(r1)
                Ld0:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9548d.C9549a.m27448a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9548d(i0$d i0_d, i0$a i0_a, d dVar) {
            super(2, dVar);
            C9542e.this = r5;
            this.f28918g = i0_d;
            this.f28919h = i0_a;
        }

        /* renamed from: i */
        public final d<s> m27451i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9548d(this.f28918g, this.f28919h, dVar);
        }

        /* renamed from: k */
        public final Object m27450k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9548d(this.f28918g, this.f28919h, dVar).m27449s(s.a);
        }

        /* renamed from: s */
        public final Object m27449s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f28916e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9542e c9542e = C9542e.this;
                this.f28916e = 1;
                if (c9542e.m27458j(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C9554f c9554f = C9542e.this.f28900k;
            LoadDirection loadDirection = LoadDirection.BEFORE;
            long longValue = ((Number) this.f28918g.f77696a).longValue();
            b D = new b(((Number) this.f28918g.f77696a).longValue()).P().D(15);
            l.d(D, "DateTime(params.key).wit…().plusDays(DAYS_TO_LOAD)");
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c9554f.m27874c(new C10509f(false, longValue, ((w3.b.a.e0.e) D).a, loadDirection, C9542e.m27459i(C9542e.this), null, null, null, 224));
            C9549a c9549a = new C9549a();
            this.f28916e = 2;
            if (m27874c.c(c9549a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadInitial$1", f = "UpdatesPageDataSource.kt", l = {74, 165}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.q.b.e$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$e.class */
    public static final class C9551e extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f28924e;

        /* renamed from: g */
        public final /* synthetic */ long f28926g;

        /* renamed from: h */
        public final /* synthetic */ i0.b f28927h;

        /* renamed from: e.a.c.a.q.b.e$e$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$e$a.class */
        public static final class C9552a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageDataSource$loadInitial$1$invokeSuspend$$inlined$collect$1", f = "UpdatesPageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.q.b.e$e$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/e$e$a$a.class */
            public static final class C9553a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f28929d;

                /* renamed from: e */
                public int f28930e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9553a(d dVar) {
                    super(dVar);
                    C9552a.this = r4;
                }

                /* renamed from: s */
                public final Object m27442s(Object obj) {
                    this.f28929d = obj;
                    this.f28930e |= Integer.MIN_VALUE;
                    return C9552a.this.m27443a(null, this);
                }
            }

            public C9552a() {
                C9551e.this = r4;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v14, types: [e.a.c.a.q.b.e, n3.z.v] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27443a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.C9552a.C9553a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.q.b.e$e$a$a r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.C9552a.C9553a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f28930e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f28930e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.q.b.e$e$a$a r0 = new e.a.c.a.q.b.e$e$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f28929d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f28930e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Lbc
                L55:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5f:
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r6
                    java.util.List r0 = (java.util.List) r0
                    r6 = r0
                    r0 = r5
                    e.a.c.a.q.b.e$e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    r10 = r0
                    r0 = r10
                    boolean r0 = r0.f28897h
                    if (r0 == 0) goto L9a
                    r0 = r10
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.q.b.e$e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.this
                    e.a.c.a.q.b.e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.this
                    q3.a.y r0 = r0.f28893d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f28930e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Lbc
                    r0 = r8
                    return r0
                L9a:
                    r0 = r10
                    r1 = 1
                    r0.f28897h = r1
                    r0 = r10
                    n3.v.k0<java.lang.Boolean> r0 = r0.f28903n
                    r1 = r6
                    boolean r1 = r1.isEmpty()
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
                    r0.mo1001j(r1)
                    r0 = r5
                    e.a.c.a.q.b.e$e r0 = p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.this
                    n3.z.i0$b r0 = r0.f28927h
                    r1 = r6
                    r0.m87a(r1)
                Lbc:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9551e.C9552a.m27443a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9551e(long j, i0.b bVar, d dVar) {
            super(2, dVar);
            C9542e.this = r5;
            this.f28926g = j;
            this.f28927h = bVar;
        }

        /* renamed from: i */
        public final d<s> m27446i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9551e(this.f28926g, this.f28927h, dVar);
        }

        /* renamed from: k */
        public final Object m27445k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9551e(this.f28926g, this.f28927h, dVar).m27444s(s.a);
        }

        /* renamed from: s */
        public final Object m27444s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f28924e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C9542e c9542e = C9542e.this;
                this.f28924e = 1;
                if (c9542e.m27458j(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            C9554f c9554f = C9542e.this.f28900k;
            long j = this.f28926g;
            b y = new b(j).P().y(15);
            l.d(y, "DateTime(initialPosition…).minusDays(DAYS_TO_LOAD)");
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c9554f.m27874c(new C10509f(true, j, ((w3.b.a.e0.e) y).a, LoadDirection.AFTER, C9542e.m27459i(C9542e.this), null, null, null, 224));
            C9552a c9552a = new C9552a();
            this.f28924e = 2;
            if (m27874c.c(c9552a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    public C9542e(C9554f c9554f, @Named("IO") f fVar, C9538a c9538a, C27010k0<Boolean> c27010k0) {
        l.e(c9554f, "updatesPageFlowUseCase");
        l.e(fVar, "ioContext");
        l.e(c9538a, "updatesBoundaryUseCase");
        l.e(c27010k0, "emptyStateLv");
        this.f28900k = c9554f;
        this.f28901l = fVar;
        this.f28902m = c9538a;
        this.f28903n = c27010k0;
        y n = s1.a.a.a.v0.f.d.n((p1) null, 1);
        this.f28893d = n;
        this.f28894e = s1.a.a.a.v0.f.d.h(fVar.plus(n));
        int i = CoroutineExceptionHandler.d0;
    }

    /* renamed from: i */
    public static final /* synthetic */ C10512i m27459i(C9542e c9542e) {
        C10512i c10512i = c9542e.f28898i;
        if (c10512i != null) {
            return c10512i;
        }
        l.l("boundary");
        throw null;
    }

    /* renamed from: e */
    public Object m27463e(Object obj) {
        AdapterItem adapterItem = (AdapterItem) obj;
        l.e(adapterItem, "item");
        if (adapterItem instanceof AbstractC9115i) {
            Object mo27868a = ((AbstractC9115i) adapterItem).mo27868a();
            Objects.requireNonNull(mo27868a, "null cannot be cast to non-null type kotlin.Long");
            return Long.valueOf(((Long) mo27868a).longValue());
        }
        throw new IllegalArgumentException("Item that needs to be considered an index should implement PagedKey");
    }

    /* renamed from: f */
    public void m27462f(i0$d<Long> i0_d, i0$a<AdapterItem> i0_a) {
        l.e(i0_d, "params");
        l.e(i0_a, "callback");
        s1.a.a.a.v0.f.d.w2(this.f28894e, this.f28899j, (j0) null, new C9545c(i0_d, i0_a, null), 2, (Object) null);
    }

    /* renamed from: g */
    public void m27461g(i0$d<Long> i0_d, i0$a<AdapterItem> i0_a) {
        l.e(i0_d, "params");
        l.e(i0_a, "callback");
        s1.a.a.a.v0.f.d.w2(this.f28894e, this.f28899j, (j0) null, new C9548d(i0_d, i0_a, null), 2, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: h */
    public void m27460h(i0$c<Long> i0_c, i0.b<AdapterItem> bVar) {
        char c;
        l.e(i0_c, "params");
        l.e(bVar, "callback");
        Long l = i0_c.f77695a;
        if (l != null) {
            c = l.longValue();
        } else {
            b bVar2 = new b();
            l.d(bVar2, "DateTime.now()");
            c = ((w3.b.a.e0.e) bVar2).a;
        }
        s1.a.a.a.v0.f.d.w2(this.f28894e, this.f28899j, (j0) null, new C9551e(c, bVar, null), 2, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27458j(s1.w.d<? super s1.s> r8) {
        /*
            r7 = this;
            s1.s r0 = s1.s.a
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9544b
            if (r0 == 0) goto L2c
            r0 = r8
            e.a.c.a.q.b.e$b r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9542e.C9544b) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f28905e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f28905e = r1
            r0 = r10
            r8 = r0
            goto L36
        L2c:
            e.a.c.a.q.b.e$b r0 = new e.a.c.a.q.b.e$b
            r1 = r0
            r2 = r7
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L36:
            r0 = r8
            java.lang.Object r0 = r0.f28904d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r8
            int r0 = r0.f28905e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L6a
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L60
            r0 = r8
            java.lang.Object r0 = r0.f28907g
            e.a.c.a.q.b.e r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9542e) r0
            r8 = r0
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La2
        L60:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6a:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.c.q.i r0 = r0.f28898i
            if (r0 != 0) goto Laa
            r0 = r7
            e.a.c.a.q.b.a r0 = r0.f28902m
            r10 = r0
            r0 = r8
            r1 = r7
            r0.f28907g = r1
            r0 = r8
            r1 = 1
            r0.f28905e = r1
            r0 = r10
            s1.w.f r0 = r0.f27793a
            e.a.c.a.i.k$a r1 = new e.a.c.a.i.k$a
            r2 = r1
            r3 = r10
            r4 = r9
            r5 = 0
            r2.<init>(r4, r5)
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r10 = r0
            r0 = r10
            r1 = r12
            if (r0 != r1) goto La0
            r0 = r12
            return r0
        La0:
            r0 = r7
            r8 = r0
        La2:
            r0 = r8
            r1 = r10
            e.a.c.q.i r1 = (p193e.p194a.p437c.p579q.C10512i) r1
            r0.f28898i = r1
        Laa:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9542e.m27458j(s1.w.d):java.lang.Object");
    }
}
