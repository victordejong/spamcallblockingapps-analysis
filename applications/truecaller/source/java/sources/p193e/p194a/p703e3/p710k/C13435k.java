package p193e.p194a.p703e3.p710k;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1135v0.AbstractC19335b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p703e3.p710k.AbstractC13458o;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.g;
import q3.a.x2.h;
import q3.a.x2.k1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.e3.k.k */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/k.class */
public final class C13435k implements AbstractC13433i, i0 {

    /* renamed from: a */
    public final f f38999a;

    /* renamed from: b */
    public final AtomicBoolean f39000b = new AtomicBoolean(false);

    /* renamed from: c */
    public final a1<AbstractC13458o> f39001c;

    /* renamed from: d */
    public final a1<AbstractC13458o> f39002d;

    /* renamed from: e */
    public p1 f39003e;

    /* renamed from: f */
    public final f f39004f;

    /* renamed from: g */
    public final AbstractC19335b f39005g;

    /* renamed from: h */
    public final AbstractC13497p f39006h;

    /* renamed from: i */
    public final AbstractC19222c f39007i;

    /* renamed from: j */
    public final AbstractC13430f f39008j;

    /* renamed from: k */
    public final AbstractC8621z f39009k;

    /* renamed from: l */
    public final AbstractC19462a f39010l;

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl", f = "CallAlertSimSupport.kt", l = {66}, m = "isOutgoingCallOnRegisteredSubId")
    /* renamed from: e.a.e3.k.k$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$a.class */
    public static final class C13436a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39011d;

        /* renamed from: e */
        public int f39012e;

        /* renamed from: g */
        public int f39014g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13436a(d dVar) {
            super(dVar);
            C13435k.this = r4;
        }

        /* renamed from: s */
        public final Object m21824s(Object obj) {
            this.f39011d = obj;
            this.f39012e |= Integer.MIN_VALUE;
            return C13435k.this.mo21833a(this);
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$listenCalls$1", f = "CallAlertSimSupport.kt", l = {114}, m = "invokeSuspend")
    /* renamed from: e.a.e3.k.k$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$b.class */
    public static final class C13437b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f39015e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13437b(d dVar) {
            super(2, dVar);
            C13435k.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21823i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13437b(dVar);
        }

        /* renamed from: k */
        public final Object m21822k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13437b(dVar).m21821s(s.a);
        }

