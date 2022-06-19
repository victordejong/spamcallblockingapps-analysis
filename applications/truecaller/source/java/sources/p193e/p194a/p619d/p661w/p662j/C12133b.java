package p193e.p194a.p619d.p661w.p662j;

import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import p193e.p194a.p619d.p663x.p665r.C12263j;
import q3.a.i0;
import q3.a.j;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/b.class */
public final class C12133b implements i0, AbstractC12131a {

    /* renamed from: a */
    public final String f35466a;

    /* renamed from: b */
    public final AbstractC11598i f35467b;

    /* renamed from: c */
    public final AbstractC12261h f35468c;

    /* renamed from: d */
    public final AbstractC11824d f35469d;

    /* renamed from: e */
    public final AbstractC12174m f35470e;

    /* renamed from: f */
    public final /* synthetic */ i0 f35471f;

    @e(c = "com.truecaller.voip.invitation.action.AnswerInvitationImpl$accept$1", f = "AnswerInvitation.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/b$a.class */
    public static final class C12134a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35472e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12134a(d dVar) {
            super(2, dVar);
            C12133b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23585i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12134a(dVar);
        }

        /* renamed from: k */
        public final Object m23584k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12134a(dVar).m23583s(s.a);
        }

        /* renamed from: s */
        public final Object m23583s(Object obj) {
            a aVar = a.a;
            int i = this.f35472e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12133b c12133b = C12133b.this;
                n0<AbstractC11822b> mo23959d = c12133b.f35469d.mo23959d(c12133b.f35467b);
                this.f35472e = 1;
                Object s = mo23959d.s(this);
                obj = s;
                if (s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC11822b abstractC11822b = (AbstractC11822b) obj;
            if (abstractC11822b == null) {
                C12133b.this.f35470e.mo23505e(AbstractC12114h.AbstractC12116b.C12127k.f35463b);
            } else {
                C12133b.this.f35470e.mo23505e(new AbstractC12114h.AbstractC12116b.C12117a(abstractC11822b));
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.invitation.action.AnswerInvitationImpl$reject$1", f = "AnswerInvitation.kt", l = {43}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/b$b.class */
    public static final class C12135b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35474e;

        @e(c = "com.truecaller.voip.invitation.action.AnswerInvitationImpl$reject$1$1", f = "AnswerInvitation.kt", l = {48}, m = "invokeSuspend")
        /* renamed from: e.a.d.w.j.b$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/b$b$a.class */
        public static final class C12136a extends i implements p<i0, d<? super Boolean>, Object> {

            /* renamed from: e */
            public int f35476e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12136a(d dVar) {
                super(2, dVar);
                C12135b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m23579i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C12136a(dVar);
            }

            /* renamed from: k */
            public final Object m23578k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C12136a(dVar).m23577s(s.a);
            }

            /* renamed from: s */
            public final Object m23577s(Object obj) {
                a aVar = a.a;
                int i = this.f35476e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C12263j c12263j = new C12263j(C12133b.this.f35466a, RtmChannelAttributeState.Declined);
                    AbstractC12261h abstractC12261h = C12133b.this.f35468c;
                    Set<C12263j> y0 = s1.u.i.y0(c12263j);
                    this.f35476e = 1;
                    Object mo23346n = abstractC12261h.mo23346n(y0, this);
                    obj = mo23346n;
                    if (mo23346n == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12135b(d dVar) {
            super(2, dVar);
            C12133b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23582i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12135b(dVar);
        }

        /* renamed from: k */
        public final Object m23581k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12135b(dVar).m23580s(s.a);
        }

        /* renamed from: s */
        public final Object m23580s(Object obj) {
            a aVar = a.a;
            int i = this.f35474e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12136a c12136a = new C12136a(null);
                this.f35474e = 1;
                if (j.c(1000L, c12136a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C12133b.this.f35470e.mo23505e(AbstractC12114h.AbstractC12116b.C12128l.f35464b);
            return s.a;
        }
    }

    @Inject
    public C12133b(i0 i0Var, String str, AbstractC11598i abstractC11598i, AbstractC12261h abstractC12261h, AbstractC11824d abstractC11824d, AbstractC12174m abstractC12174m) {
        l.e(i0Var, "coroutineScope");
        l.e(str, "ownId");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC12174m, "endInvitation");
        this.f35471f = i0Var;
        this.f35466a = str;
        this.f35467b = abstractC11598i;
        this.f35468c = abstractC12261h;
        this.f35469d = abstractC11824d;
        this.f35470e = abstractC12174m;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: a */
    public p1 mo23587a() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12135b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: b */
    public p1 mo23586b() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12134a(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35471f.getCoroutineContext();
    }
}
