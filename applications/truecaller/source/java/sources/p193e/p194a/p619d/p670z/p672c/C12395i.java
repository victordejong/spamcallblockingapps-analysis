package p193e.p194a.p619d.p670z.p672c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11376b;
import p193e.p194a.p619d.p637c0.C11379b0;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import q3.a.i0;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$setNotificationTitleAndAvatar$1", f = "InvitationServicePresenter.kt", l = {320}, m = "invokeSuspend")
/* renamed from: e.a.d.z.c.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/i.class */
public final class C12395i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36169e;

    /* renamed from: f */
    public final /* synthetic */ C12382e f36170f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12093b f36171g;

    /* renamed from: e.a.d.z.c.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/i$a.class */
    public static final class C12396a implements g<AbstractC11376b> {

        @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$setNotificationTitleAndAvatar$1$invokeSuspend$$inlined$collect$1", f = "InvitationServicePresenter.kt", l = {142}, m = "emit")
        /* renamed from: e.a.d.z.c.i$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/i$a$a.class */
        public static final class C12397a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f36173d;

            /* renamed from: e */
            public int f36174e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12397a(d dVar) {
                super(dVar);
                C12396a.this = r4;
            }

            /* renamed from: s */
            public final Object m23115s(Object obj) {
                this.f36173d = obj;
                this.f36174e |= Integer.MIN_VALUE;
                return C12396a.this.m23116a(null, this);
            }
        }

        public C12396a() {
            C12395i.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23116a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 317
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12395i.C12396a.m23116a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12395i(C12382e c12382e, AbstractC12093b abstractC12093b, d dVar) {
        super(2, dVar);
        this.f36170f = c12382e;
        this.f36171g = abstractC12093b;
    }

    /* renamed from: i */
    public final d<s> m23119i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12395i(this.f36170f, this.f36171g, dVar);
    }

    /* renamed from: k */
    public final Object m23118k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12395i(this.f36170f, this.f36171g, dVar).m23117s(s.a);
    }

    /* renamed from: s */
    public final Object m23117s(Object obj) {
        a aVar = a.a;
        int i = this.f36169e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12382e c12382e = this.f36170f;
            AbstractC12377c abstractC12377c = (AbstractC12377c) c12382e.f57683a;
            if (abstractC12377c != null) {
                abstractC12377c.mo23158j(C12382e.m23149Jj(c12382e), "");
            }
            C11379b0 m13617J0 = C19291g.m13617J0(this.f36171g.mo23626d(), this.f36170f.f36123i, 20);
            g c12396a = new C12396a();
            this.f36169e = 1;
            if (m13617J0.m24759c(c12396a, this) == aVar) {
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
