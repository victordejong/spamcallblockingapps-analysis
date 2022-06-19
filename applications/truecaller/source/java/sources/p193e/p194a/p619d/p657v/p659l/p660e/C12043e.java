package p193e.p194a.p619d.p657v.p659l.p660e;

import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11392d0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import p193e.p194a.p619d.p657v.p659l.C12035d;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12088m;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.e.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/e.class */
public final class C12043e implements i0, AbstractC12042d {

    /* renamed from: a */
    public final i0 f35265a;

    /* renamed from: b */
    public final int f35266b;

    /* renamed from: c */
    public final a1<Boolean> f35267c;

    /* renamed from: d */
    public final AbstractC11598i f35268d;

    /* renamed from: e */
    public final C12035d f35269e;

    /* renamed from: f */
    public final AbstractC12236h f35270f;

    /* renamed from: g */
    public final AbstractC12068k f35271g;

    /* renamed from: h */
    public final AbstractC12055i f35272h;

    /* renamed from: i */
    public final AbstractC12052g f35273i;

    @e(c = "com.truecaller.voip.groupcall.call.action.ConnectCallImpl$connect$1", f = "ConnectCall.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.l.e.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/e$a.class */
    public static final class C12044a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35274e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12044a(d dVar) {
            super(2, dVar);
            C12043e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23693i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12044a(dVar);
        }

        /* renamed from: k */
        public final Object m23692k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12044a(dVar).m23691s(s.a);
        }

        /* renamed from: s */
        public final Object m23691s(Object obj) {
            a aVar = a.a;
            int i = this.f35274e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12043e c12043e = C12043e.this;
                this.f35274e = 1;
                if (c12043e.m23694e(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.v.l.e.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/e$b.class */
    public static final class C12045b implements g<AbstractC12088m> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11392d0 f35276a;

        /* renamed from: b */
        public final /* synthetic */ C12043e f35277b;

        /* renamed from: c */
        public final /* synthetic */ d f35278c;

        public C12045b(AbstractC11392d0 abstractC11392d0, C12043e c12043e, d dVar) {
            this.f35276a = abstractC11392d0;
            this.f35277b = c12043e;
            this.f35278c = dVar;
        }

        /* renamed from: a */
        public Object m23690a(Object obj, d dVar) {
            AbstractC12088m abstractC12088m = (AbstractC12088m) obj;
            if (abstractC12088m instanceof AbstractC12088m.C12090b) {
                this.f35276a.mo24639a(AbstractC12022c.C12034d.f35255b);
            } else if (abstractC12088m instanceof AbstractC12088m.C12091c) {
                this.f35277b.f35272h.mo23675a();
                C12043e c12043e = this.f35277b;
                Objects.requireNonNull(c12043e);
                s1.a.a.a.v0.f.d.w2(c12043e, (f) null, (j0) null, new C12047f(c12043e, null), 3, (Object) null);
                this.f35276a.mo24639a(AbstractC12022c.C12033c.f35254b);
                this.f35277b.f35267c.setValue(Boolean.TRUE);
            } else if (abstractC12088m instanceof AbstractC12088m.C12089a) {
                this.f35277b.f35273i.mo23679e(((AbstractC12088m.C12089a) abstractC12088m).f35372a);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.groupcall.call.action.ConnectCallImpl", f = "ConnectCall.kt", l = {83, 48, 87}, m = "goOngoingState")
    /* renamed from: e.a.d.v.l.e.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/e$c.class */
    public static final class C12046c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35279d;

        /* renamed from: e */
        public int f35280e;

        /* renamed from: g */
        public Object f35282g;

        /* renamed from: h */
        public Object f35283h;

        /* renamed from: i */
        public Object f35284i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12046c(d dVar) {
            super(dVar);
            C12043e.this = r4;
        }

        /* renamed from: s */
        public final Object m23689s(Object obj) {
            this.f35279d = obj;
            this.f35280e |= Integer.MIN_VALUE;
            return C12043e.this.m23694e(this);
        }
    }

    @Inject
    public C12043e(i0 i0Var, int i, a1<Boolean> a1Var, AbstractC11598i abstractC11598i, C12035d c12035d, AbstractC12236h abstractC12236h, AbstractC12068k abstractC12068k, AbstractC12055i abstractC12055i, AbstractC12052g abstractC12052g) {
        l.e(i0Var, "callScope");
        l.e(a1Var, "reachedOngoing");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(c12035d, "stateMachine");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC12068k, "handleInvite");
        l.e(abstractC12055i, "handleCallSetting");
        l.e(abstractC12052g, "endCall");
        this.f35265a = i0Var;
        this.f35266b = i;
        this.f35267c = a1Var;
        this.f35268d = abstractC11598i;
        this.f35269e = c12035d;
        this.f35270f = abstractC12236h;
        this.f35271g = abstractC12068k;
        this.f35272h = abstractC12055i;
        this.f35273i = abstractC12052g;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12042d
    /* renamed from: c */
    public p1 mo23695c() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12044a(null), 3, (Object) null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(9:6|8|(2:10|(4:12|(2:14|(5:16|79|17|73|74)(2:19|20))(23:21|81|22|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|(2:71|72)|73|74)|77|78)(1:24))(2:25|(2:27|28)(1:29))|30|83|31|32|33|(2:35|36)(34:37|38|39|40|41|42|43|44|45|46|47|48|49|(2:51|52)|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|(0)|73|74)))|7|8|(0)(0)|30|83|31|32|33|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01cf, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d0, code lost:
        r0 = r12;
        r12 = r6;
        r6 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c3  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m23694e(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12043e.m23694e(s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f35265a.getCoroutineContext();
    }
}