        /* renamed from: s */
        public final Object m21821s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f39015e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13435k c13435k = C13435k.this;
                this.f39015e = 1;
                Object c = s1.a.a.a.v0.f.d.S0(new h(c13435k.f39005g.mo13445a()), 0, new C13456m(c13435k, null), 1, (Object) null).c(new C13455l(c13435k), this);
                if (c != obj3) {
                    c = obj2;
                }
                if (c == obj3) {
                    return obj3;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl", f = "CallAlertSimSupport.kt", l = {176}, m = "resolveIncomingCallSubId")
    /* renamed from: e.a.e3.k.k$c */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$c.class */
    public static final class C13438c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39017d;

        /* renamed from: e */
        public int f39018e;

        /* renamed from: g */
        public Object f39020g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13438c(d dVar) {
            super(dVar);
            C13435k.this = r4;
        }

        /* renamed from: s */
        public final Object m21820s(Object obj) {
            this.f39017d = obj;
            this.f39018e |= Integer.MIN_VALUE;
            return C13435k.this.m21826h(null, this);
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveIncomingCallSubId$subId$1", f = "CallAlertSimSupport.kt", l = {250}, m = "invokeSuspend")
    /* renamed from: e.a.e3.k.k$d */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d.class */
    public static final class C13439d extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f39021e;

        /* renamed from: g */
        public final /* synthetic */ String f39023g;

        /* renamed from: e.a.e3.k.k$d$a */
        /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$a.class */
        public static final class C13440a implements q3.a.x2.f<AbstractC13458o.C13459a> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f39024a;

            /* renamed from: b */
            public final /* synthetic */ C13439d f39025b;

            /* renamed from: e.a.e3.k.k$d$a$a */
            /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$a$a.class */
            public static final class C13441a implements g<AbstractC13458o.C13459a> {

                /* renamed from: a */
                public final /* synthetic */ g f39026a;

                /* renamed from: b */
                public final /* synthetic */ C13440a f39027b;

                @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveIncomingCallSubId$subId$1$invokeSuspend$$inlined$filter$1$2", f = "CallAlertSimSupport.kt", l = {139}, m = "emit")
                /* renamed from: e.a.e3.k.k$d$a$a$a */
                /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$a$a$a.class */
                public static final class C13442a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f39028d;

                    /* renamed from: e */
                    public int f39029e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C13442a(d dVar) {
                        super(dVar);
                        C13441a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m21814s(Object obj) {
                        this.f39028d = obj;
                        this.f39029e |= Integer.MIN_VALUE;
                        return C13441a.this.m21815a(null, this);
                    }
                }

                public C13441a(g gVar, C13440a c13440a) {
                    this.f39026a = gVar;
                    this.f39027b = c13440a;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m21815a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        Method dump skipped, instructions count: 284
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.C13439d.C13440a.C13441a.m21815a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C13440a(q3.a.x2.f fVar, C13439d c13439d) {
                this.f39024a = fVar;
                this.f39025b = c13439d;
            }

            /* renamed from: c */
            public Object m21816c(g gVar, d dVar) {
                Object c = this.f39024a.c(new C13441a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.e3.k.k$d$b */
        /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$b.class */
        public static final class C13443b implements q3.a.x2.f<Object> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f39031a;

            /* renamed from: e.a.e3.k.k$d$b$a */
            /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$b$a.class */
            public static final class C13444a implements g<Object> {

                /* renamed from: a */
                public final /* synthetic */ g f39032a;

                @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveIncomingCallSubId$subId$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "CallAlertSimSupport.kt", l = {135}, m = "emit")
                /* renamed from: e.a.e3.k.k$d$b$a$a */
                /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$d$b$a$a.class */
                public static final class C13445a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f39033d;

                    /* renamed from: e */
                    public int f39034e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C13445a(d dVar) {
                        super(dVar);
                        C13444a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m21811s(Object obj) {
                        this.f39033d = obj;
                        this.f39034e |= Integer.MIN_VALUE;
                        return C13444a.this.m21812a(null, this);
                    }
                }

                public C13444a(g gVar, C13443b c13443b) {
                    this.f39032a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m21812a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p703e3.p710k.C13435k.C13439d.C13443b.C13444a.C13445a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.e3.k.k$d$b$a$a r0 = (p193e.p194a.p703e3.p710k.C13435k.C13439d.C13443b.C13444a.C13445a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f39034e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f39034e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.e3.k.k$d$b$a$a r0 = new e.a.e3.k.k$d$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f39033d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f39034e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto L90
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f39032a
                        r11 = r0
                        r0 = r6
                        boolean r0 = r0 instanceof p193e.p194a.p703e3.p710k.AbstractC13458o.C13459a
                        if (r0 == 0) goto L90
                        r0 = r7
                        r1 = 1
                        r0.f39034e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto L90
                        r0 = r9
                        return r0
                    L90:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.C13439d.C13443b.C13444a.m21812a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C13443b(q3.a.x2.f fVar) {
                this.f39031a = fVar;
            }

            /* renamed from: c */
            public Object m21813c(g gVar, d dVar) {
                Object c = this.f39031a.c(new C13444a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13439d(String str, d dVar) {
            super(2, dVar);
            C13435k.this = r5;
            this.f39023g = str;
        }

        /* renamed from: i */
        public final d<s> m21819i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13439d(this.f39023g, dVar);
        }

        /* renamed from: k */
        public final Object m21818k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13439d(this.f39023g, dVar).m21817s(s.a);
        }

        /* renamed from: s */
        public final Object m21817s(Object obj) {
            a aVar = a.a;
            int i = this.f39021e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13440a c13440a = new C13440a(new C13443b(C13435k.this.f39002d), this);
                this.f39021e = 1;
                Object M0 = s1.a.a.a.v0.f.d.M0(c13440a, this);
                obj = M0;
                if (M0 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((AbstractC13458o.C13459a) obj).f39067a.mo13446b();
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl", f = "CallAlertSimSupport.kt", l = {148}, m = "resolveOutgoingCallSubId")
    /* renamed from: e.a.e3.k.k$e */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$e.class */
    public static final class C13446e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39036d;

        /* renamed from: e */
        public int f39037e;

        /* renamed from: g */
        public Object f39039g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13446e(d dVar) {
            super(dVar);
            C13435k.this = r4;
        }

        /* renamed from: s */
        public final Object m21810s(Object obj) {
            this.f39036d = obj;
            this.f39037e |= Integer.MIN_VALUE;
            return C13435k.this.m21825i(this);
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveOutgoingCallSubId$subId$1", f = "CallAlertSimSupport.kt", l = {250}, m = "invokeSuspend")
    /* renamed from: e.a.e3.k.k$f */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f.class */
    public static final class C13447f extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f39040e;

        /* renamed from: e.a.e3.k.k$f$a */
        /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$a.class */
        public static final class C13448a implements q3.a.x2.f<AbstractC13458o.C13459a> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f39042a;

            /* renamed from: b */
            public final /* synthetic */ C13447f f39043b;

            /* renamed from: e.a.e3.k.k$f$a$a */
            /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$a$a.class */
            public static final class C13449a implements g<AbstractC13458o.C13459a> {

                /* renamed from: a */
                public final /* synthetic */ g f39044a;

                /* renamed from: b */
                public final /* synthetic */ C13448a f39045b;

                @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveOutgoingCallSubId$subId$1$invokeSuspend$$inlined$filter$1$2", f = "CallAlertSimSupport.kt", l = {136}, m = "emit")
                /* renamed from: e.a.e3.k.k$f$a$a$a */
                /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$a$a$a.class */
                public static final class C13450a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f39046d;

                    /* renamed from: e */
                    public int f39047e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C13450a(d dVar) {
                        super(dVar);
                        C13449a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m21804s(Object obj) {
                        this.f39046d = obj;
                        this.f39047e |= Integer.MIN_VALUE;
                        return C13449a.this.m21805a(null, this);
                    }
                }

                public C13449a(g gVar, C13448a c13448a) {
                    this.f39044a = gVar;
                    this.f39045b = c13448a;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m21805a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p703e3.p710k.C13435k.C13447f.C13448a.C13449a.C13450a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.e3.k.k$f$a$a$a r0 = (p193e.p194a.p703e3.p710k.C13435k.C13447f.C13448a.C13449a.C13450a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f39047e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f39047e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.e3.k.k$f$a$a$a r0 = new e.a.e3.k.k$f$a$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f39046d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f39047e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto Lc6
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f39044a
                        r11 = r0
                        r0 = r6
                        e.a.e3.k.o$a r0 = (p193e.p194a.p703e3.p710k.AbstractC13458o.C13459a) r0
                        r12 = r0
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r1 = r0
                        r1.<init>()
                        r13 = r0
                        r0 = r13
                        java.lang.String r1 = "New ongoing call: "
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        r1 = r12
                        java.lang.StringBuilder r0 = r0.append(r1)
                        r0 = r13
                        java.lang.String r0 = r0.toString()
                        r0 = r5
                        e.a.e3.k.k$f$a r0 = r0.f39045b
                        e.a.e3.k.k$f r0 = r0.f39043b
                        e.a.e3.k.k r0 = p193e.p194a.p703e3.p710k.C13435k.this
                        r1 = r12
                        boolean r0 = p193e.p194a.p703e3.p710k.C13435k.m21829e(r0, r1)
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto Lc6
                        r0 = r7
                        r1 = 1
                        r0.f39047e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto Lc6
                        r0 = r9
                        return r0
                    Lc6:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.C13447f.C13448a.C13449a.m21805a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C13448a(q3.a.x2.f fVar, C13447f c13447f) {
                this.f39042a = fVar;
                this.f39043b = c13447f;
            }

            /* renamed from: c */
            public Object m21806c(g gVar, d dVar) {
                Object c = this.f39042a.c(new C13449a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.e3.k.k$f$b */
        /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$b.class */
        public static final class C13451b implements q3.a.x2.f<Object> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f39049a;

            /* renamed from: e.a.e3.k.k$f$b$a */
            /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$b$a.class */
            public static final class C13452a implements g<Object> {

                /* renamed from: a */
                public final /* synthetic */ g f39050a;

                @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$resolveOutgoingCallSubId$subId$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "CallAlertSimSupport.kt", l = {135}, m = "emit")
                /* renamed from: e.a.e3.k.k$f$b$a$a */
                /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$f$b$a$a.class */
                public static final class C13453a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f39051d;

                    /* renamed from: e */
                    public int f39052e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C13453a(d dVar) {
                        super(dVar);
                        C13452a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m21801s(Object obj) {
                        this.f39051d = obj;
                        this.f39052e |= Integer.MIN_VALUE;
                        return C13452a.this.m21802a(null, this);
                    }
                }

                public C13452a(g gVar, C13451b c13451b) {
                    this.f39050a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m21802a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p703e3.p710k.C13435k.C13447f.C13451b.C13452a.C13453a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.e3.k.k$f$b$a$a r0 = (p193e.p194a.p703e3.p710k.C13435k.C13447f.C13451b.C13452a.C13453a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f39052e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f39052e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.e3.k.k$f$b$a$a r0 = new e.a.e3.k.k$f$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f39051d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f39052e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto L90
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f39050a
                        r11 = r0
                        r0 = r6
                        boolean r0 = r0 instanceof p193e.p194a.p703e3.p710k.AbstractC13458o.C13459a
                        if (r0 == 0) goto L90
                        r0 = r7
                        r1 = 1
                        r0.f39052e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto L90
                        r0 = r9
                        return r0
                    L90:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.C13447f.C13451b.C13452a.m21802a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C13451b(q3.a.x2.f fVar) {
                this.f39049a = fVar;
            }

            /* renamed from: c */
            public Object m21803c(g gVar, d dVar) {
                Object c = this.f39049a.c(new C13452a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13447f(d dVar) {
            super(2, dVar);
            C13435k.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21809i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13447f(dVar);
        }

        /* renamed from: k */
        public final Object m21808k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13447f(dVar).m21807s(s.a);
        }

        /* renamed from: s */
        public final Object m21807s(Object obj) {
            a aVar = a.a;
            int i = this.f39040e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13448a c13448a = new C13448a(new C13451b(C13435k.this.f39001c), this);
                this.f39040e = 1;
                Object M0 = s1.a.a.a.v0.f.d.M0(c13448a, this);
                obj = M0;
                if (M0 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((AbstractC13458o.C13459a) obj).f39067a.mo13446b();
        }
    }

    @e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$saveSubIdForUpcomingIncomingCall$1", f = "CallAlertSimSupport.kt", l = {84}, m = "invokeSuspend")
    /* renamed from: e.a.e3.k.k$g */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/k/k$g.class */
    public static final class C13454g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f39054e;

        /* renamed from: g */
        public final /* synthetic */ String f39056g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13454g(String str, d dVar) {
            super(2, dVar);
            C13435k.this = r5;
            this.f39056g = str;
        }

        /* renamed from: i */
        public final d<s> m21800i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13454g(this.f39056g, dVar);
        }

        /* renamed from: k */
        public final Object m21799k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13454g(this.f39056g, dVar).m21798s(s.a);
        }

        /* renamed from: s */
        public final Object m21798s(Object obj) {
            a aVar = a.a;
            int i = this.f39054e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13435k c13435k = C13435k.this;
                String str = this.f39056g;
                this.f39054e = 1;
                Object m21826h = c13435k.m21826h(str, this);
                obj = m21826h;
                if (m21826h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Integer num = (Integer) obj;
            if (num != null) {
                C13435k.this.f39008j.putInt("callAlertIncomingCallSubscriptionId", num.intValue());
                C13435k.this.f39010l.mo13274b(new C13434j());
            }
            return s.a;
        }
    }

    @Inject
    public C13435k(@Named("IO") f fVar, AbstractC19335b abstractC19335b, AbstractC13497p abstractC13497p, AbstractC19222c abstractC19222c, AbstractC13430f abstractC13430f, AbstractC8621z abstractC8621z, AbstractC19462a abstractC19462a) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19335b, "telephonyUtil");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC13430f, "callingSettings");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f39004f = fVar;
        this.f39005g = abstractC19335b;
        this.f39006h = abstractC13497p;
        this.f39007i = abstractC19222c;
        this.f39008j = abstractC13430f;
        this.f39009k = abstractC8621z;
        this.f39010l = abstractC19462a;
        this.f38999a = fVar;
        AbstractC13458o.C13460b c13460b = AbstractC13458o.C13460b.f39069a;
        this.f39001c = k1.a(c13460b);
        this.f39002d = k1.a(c13460b);
    }

    /* renamed from: e */
    public static final boolean m21829e(C13435k c13435k, AbstractC13458o.C13459a c13459a) {
        return c13435k.f39007i.mo13821a() - c13459a.f39068b <= 1000;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b5  */
    @Override // p193e.p194a.p703e3.p710k.AbstractC13433i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo21833a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.mo21833a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13433i
    /* renamed from: b */
    public boolean mo21832b(int i) {
        boolean z = true;
        if (this.f39006h.mo21740h()) {
            if (i < 0) {
                z = true;
            } else {
                Integer m21828f = m21828f();
                z = true;
                if (m21828f != null) {
                    Integer mo13444b = this.f39005g.mo13444b(m21828f.intValue());
                    z = true;
                    if (mo13444b != null) {
                        z = mo13444b.intValue() == i;
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13433i
    /* renamed from: c */
    public boolean mo21831c(int i) {
        boolean z = true;
        if (this.f39006h.mo21740h()) {
            if (i < 0) {
                z = true;
            } else {
                Integer m21828f = m21828f();
                z = true;
                if (m21828f != null) {
                    z = m21828f.intValue() == i;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13433i
    /* renamed from: d */
    public void mo21830d(String str) {
        synchronized (this) {
            l.e(str, "normalizedNumber");
            if (!this.f39006h.mo21740h()) {
                return;
            }
            m21827g();
            p1 p1Var = this.f39003e;
            if (p1Var != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            this.f39003e = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13454g(str, null), 3, (Object) null);
        }
    }

    /* renamed from: f */
    public final Integer m21828f() {
        Integer valueOf = Integer.valueOf(this.f39008j.getInt("callAlertIncomingCallSubscriptionId", -1));
        if (!(valueOf.intValue() > -1)) {
            valueOf = null;
        }
        return valueOf;
    }

    /* renamed from: g */
    public final void m21827g() {
        if (!this.f39000b.compareAndSet(false, true)) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13437b(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f38999a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m21826h(java.lang.String r7, s1.w.d<? super java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.m21826h(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21825i(s1.w.d<? super java.lang.Integer> r6) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13435k.m21825i(s1.w.d):java.lang.Object");
    }
}
