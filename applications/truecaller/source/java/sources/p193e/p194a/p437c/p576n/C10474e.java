package p193e.p194a.p437c.p576n;

import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.utils.FeedbackConsentType;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17493d2;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.x2.f;
import s1.k;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.n.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/n/e.class */
public final class C10474e implements AbstractC10473d {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f31143a;

    /* renamed from: b */
    public final AbstractC10028o f31144b;

    /* renamed from: c */
    public final AbstractC10024k f31145c;

    /* renamed from: d */
    public final AbstractC10357a f31146d;

    /* renamed from: e */
    public final AbstractC10462a f31147e;

    @e(c = "com.truecaller.insights.feedback.FeedbackRepositoryImpl", f = "FeedbackRepository.kt", l = {239, 240, 242}, m = "saveRowFeedback")
    /* renamed from: e.a.c.n.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/e$a.class */
    public static final class C10475a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31148d;

        /* renamed from: e */
        public int f31149e;

        /* renamed from: g */
        public Object f31151g;

        /* renamed from: h */
        public Object f31152h;

        /* renamed from: i */
        public long f31153i;

        /* renamed from: j */
        public long f31154j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10475a(d dVar) {
            super(dVar);
            C10474e.this = r4;
        }

        /* renamed from: s */
        public final Object m26097s(Object obj) {
            this.f31148d = obj;
            this.f31149e |= Integer.MIN_VALUE;
            return C10474e.this.mo26107g(0L, null, 0L, this);
        }
    }

    @e(c = "com.truecaller.insights.feedback.FeedbackRepositoryImpl", f = "FeedbackRepository.kt", l = {179}, m = "sendCardFeedback")
    /* renamed from: e.a.c.n.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/e$b.class */
    public static final class C10476b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31155d;

        /* renamed from: e */
        public int f31156e;

        /* renamed from: g */
        public Object f31158g;

        /* renamed from: h */
        public Object f31159h;

        /* renamed from: i */
        public Object f31160i;

        /* renamed from: j */
        public Object f31161j;

        /* renamed from: k */
        public boolean f31162k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10476b(d dVar) {
            super(dVar);
            C10474e.this = r4;
        }

        /* renamed from: s */
        public final Object m26096s(Object obj) {
            this.f31155d = obj;
            this.f31156e |= Integer.MIN_VALUE;
            return C10474e.this.mo26111c(0L, null, 0L, null, null, false, this);
        }
    }

    @Inject
    public C10474e(AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC10028o abstractC10028o, AbstractC10024k abstractC10024k, AbstractC10357a abstractC10357a, AbstractC10462a abstractC10462a) {
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC10024k, "consentConfig");
        l.e(abstractC10357a, "parseManager");
        l.e(abstractC10462a, "feedbackDataSource");
        this.f31143a = abstractC19854f;
        this.f31144b = abstractC10028o;
        this.f31145c = abstractC10024k;
        this.f31146d = abstractC10357a;
        this.f31147e = abstractC10462a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: a */
    public Object mo26113a(long j, d<? super Map<Long, Float>> dVar) {
        return this.f31147e.mo26128a(j, dVar);
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: b */
    public Object mo26112b(long j, d<? super Map<Long, C10329b>> dVar) {
        return this.f31147e.mo26122g(j, FeedbackType.ROW_FEEDBACK, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f3  */
    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26111c(long r9, p193e.p194a.p437c.p552i.p557e.C10329b r11, long r12, java.lang.String r14, java.lang.Boolean r15, boolean r16, s1.w.d<? super s1.s> r17) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10474e.mo26111c(long, e.a.c.i.e.b, long, java.lang.String, java.lang.Boolean, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: d */
    public void mo26110d(List<C10329b> list, boolean z) {
        l.e(list, "feedback");
        for (C10329b c10329b : list) {
            AbstractC19463a0 mo11854a = this.f31143a.mo11854a();
            C17493d2.C17495b m16004a = C17493d2.m16004a();
            m16004a.m16000d("non-spam");
            m16004a.m16001c(C25225a.m3938Z1(new k("q2", c10329b.f30684f)));
            m16004a.m16002b("conversation_view");
            m16004a.m15998f(c10329b.f30679a);
            m16004a.m15999e(m26098p(c10329b, z));
            mo11854a.mo13111a(m16004a.build());
        }
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: e */
    public void mo26109e(List<C10329b> list, boolean z) {
        l.e(list, "feedback");
        for (C10329b c10329b : list) {
            AbstractC19463a0 mo11854a = this.f31143a.mo11854a();
            C17493d2.C17495b m16004a = C17493d2.m16004a();
            m16004a.m16000d("spam");
            m16004a.m16001c(C25225a.m3938Z1(new k("q3", c10329b.f30684f)));
            m16004a.m16002b("conversation_view");
            m16004a.m15998f(c10329b.f30679a);
            m16004a.m15999e(m26098p(c10329b, z));
            mo11854a.mo13111a(m16004a.build());
        }
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: f */
    public void mo26108f() {
        this.f31145c.mo26894c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012f  */
    /* JADX WARN: Type inference failed for: r0v13, types: [e.a.c.n.a] */
    /* JADX WARN: Type inference failed for: r0v21, types: [e.a.c.n.a] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26107g(long r9, p193e.p194a.p437c.p552i.p557e.C10329b r11, long r12, s1.w.d<? super s1.s> r14) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10474e.mo26107g(long, e.a.c.i.e.b, long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: h */
    public boolean mo26106h() {
        return C10480a.m26002X0(this.f31145c, FeedbackConsentType.MASTER_CONSENT);
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: i */
    public Object mo26105i(List<Long> list, d<? super Map<Long, C10329b>> dVar) {
        return this.f31147e.mo26123f(list, i.T(new FeedbackType[]{FeedbackType.SEMICARD_FEEDBACK, FeedbackType.INFOCARD_FEEDBACK}), dVar);
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: j */
    public Object mo26104j(List<C10329b> list, String str, FeedbackConsentType feedbackConsentType, d<? super s> dVar) {
        for (C10329b c10329b : list) {
            AbstractC19463a0 mo11854a = this.f31143a.mo11854a();
            C17493d2.C17495b m16004a = C17493d2.m16004a();
            m16004a.m16000d("give-feedback");
            m16004a.m16001c(C25225a.m3938Z1(new k(str, c10329b.f30684f)));
            m16004a.m16002b("conversation_view");
            m16004a.m15998f(c10329b.f30679a);
            m16004a.m15999e(m26098p(c10329b, C10480a.m26002X0(this.f31145c, feedbackConsentType)));
            mo11854a.mo13111a(m16004a.build());
        }
        return s.a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: k */
    public f<Map<Long, C10329b>> mo26103k(List<Long> list) {
        l.e(list, "entities");
        return this.f31147e.mo26121h(list, C25225a.m3962T1(FeedbackType.UPDATES_FEEDBACK));
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: l */
    public Object mo26102l(List<C10329b> list, d<? super s> dVar) {
        Object mo26124e = this.f31147e.mo26124e(list, new AbstractC10105a.C10106a(0.0f, 0, 3), new AbstractC10105a.C10107b(0.0f, 0, 3), dVar);
        return mo26124e == a.a ? mo26124e : s.a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: m */
    public void mo26101m() {
        this.f31145c.mo26893d();
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: n */
    public Object mo26100n(List<C10329b> list, d<? super s> dVar) {
        Object mo26124e = this.f31147e.mo26124e(list, new AbstractC10105a.C10107b(0.0f, 0, 3), new AbstractC10105a.C10106a(0.0f, 0, 3), dVar);
        return mo26124e == a.a ? mo26124e : s.a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10473d
    /* renamed from: o */
    public Object mo26099o(List<Long> list, d<? super Map<Long, C10329b>> dVar) {
        return this.f31147e.mo26123f(list, C25225a.m3962T1(FeedbackType.UPDATES_FEEDBACK), dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c7, code lost:
        if (r12 != null) goto L22;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.CharSequence, java.lang.CharSequence> m26098p(p193e.p194a.p437c.p552i.p557e.C10329b r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10474e.m26098p(e.a.c.i.e.b, boolean):java.util.Map");
    }
}
