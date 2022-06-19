package p193e.p194a.p437c.p438a.p456d.p461d;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.insightsui.TransactionType;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
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
import p193e.p194a.p437c.p438a.p493l.C9234a;
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
/* renamed from: e.a.c.a.d.d.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e.class */
public final class C8892e extends i0<Long, AdapterItem> {

    /* renamed from: d */
    public final y f27092d;

    /* renamed from: e */
    public final q3.a.i0 f27093e;

    /* renamed from: h */
    public boolean f27096h;

    /* renamed from: i */
    public C10512i f27097i;

    /* renamed from: k */
    public final C8904f f27099k;

    /* renamed from: l */
    public final f f27100l;

    /* renamed from: m */
    public final C8888a f27101m;

    /* renamed from: n */
    public final FinanceTab f27102n;

    /* renamed from: o */
    public final List<C9234a> f27103o;

    /* renamed from: p */
    public final C27010k0<Boolean> f27104p;

    /* renamed from: q */
    public final String f27105q;

    /* renamed from: f */
    public final List<Long> f27094f = new ArrayList();

    /* renamed from: g */
    public final List<Long> f27095g = new ArrayList();

    /* renamed from: j */
    public final CoroutineExceptionHandler f27098j = new C8893a(CoroutineExceptionHandler.a.a);

    /* renamed from: e.a.c.a.d.d.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$a.class */
    public static final class C8893a extends a implements CoroutineExceptionHandler {
        public C8893a(CoroutineExceptionHandler.a aVar) {
            super(aVar);
        }

        public void handleException(f fVar, Throwable th) {
            C10263b.f30414d.m26508b(th, null);
        }
    }

    @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource", f = "FinancePageDataSource.kt", l = {69}, m = "initializeBoundary")
    /* renamed from: e.a.c.a.d.d.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$b.class */
    public static final class C8894b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f27106d;

        /* renamed from: e */
        public int f27107e;

        /* renamed from: g */
        public Object f27109g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8894b(d dVar) {
            super(dVar);
            C8892e.this = r4;
        }

