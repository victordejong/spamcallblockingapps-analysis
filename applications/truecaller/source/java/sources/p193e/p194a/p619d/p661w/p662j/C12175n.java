package p193e.p194a.p619d.p661w.p662j;

import javax.inject.Inject;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p661w.C12130i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/n.class */
public final class C12175n implements i0, AbstractC12174m {

    /* renamed from: a */
    public final i0 f35561a;

    /* renamed from: b */
    public final a1<C11161a> f35562b;

    /* renamed from: c */
    public final AbstractC11598i f35563c;

    /* renamed from: d */
    public final C12130i f35564d;

    /* renamed from: e */
    public final AbstractC11522e f35565e;

    /* renamed from: f */
    public final AbstractC11438o f35566f;

    /* renamed from: g */
    public final AbstractC12138c f35567g;

    /* renamed from: h */
    public final AbstractC11421j1 f35568h;

    /* renamed from: i */
    public final AbstractC12183s f35569i;

    @e(c = "com.truecaller.voip.invitation.action.EndInvitationImpl$end$1", f = "EndInvitation.kt", l = {39, 88, 47, 61}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/n$a.class */
    public static final class C12176a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f35570e;

        /* renamed from: f */
        public Object f35571f;

        /* renamed from: g */
        public int f35572g;

        /* renamed from: i */
        public final /* synthetic */ AbstractC12114h.AbstractC12116b f35574i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12176a(AbstractC12114h.AbstractC12116b abstractC12116b, d dVar) {
            super(2, dVar);
            C12175n.this = r5;
            this.f35574i = abstractC12116b;
        }

        /* renamed from: i */
        public final d<s> m23504i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12176a(this.f35574i, dVar);
        }

        /* renamed from: k */
        public final Object m23503k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12176a(this.f35574i, dVar).m23502s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x012f  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01c4  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23502s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 813
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.p662j.C12175n.C12176a.m23502s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C12175n(i0 i0Var, a1<C11161a> a1Var, AbstractC11598i abstractC11598i, C12130i c12130i, AbstractC11522e abstractC11522e, AbstractC11438o abstractC11438o, AbstractC12138c abstractC12138c, AbstractC11421j1 abstractC11421j1, AbstractC12183s abstractC12183s) {
        l.e(i0Var, "coroutineScope");
        l.e(a1Var, "senderCallUser");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(c12130i, "stateMachine");
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        l.e(abstractC12138c, "collectPeerHistory");
        l.e(abstractC11421j1, "voipSupport");
        l.e(abstractC12183s, "logStateChangedEvent");
        this.f35561a = i0Var;
        this.f35562b = a1Var;
        this.f35563c = abstractC11598i;
        this.f35564d = c12130i;
        this.f35565e = abstractC11522e;
        this.f35566f = abstractC11438o;
        this.f35567g = abstractC12138c;
        this.f35568h = abstractC11421j1;
        this.f35569i = abstractC12183s;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12174m
    /* renamed from: e */
    public p1 mo23505e(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        return s1.a.a.a.v0.f.d.w2(this, s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null), (j0) null, new C12176a(abstractC12116b, null), 2, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35561a.getCoroutineContext();
    }
}
