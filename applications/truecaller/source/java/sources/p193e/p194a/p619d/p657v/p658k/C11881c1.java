package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11392d0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p656u.AbstractC11803a;
import p193e.p194a.p619d.p657v.C11839g;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.c1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1.class */
public final class C11881c1 implements i0, AbstractC11877b1 {

    /* renamed from: a */
    public final Map<String, Boolean> f34899a = new LinkedHashMap();

    /* renamed from: b */
    public final long f34900b = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: c */
    public final String f34901c;

    /* renamed from: d */
    public final AbstractC11598i f34902d;

    /* renamed from: e */
    public final C11839g f34903e;

    /* renamed from: f */
    public final AbstractC12236h f34904f;

    /* renamed from: g */
    public final AbstractC12261h f34905g;

    /* renamed from: h */
    public final AbstractC11803a f34906h;

    /* renamed from: i */
    public final AbstractC11963n0 f34907i;

    /* renamed from: j */
    public final /* synthetic */ i0 f34908j;

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl", f = "UpdatePeers.kt", l = {290}, m = "addPeers")
    /* renamed from: e.a.d.v.k.c1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$a.class */
    public static final class C11882a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34909d;

        /* renamed from: e */
        public int f34910e;

        /* renamed from: g */
        public Object f34912g;

        /* renamed from: h */
        public Object f34913h;

        /* renamed from: i */
        public Object f34914i;

        /* renamed from: j */
        public Object f34915j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11882a(d dVar) {
            super(dVar);
            C11881c1.this = r4;
        }

