package p193e.p194a.p619d.p661w.p662j;

import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p661w.C12130i;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h.class */
public final class C12153h implements i0, AbstractC12151g {

    /* renamed from: a */
    public final i0 f35507a;

    /* renamed from: b */
    public final String f35508b;

    /* renamed from: c */
    public final String f35509c;

    /* renamed from: d */
    public final a1<C11161a> f35510d;

    /* renamed from: e */
    public final C12130i f35511e;

    /* renamed from: f */
    public final AbstractC12261h f35512f;

    /* renamed from: g */
    public final f<C12262i> f35513g;

    /* renamed from: h */
    public final AbstractC12174m f35514h;

    /* renamed from: i */
    public final AbstractC11598i f35515i;

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$connect$1", f = "ConnectInvitation.kt", l = {50}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h$a.class */
    public static final class C12154a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35516e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12154a(d dVar) {
            super(2, dVar);
            C12153h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23548i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12154a(dVar);
        }

        /* renamed from: k */
        public final Object m23547k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12154a(dVar).m23546s(s.a);
        }

        /* renamed from: s */
        public final Object m23546s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f35516e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12153h c12153h = C12153h.this;
                this.f35516e = 1;
                Object m23550a = c12153h.m23550a(this);
                obj = m23550a;
                if (m23550a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                return sVar;
            }
            C12153h c12153h2 = C12153h.this;
            Objects.requireNonNull(c12153h2);
            s1.a.a.a.v0.f.d.w2(c12153h2, (s1.w.f) null, (j0) null, new C12167j(c12153h2, null), 3, (Object) null);
            C12153h c12153h3 = C12153h.this;
            Objects.requireNonNull(c12153h3);
            s1.a.a.a.v0.f.d.w2(c12153h3, (s1.w.f) null, (j0) null, new C12171l(c12153h3, null), 3, (Object) null);
            C12153h c12153h4 = C12153h.this;
            Objects.requireNonNull(c12153h4);
            s1.a.a.a.v0.f.d.w2(c12153h4, (s1.w.f) null, (j0) null, new C12169k(c12153h4, null), 3, (Object) null);
            C12153h c12153h5 = C12153h.this;
            Objects.requireNonNull(c12153h5);
            s1.a.a.a.v0.f.d.w2(c12153h5, (s1.w.f) null, (j0) null, new C12159i(c12153h5, null), 3, (Object) null);
            return sVar;
        }
    }

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$goWaitingAnswerState$2$invitedReceived$1", f = "ConnectInvitation.kt", l = {81}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h$b.class */
    public static final class C12155b extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f35518e;

        /* renamed from: f */
        public final /* synthetic */ C12153h f35519f;

        /* renamed from: g */
        public final /* synthetic */ d f35520g;

        @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$goWaitingAnswerState$2$invitedReceived$1$1", f = "ConnectInvitation.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.w.j.h$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h$b$a.class */
        public static final class C12156a extends i implements p<C12262i, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f35521e;

            public C12156a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23542i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12156a c12156a = new C12156a(dVar);
                c12156a.f35521e = obj;
                return c12156a;
            }

            /* renamed from: k */
            public final Object m23541k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                C12262i c12262i = (C12262i) obj;
                return Boolean.valueOf(l.a(c12262i != null ? c12262i.f35823b : null, RtmChannelAttributeState.Invited.getValue()));
            }

            /* renamed from: s */
            public final Object m23540s(Object obj) {
                C25225a.m3932a3(obj);
                C12262i c12262i = (C12262i) this.f35521e;
                return Boolean.valueOf(l.a(c12262i != null ? c12262i.f35823b : null, RtmChannelAttributeState.Invited.getValue()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12155b(d dVar, C12153h c12153h, d dVar2) {
            super(2, dVar);
            this.f35519f = c12153h;
            this.f35520g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m23545i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12155b(dVar, this.f35519f, this.f35520g);
        }

        /* renamed from: k */
        public final Object m23544k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12155b(dVar, this.f35519f, this.f35520g).m23543s(s.a);
        }

        /* renamed from: s */
        public final Object m23543s(Object obj) {
            a aVar = a.a;
            int i = this.f35518e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f<C12262i> fVar = this.f35519f.f35513g;
                C12156a c12156a = new C12156a(null);
                this.f35518e = 1;
                if (s1.a.a.a.v0.f.d.N0(fVar, c12156a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.TRUE;
        }
    }

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl", f = "ConnectInvitation.kt", l = {184, 63, 71, 80, 110}, m = "goWaitingAnswerState")
    /* renamed from: e.a.d.w.j.h$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/h$c.class */
    public static final class C12157c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35522d;

        /* renamed from: e */
        public int f35523e;

        /* renamed from: g */
        public Object f35525g;

        /* renamed from: h */
        public Object f35526h;

        /* renamed from: i */
        public Object f35527i;

        /* renamed from: j */
        public Object f35528j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12157c(d dVar) {
            super(dVar);
            C12153h.this = r4;
        }

        /* renamed from: s */
        public final Object m23539s(Object obj) {
            this.f35522d = obj;
            this.f35523e |= Integer.MIN_VALUE;
            return C12153h.this.m23550a(this);
        }
    }

    @Inject
    public C12153h(i0 i0Var, String str, String str2, a1<C11161a> a1Var, C12130i c12130i, AbstractC12261h abstractC12261h, f<C12262i> fVar, AbstractC12174m abstractC12174m, AbstractC11598i abstractC11598i) {
        l.e(i0Var, "coroutineScope");
        l.e(str, "ownId");
        l.e(str2, "senderVoipId");
        l.e(a1Var, "senderCallUser");
        l.e(c12130i, "stateMachine");
        l.e(abstractC12261h, "rtmChannel");
        l.e(fVar, "attributes");
        l.e(abstractC12174m, "endInvitation");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35507a = i0Var;
        this.f35508b = str;
        this.f35509c = str2;
        this.f35510d = a1Var;
        this.f35511e = c12130i;
        this.f35512f = abstractC12261h;
        this.f35513g = fVar;
        this.f35514h = abstractC12174m;
        this.f35515i = abstractC11598i;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0287  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23550a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 1344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.p662j.C12153h.m23550a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12151g
    /* renamed from: c */
    public p1 mo23549c() {
        return s1.a.a.a.v0.f.d.w2(this, (s1.w.f) null, (j0) null, new C12154a(null), 3, (Object) null);
    }

    public s1.w.f getCoroutineContext() {
        return this.f35507a.getCoroutineContext();
    }
}