        /* renamed from: s */
        public final Object m27972s(Object obj) {
            this.f27106d = obj;
            this.f27107e |= Integer.MIN_VALUE;
            return C8892e.this.m27973k(this);
        }
    }

    @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadAfter$1", f = "FinancePageDataSource.kt", l = {108, 193}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.d.e$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$c.class */
    public static final class C8895c extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f27110e;

        /* renamed from: g */
        public final /* synthetic */ i0$d f27112g;

        /* renamed from: h */
        public final /* synthetic */ i0$a f27113h;

        /* renamed from: e.a.c.a.d.d.e$c$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$c$a.class */
        public static final class C8896a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadAfter$1$invokeSuspend$$inlined$collect$1", f = "FinancePageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.d.d.e$c$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$c$a$a.class */
            public static final class C8897a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f27115d;

                /* renamed from: e */
                public int f27116e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C8897a(d dVar) {
                    super(dVar);
                    C8896a.this = r4;
                }

                /* renamed from: s */
                public final Object m27967s(Object obj) {
                    this.f27115d = obj;
                    this.f27116e |= Integer.MIN_VALUE;
                    return C8896a.this.m27968a(null, this);
                }
            }

            public C8896a() {
                C8895c.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v29, types: [n3.z.v, e.a.c.a.d.d.e] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27968a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.C8896a.C8897a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.d.d.e$c$a$a r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.C8896a.C8897a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f27116e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f27116e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.d.d.e$c$a$a r0 = new e.a.c.a.d.d.e$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f27115d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f27116e
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
                    e.a.c.a.d.d.e$c r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.this
                    r10 = r0
                    r0 = r10
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    java.util.List<java.lang.Long> r0 = r0.f27094f
                    r1 = r10
                    n3.z.i0$d r1 = r1.f27112g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto Lac
                    r0 = r5
                    e.a.c.a.d.d.e$c r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.d.d.e$c r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    q3.a.y r0 = r0.f27092d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f27116e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Ld0
                    r0 = r8
                    return r0
                Lac:
                    r0 = r5
                    e.a.c.a.d.d.e$c r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.this
                    r7 = r0
                    r0 = r7
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    java.util.List<java.lang.Long> r0 = r0.f27094f
                    r1 = r7
                    n3.z.i0$d r1 = r1.f27112g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.add(r1)
                    r0 = r5
                    e.a.c.a.d.d.e$c r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.this
                    n3.z.i0$a r0 = r0.f27113h
                    r1 = r6
                    r0.m87a(r1)
                Ld0:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8895c.C8896a.m27968a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8895c(i0$d i0_d, i0$a i0_a, d dVar) {
            super(2, dVar);
            C8892e.this = r5;
            this.f27112g = i0_d;
            this.f27113h = i0_a;
        }

        /* renamed from: i */
        public final d<s> m27971i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8895c(this.f27112g, this.f27113h, dVar);
        }

        /* renamed from: k */
        public final Object m27970k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8895c(this.f27112g, this.f27113h, dVar).m27969s(s.a);
        }

        /* renamed from: s */
        public final Object m27969s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f27110e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8892e c8892e = C8892e.this;
                this.f27110e = 1;
                if (c8892e.m27973k(this) == aVar) {
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
            C8904f c8904f = C8892e.this.f27099k;
            LoadDirection loadDirection = LoadDirection.AFTER;
            long longValue = ((Number) this.f27112g.f77696a).longValue();
            b y = new b(((Number) this.f27112g.f77696a).longValue()).P().y(15);
            l.d(y, "DateTime(params.key).wit…).minusDays(DAYS_TO_LOAD)");
            long j = ((w3.b.a.e0.e) y).a;
            C10512i m27975i = C8892e.m27975i(C8892e.this);
            C8892e c8892e2 = C8892e.this;
            TransactionType m27974j = c8892e2.m27974j(c8892e2.f27102n);
            List<C9234a> list = C8892e.this.f27103o;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C9234a c9234a : list) {
                arrayList.add(c9234a.f28029c);
            }
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c8904f.m27874c(new C10509f(false, longValue, j, loadDirection, m27975i, m27974j, C25225a.m3825w0(arrayList), C8892e.this.f27105q));
            C8896a c8896a = new C8896a();
            this.f27110e = 2;
            if (m27874c.c(c8896a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadBefore$1", f = "FinancePageDataSource.kt", l = {134, 193}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.d.e$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$d.class */
    public static final class C8898d extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f27118e;

        /* renamed from: g */
        public final /* synthetic */ i0$d f27120g;

        /* renamed from: h */
        public final /* synthetic */ i0$a f27121h;

        /* renamed from: e.a.c.a.d.d.e$d$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$d$a.class */
        public static final class C8899a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadBefore$1$invokeSuspend$$inlined$collect$1", f = "FinancePageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.d.d.e$d$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$d$a$a.class */
            public static final class C8900a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f27123d;

                /* renamed from: e */
                public int f27124e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C8900a(d dVar) {
                    super(dVar);
                    C8899a.this = r4;
                }

                /* renamed from: s */
                public final Object m27962s(Object obj) {
                    this.f27123d = obj;
                    this.f27124e |= Integer.MIN_VALUE;
                    return C8899a.this.m27963a(null, this);
                }
            }

            public C8899a() {
                C8898d.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v29, types: [n3.z.v, e.a.c.a.d.d.e] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27963a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.C8899a.C8900a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.d.d.e$d$a$a r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.C8899a.C8900a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f27124e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f27124e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.d.d.e$d$a$a r0 = new e.a.c.a.d.d.e$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f27123d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f27124e
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
                    e.a.c.a.d.d.e$d r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.this
                    r10 = r0
                    r0 = r10
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    java.util.List<java.lang.Long> r0 = r0.f27095g
                    r1 = r10
                    n3.z.i0$d r1 = r1.f27120g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto Lac
                    r0 = r5
                    e.a.c.a.d.d.e$d r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.d.d.e$d r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    q3.a.y r0 = r0.f27092d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f27124e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Ld0
                    r0 = r8
                    return r0
                Lac:
                    r0 = r5
                    e.a.c.a.d.d.e$d r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.this
                    r7 = r0
                    r0 = r7
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    java.util.List<java.lang.Long> r0 = r0.f27095g
                    r1 = r7
                    n3.z.i0$d r1 = r1.f27120g
                    Key r1 = r1.f77696a
                    boolean r0 = r0.add(r1)
                    r0 = r5
                    e.a.c.a.d.d.e$d r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.this
                    n3.z.i0$a r0 = r0.f27121h
                    r1 = r6
                    r0.m87a(r1)
                Ld0:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8898d.C8899a.m27963a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8898d(i0$d i0_d, i0$a i0_a, d dVar) {
            super(2, dVar);
            C8892e.this = r5;
            this.f27120g = i0_d;
            this.f27121h = i0_a;
        }

        /* renamed from: i */
        public final d<s> m27966i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8898d(this.f27120g, this.f27121h, dVar);
        }

        /* renamed from: k */
        public final Object m27965k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8898d(this.f27120g, this.f27121h, dVar).m27964s(s.a);
        }

        /* renamed from: s */
        public final Object m27964s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f27118e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8892e c8892e = C8892e.this;
                this.f27118e = 1;
                if (c8892e.m27973k(this) == aVar) {
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
            C8904f c8904f = C8892e.this.f27099k;
            LoadDirection loadDirection = LoadDirection.BEFORE;
            long longValue = ((Number) this.f27120g.f77696a).longValue();
            b D = new b(((Number) this.f27120g.f77696a).longValue()).P().D(15);
            l.d(D, "DateTime(params.key).wit…().plusDays(DAYS_TO_LOAD)");
            long j = ((w3.b.a.e0.e) D).a;
            C10512i m27975i = C8892e.m27975i(C8892e.this);
            C8892e c8892e2 = C8892e.this;
            TransactionType m27974j = c8892e2.m27974j(c8892e2.f27102n);
            List<C9234a> list = C8892e.this.f27103o;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C9234a c9234a : list) {
                arrayList.add(c9234a.f28029c);
            }
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c8904f.m27874c(new C10509f(false, longValue, j, loadDirection, m27975i, m27974j, C25225a.m3825w0(arrayList), C8892e.this.f27105q));
            C8899a c8899a = new C8899a();
            this.f27118e = 2;
            if (m27874c.c(c8899a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadInitial$1", f = "FinancePageDataSource.kt", l = {81, 193}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.d.e$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$e.class */
    public static final class C8901e extends i implements p<q3.a.i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f27126e;

        /* renamed from: g */
        public final /* synthetic */ long f27128g;

        /* renamed from: h */
        public final /* synthetic */ i0.b f27129h;

        /* renamed from: e.a.c.a.d.d.e$e$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$e$a.class */
        public static final class C8902a implements g<List<? extends AdapterItem>> {

            @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageDataSource$loadInitial$1$invokeSuspend$$inlined$collect$1", f = "FinancePageDataSource.kt", l = {137}, m = "emit")
            /* renamed from: e.a.c.a.d.d.e$e$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/e$e$a$a.class */
            public static final class C8903a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f27131d;

                /* renamed from: e */
                public int f27132e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C8903a(d dVar) {
                    super(dVar);
                    C8902a.this = r4;
                }

                /* renamed from: s */
                public final Object m27957s(Object obj) {
                    this.f27131d = obj;
                    this.f27132e |= Integer.MIN_VALUE;
                    return C8902a.this.m27958a(null, this);
                }
            }

            public C8902a() {
                C8901e.this = r4;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* JADX WARN: Type inference failed for: r0v14, types: [n3.z.v, e.a.c.a.d.d.e] */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27958a(java.util.List<? extends com.truecaller.insights.p168ui.models.AdapterItem> r6, s1.w.d<? super s1.s> r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.C8902a.C8903a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.d.d.e$e$a$a r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.C8902a.C8903a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f27132e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f27132e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.d.d.e$e$a$a r0 = new e.a.c.a.d.d.e$e$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f27131d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f27132e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Lc2
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
                    e.a.c.a.d.d.e$e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    r10 = r0
                    r0 = r10
                    boolean r0 = r0.f27096h
                    if (r0 == 0) goto L9a
                    r0 = r10
                    r0.m23b()
                    r0 = r5
                    e.a.c.a.d.d.e$e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.this
                    e.a.c.a.d.d.e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.this
                    q3.a.y r0 = r0.f27092d
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f27132e = r1
                    r0 = r6
                    r1 = r7
                    java.lang.Object r0 = s1.a.a.a.v0.f.d.V(r0, r1)
                    r1 = r8
                    if (r0 != r1) goto Lc2
                    r0 = r8
                    return r0
                L9a:
                    r0 = r10
                    r1 = 1
                    r0.f27096h = r1
                    r0 = r10
                    n3.v.k0<java.lang.Boolean> r0 = r0.f27104p
                    r7 = r0
                    r0 = r7
                    if (r0 == 0) goto Lb7
                    r0 = r7
                    r1 = r6
                    boolean r1 = r1.isEmpty()
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
                    r0.mo1001j(r1)
                Lb7:
                    r0 = r5
                    e.a.c.a.d.d.e$e r0 = p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.this
                    n3.z.i0$b r0 = r0.f27129h
                    r1 = r6
                    r0.m87a(r1)
                Lc2:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8901e.C8902a.m27958a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8901e(long j, i0.b bVar, d dVar) {
            super(2, dVar);
            C8892e.this = r5;
            this.f27128g = j;
            this.f27129h = bVar;
        }

        /* renamed from: i */
        public final d<s> m27961i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8901e(this.f27128g, this.f27129h, dVar);
        }

        /* renamed from: k */
        public final Object m27960k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8901e(this.f27128g, this.f27129h, dVar).m27959s(s.a);
        }

        /* renamed from: s */
        public final Object m27959s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f27126e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8892e c8892e = C8892e.this;
                this.f27126e = 1;
                if (c8892e.m27973k(this) == aVar) {
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
            C8904f c8904f = C8892e.this.f27099k;
            long j = this.f27128g;
            b y = new b(j).P().y(15);
            l.d(y, "DateTime(initialPosition…).minusDays(DAYS_TO_LOAD)");
            long j2 = ((w3.b.a.e0.e) y).a;
            LoadDirection loadDirection = LoadDirection.AFTER;
            C10512i m27975i = C8892e.m27975i(C8892e.this);
            C8892e c8892e2 = C8892e.this;
            TransactionType m27974j = c8892e2.m27974j(c8892e2.f27102n);
            List<C9234a> list = C8892e.this.f27103o;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C9234a c9234a : list) {
                arrayList.add(c9234a.f28029c);
            }
            q3.a.x2.f<List<? extends AdapterItem>> m27874c = c8904f.m27874c(new C10509f(true, j, j2, loadDirection, m27975i, m27974j, C25225a.m3825w0(arrayList), C8892e.this.f27105q));
            C8902a c8902a = new C8902a();
            this.f27126e = 2;
            if (m27874c.c(c8902a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    public C8892e(C8904f c8904f, @Named("IO") f fVar, C8888a c8888a, FinanceTab financeTab, List<C9234a> list, C27010k0<Boolean> c27010k0, String str) {
        l.e(c8904f, "financePageUseCase");
        l.e(fVar, "ioContext");
        l.e(c8888a, "financeBoundaryUseCase");
        l.e(financeTab, "financeTab");
        l.e(list, "filters");
        this.f27099k = c8904f;
        this.f27100l = fVar;
        this.f27101m = c8888a;
        this.f27102n = financeTab;
        this.f27103o = list;
        this.f27104p = c27010k0;
        this.f27105q = str;
        y n = s1.a.a.a.v0.f.d.n((p1) null, 1);
        this.f27092d = n;
        this.f27093e = s1.a.a.a.v0.f.d.h(fVar.plus(n));
        int i = CoroutineExceptionHandler.d0;
    }

    /* renamed from: i */
    public static final /* synthetic */ C10512i m27975i(C8892e c8892e) {
        C10512i c10512i = c8892e.f27097i;
        if (c10512i != null) {
            return c10512i;
        }
        l.l("boundary");
        throw null;
    }

    /* renamed from: e */
    public Object m27979e(Object obj) {
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
    public void m27978f(i0$d<Long> i0_d, i0$a<AdapterItem> i0_a) {
        l.e(i0_d, "params");
        l.e(i0_a, "callback");
        s1.a.a.a.v0.f.d.w2(this.f27093e, this.f27098j, (j0) null, new C8895c(i0_d, i0_a, null), 2, (Object) null);
    }

    /* renamed from: g */
    public void m27977g(i0$d<Long> i0_d, i0$a<AdapterItem> i0_a) {
        l.e(i0_d, "params");
        l.e(i0_a, "callback");
        s1.a.a.a.v0.f.d.w2(this.f27093e, this.f27098j, (j0) null, new C8898d(i0_d, i0_a, null), 2, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: h */
    public void m27976h(i0$c<Long> i0_c, i0.b<AdapterItem> bVar) {
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
        s1.a.a.a.v0.f.d.w2(this.f27093e, this.f27098j, (j0) null, new C8901e(c, bVar, null), 2, (Object) null);
    }

    /* renamed from: j */
    public final TransactionType m27974j(FinanceTab financeTab) {
        TransactionType transactionType;
        l.e(financeTab, "financeTab");
        int ordinal = financeTab.ordinal();
        if (ordinal == 0) {
            transactionType = TransactionType.ALL;
        } else if (ordinal == 1) {
            transactionType = TransactionType.CREDIT;
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            transactionType = TransactionType.DEBIT;
        }
        return transactionType;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27973k(s1.w.d<? super s1.s> r8) {
        /*
            r7 = this;
            s1.s r0 = s1.s.a
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8894b
            if (r0 == 0) goto L2c
            r0 = r8
            e.a.c.a.d.d.e$b r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8892e.C8894b) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f27107e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f27107e = r1
            r0 = r10
            r8 = r0
            goto L36
        L2c:
            e.a.c.a.d.d.e$b r0 = new e.a.c.a.d.d.e$b
            r1 = r0
            r2 = r7
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L36:
            r0 = r8
            java.lang.Object r0 = r0.f27106d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r8
            int r0 = r0.f27107e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L6b
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L60
            r0 = r8
            java.lang.Object r0 = r0.f27109g
            e.a.c.a.d.d.e r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8892e) r0
            r8 = r0
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La3
        L60:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6b:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.c.q.i r0 = r0.f27097i
            if (r0 != 0) goto Lab
            r0 = r7
            e.a.c.a.d.d.a r0 = r0.f27101m
            r10 = r0
            r0 = r8
            r1 = r7
            r0.f27109g = r1
            r0 = r8
            r1 = 1
            r0.f27107e = r1
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
            if (r0 != r1) goto La1
            r0 = r12
            return r0
        La1:
            r0 = r7
            r8 = r0
        La3:
            r0 = r8
            r1 = r10
            e.a.c.q.i r1 = (p193e.p194a.p437c.p579q.C10512i) r1
            r0.f27097i = r1
        Lab:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8892e.m27973k(s1.w.d):java.lang.Object");
    }
}