        /* renamed from: s */
        public final Object m23884s(Object obj) {
            this.f34909d = obj;
            this.f34910e |= Integer.MIN_VALUE;
            return C11881c1.this.m23892b(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$createPeersFlow$1", f = "UpdatePeers.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.c1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$b.class */
    public static final class C11883b extends i implements q<Set<? extends Integer>, Set<? extends Integer>, d<? super Set<? extends Integer>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34916e;

        /* renamed from: f */
        public /* synthetic */ Object f34917f;

        public C11883b(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m23883h(Object obj, Object obj2, Object obj3) {
            Set set = (Set) obj;
            Set set2 = (Set) obj2;
            d dVar = (d) obj3;
            l.e(set, "rtmPeers");
            l.e(set2, "rtcPeers");
            l.e(dVar, "continuation");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return s1.u.i.q0(set, set2);
        }

        /* renamed from: s */
        public final Object m23882s(Object obj) {
            C25225a.m3932a3(obj);
            return s1.u.i.q0((Set) this.f34916e, (Set) this.f34917f);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl", f = "UpdatePeers.kt", l = {315}, m = "deletePeers")
    /* renamed from: e.a.d.v.k.c1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$c.class */
    public static final class C11884c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34918d;

        /* renamed from: e */
        public int f34919e;

        /* renamed from: g */
        public Object f34921g;

        /* renamed from: h */
        public Object f34922h;

        /* renamed from: i */
        public Object f34923i;

        /* renamed from: j */
        public Object f34924j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11884c(d dVar) {
            super(dVar);
            C11881c1.this = r4;
        }

        /* renamed from: s */
        public final Object m23881s(Object obj) {
            this.f34918d = obj;
            this.f34919e |= Integer.MIN_VALUE;
            return C11881c1.this.m23890d(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl", f = "UpdatePeers.kt", l = {69, 71}, m = "initializeAndUpdate")
    /* renamed from: e.a.d.v.k.c1$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$d.class */
    public static final class C11885d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34925d;

        /* renamed from: e */
        public int f34926e;

        /* renamed from: g */
        public Object f34928g;

        /* renamed from: h */
        public Object f34929h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11885d(d dVar) {
            super(dVar);
            C11881c1.this = r4;
        }

        /* renamed from: s */
        public final Object m23880s(Object obj) {
            this.f34925d = obj;
            this.f34926e |= Integer.MIN_VALUE;
            return C11881c1.this.mo23893a(this);
        }
    }

    /* renamed from: e.a.d.v.k.c1$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$e.class */
    public static final class C11886e implements f<AbstractC12020a> {

        /* renamed from: a */
        public final /* synthetic */ f f34930a;

        /* renamed from: b */
        public final /* synthetic */ Integer f34931b;

        /* renamed from: e.a.d.v.k.c1$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$e$a.class */
        public static final class C11887a implements g<Set<? extends AbstractC12020a>> {

            /* renamed from: a */
            public final /* synthetic */ g f34932a;

            /* renamed from: b */
            public final /* synthetic */ C11886e f34933b;

            @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$waitCallEnd$$inlined$map$1$2", f = "UpdatePeers.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.v.k.c1$e$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$e$a$a.class */
            public static final class C11888a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f34934d;

                /* renamed from: e */
                public int f34935e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11888a(d dVar) {
                    super(dVar);
                    C11887a.this = r4;
                }

                /* renamed from: s */
                public final Object m23877s(Object obj) {
                    this.f34934d = obj;
                    this.f34935e |= Integer.MIN_VALUE;
                    return C11887a.this.m23878a(null, this);
                }
            }

            public C11887a(g gVar, C11886e c11886e) {
                this.f34932a = gVar;
                this.f34933b = c11886e;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23878a(java.lang.Object r6, s1.w.d r7) {
                /*
                    Method dump skipped, instructions count: 222
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11881c1.C11886e.C11887a.m23878a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11886e(f fVar, Integer num) {
            this.f34930a = fVar;
            this.f34931b = num;
        }

        /* renamed from: c */
        public Object m23879c(g gVar, d dVar) {
            Object c = this.f34930a.c(new C11887a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl", f = "UpdatePeers.kt", l = {228, 232}, m = "waitCallEnd")
    /* renamed from: e.a.d.v.k.c1$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$f.class */
    public static final class C11889f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34937d;

        /* renamed from: e */
        public int f34938e;

        /* renamed from: g */
        public Object f34940g;

        /* renamed from: h */
        public Object f34941h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11889f(d dVar) {
            super(dVar);
            C11881c1.this = r4;
        }

        /* renamed from: s */
        public final Object m23876s(Object obj) {
            this.f34937d = obj;
            this.f34938e |= Integer.MIN_VALUE;
            return C11881c1.this.m23885i(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.UpdatePeersImpl$waitCallEnd$2", f = "UpdatePeers.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.c1$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/c1$g.class */
    public static final class C11890g extends i implements p<AbstractC12022c, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34942e;

        public C11890g(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23875i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11890g c11890g = new C11890g(dVar);
            c11890g.f34942e = obj;
            return c11890g;
        }

        /* renamed from: k */
        public final Object m23874k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC12022c) obj) instanceof AbstractC12022c.AbstractC12024b);
        }

        /* renamed from: s */
        public final Object m23873s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC12022c) this.f34942e) instanceof AbstractC12022c.AbstractC12024b);
        }
    }

    @Inject
    public C11881c1(i0 i0Var, String str, AbstractC11598i abstractC11598i, C11839g c11839g, AbstractC12236h abstractC12236h, AbstractC12261h abstractC12261h, AbstractC11803a abstractC11803a, AbstractC11963n0 abstractC11963n0) {
        l.e(i0Var, "coroutineScope");
        l.e(str, "ownId");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(c11839g, "peers");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11803a, "callComponent");
        l.e(abstractC11963n0, "manageInviteOwners");
        this.f34908j = i0Var;
        this.f34901c = str;
        this.f34902d = abstractC11598i;
        this.f34903e = c11839g;
        this.f34904f = abstractC12236h;
        this.f34905g = abstractC12261h;
        this.f34906h = abstractC11803a;
        this.f34907i = abstractC11963n0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f0  */
    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11877b1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23893a(s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11881c1.mo23893a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e8 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f1 A[Catch: all -> 0x02fa, TRY_ENTER, TryCatch #0 {all -> 0x02fa, blocks: (B:20:0x00d4, B:24:0x00f1, B:26:0x0139, B:28:0x0141, B:29:0x0169, B:31:0x017d, B:33:0x0185, B:35:0x01b4, B:36:0x01bf, B:38:0x01d9, B:40:0x01e1, B:41:0x027c, B:43:0x0285, B:45:0x028d, B:46:0x02a0, B:48:0x02b1, B:51:0x02e3), top: B:57:0x00d4 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23892b(java.util.Set<java.lang.Integer> r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11881c1.m23892b(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* renamed from: c */
    public final f<Set<Integer>> m23891c(long j) {
        return new w0(new C11919h1(s1.a.a.a.v0.f.d.P3(new w0(this.f34905g.mo23354a(), this.f34905g.mo23345o(), new C11924i1(null)), new C11915g1(null, this)), this), new C11910f1(new C11901e1(s1.a.a.a.v0.f.d.z0(this.f34904f.mo23401a(), j)), this), new C11883b(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f3 A[Catch: all -> 0x0152, TryCatch #0 {all -> 0x0152, blocks: (B:20:0x00c3, B:22:0x00eb, B:24:0x00f3, B:26:0x0125, B:27:0x0130), top: B:33:0x00c3 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23890d(java.util.Set<java.lang.Integer> r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11881c1.m23890d(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final Long m23889e(C12262i c12262i) {
        Long l;
        if (!this.f34899a.containsKey(c12262i.f35822a) || !l.a(this.f34899a.get(c12262i.f35822a), Boolean.TRUE)) {
            this.f34899a.put(c12262i.f35822a, Boolean.FALSE);
            l = Long.valueOf(this.f34900b);
        } else {
            l = null;
        }
        return l;
    }

    /* renamed from: f */
    public final Long m23888f(C12262i c12262i) {
        return C19291g.m13579W(c12262i, this.f34902d.getCurrentTime(), (Set) this.f34905g.mo23345o().getValue());
    }

    /* renamed from: g */
    public final boolean m23887g(C12262i c12262i) {
        return l.a(c12262i.f35823b, RtmChannelAttributeState.Busy.getValue());
    }

    public s1.w.f getCoroutineContext() {
        return this.f34908j.getCoroutineContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final void m23886h(AbstractC11392d0<Set<AbstractC12020a>> abstractC11392d0, Set<? extends AbstractC12020a> set) {
        String str = "Updating peers " + set;
        abstractC11392d0.mo24639a(set);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
        for (AbstractC12020a abstractC12020a : set) {
            arrayList.add(Integer.valueOf(abstractC12020a.mo23701d()));
        }
        this.f34902d.mo24393m(s1.u.i.d1(arrayList));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x013a  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23885i(p193e.p194a.p619d.p663x.p665r.C12262i r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11881c1.m23885i(e.a.d.x.r.i, s1.w.d):java.lang.Object");
    }
}
