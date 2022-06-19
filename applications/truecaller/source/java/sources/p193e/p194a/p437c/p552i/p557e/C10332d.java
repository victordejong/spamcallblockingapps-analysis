package p193e.p194a.p437c.p552i.p557e;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.truecaller.insights.utils.FeedbackConsentType;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p471e.p472a.C8962a;
import p193e.p194a.p437c.p438a.p479i.C9112f;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p576n.AbstractC10470c;
import p193e.p194a.p437c.p576n.AbstractC10473d;
import p193e.p194a.p437c.p579q.AbstractC10490a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.c.i.e.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d.class */
public final class C10332d implements AbstractC10330c {

    /* renamed from: a */
    public final i0 f30688a;

    /* renamed from: b */
    public final AbstractC10473d f30689b;

    /* renamed from: c */
    public final f f30690c;

    /* renamed from: d */
    public final C9112f f30691d;

    /* renamed from: e */
    public final AbstractC10821g f30692e;

    /* renamed from: e.a.c.i.e.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$a.class */
    public static final class C10333a extends m implements l<AbstractC10490a, s> {

        /* renamed from: c */
        public final /* synthetic */ FragmentManager f30694c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10333a(FragmentManager fragmentManager) {
            super(1);
            C10332d.this = r4;
            this.f30694c = fragmentManager;
        }

        /* renamed from: d */
        public Object m26338d(Object obj) {
            AbstractC10490a abstractC10490a = (AbstractC10490a) obj;
            s1.z.c.l.e(abstractC10490a, "it");
            C10332d c10332d = C10332d.this;
            FragmentManager fragmentManager = this.f30694c;
            Objects.requireNonNull(c10332d);
            Fragment m42943J = fragmentManager.m42943J(16908290);
            if (m42943J != null) {
                if (!(m42943J instanceof AbstractC10330c.AbstractC10331a)) {
                    m42943J = null;
                }
                if (m42943J != null && (abstractC10490a instanceof AbstractC10490a.AbstractC10491a.C10492a)) {
                    m42943J.mo26354On();
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$enableSmartSms$1", f = "InsightsFeedbackManager.kt", l = {166}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.e.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$b.class */
    public static final class C10334b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30695e;

        /* renamed from: g */
        public final /* synthetic */ String f30697g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC10330c.AbstractC10331a f30698h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10334b(String str, AbstractC10330c.AbstractC10331a abstractC10331a, d dVar) {
            super(2, dVar);
            C10332d.this = r5;
            this.f30697g = str;
            this.f30698h = abstractC10331a;
        }

        /* renamed from: i */
        public final d<s> m26337i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10334b(this.f30697g, this.f30698h, dVar);
        }

        /* renamed from: k */
        public final Object m26336k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10334b(this.f30697g, this.f30698h, dVar).m26335s(s.a);
        }

        /* renamed from: s */
        public final Object m26335s(Object obj) {
            a aVar = a.a;
            int i = this.f30695e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10821g abstractC10821g = C10332d.this.f30692e;
                String m26800d = C10031q.f29863b.m26800d(this.f30697g);
                this.f30695e = 1;
                if (abstractC10821g.mo25579j(m26800d, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f30698h.mo26354On();
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$generalFeedback$1", f = "InsightsFeedbackManager.kt", l = {101}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.e.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$c.class */
    public static final class C10335c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30699e;

        /* renamed from: g */
        public final /* synthetic */ List f30701g;

        /* renamed from: h */
        public final /* synthetic */ String f30702h;

        /* renamed from: i */
        public final /* synthetic */ FeedbackConsentType f30703i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10335c(List list, String str, FeedbackConsentType feedbackConsentType, d dVar) {
            super(2, dVar);
            C10332d.this = r5;
            this.f30701g = list;
            this.f30702h = str;
            this.f30703i = feedbackConsentType;
        }

        /* renamed from: i */
        public final d<s> m26334i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10335c(this.f30701g, this.f30702h, this.f30703i, dVar);
        }

        /* renamed from: k */
        public final Object m26333k(Object obj, Object obj2) {
            return m26334i(obj, (d) obj2).m26332s(s.a);
        }

        /* renamed from: s */
        public final Object m26332s(Object obj) {
            a aVar = a.a;
            int i = this.f30699e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10473d abstractC10473d = C10332d.this.f30689b;
                List<C10329b> list = this.f30701g;
                String str = this.f30702h;
                FeedbackConsentType feedbackConsentType = this.f30703i;
                this.f30699e = 1;
                if (abstractC10473d.mo26104j(list, str, feedbackConsentType, this) == aVar) {
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

    @e(c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$isSenderBlacklisted$1", f = "InsightsFeedbackManager.kt", l = {161}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.e.d$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$d.class */
    public static final class C10336d extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f30704e;

        /* renamed from: g */
        public final /* synthetic */ String f30706g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10336d(String str, d dVar) {
            super(2, dVar);
            C10332d.this = r5;
            this.f30706g = str;
        }

        /* renamed from: i */
        public final d<s> m26331i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10336d(this.f30706g, dVar);
        }

        /* renamed from: k */
        public final Object m26330k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10336d(this.f30706g, dVar).m26329s(s.a);
        }

        /* renamed from: s */
        public final Object m26329s(Object obj) {
            a aVar = a.a;
            int i = this.f30704e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10821g abstractC10821g = C10332d.this.f30692e;
                String m26800d = C10031q.f29863b.m26800d(this.f30706g);
                this.f30704e = 1;
                Object mo25587b = abstractC10821g.mo25587b(m26800d, this);
                obj = mo25587b;
                if (mo25587b == aVar) {
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

    @e(c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$markMessageAsNotSpam$1", f = "InsightsFeedbackManager.kt", l = {141}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.e.d$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$e.class */
    public static final class C10337e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30707e;

        /* renamed from: g */
        public final /* synthetic */ List f30709g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10337e(List list, d dVar) {
            super(2, dVar);
            C10332d.this = r5;
            this.f30709g = list;
        }

        /* renamed from: i */
        public final d<s> m26328i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10337e(this.f30709g, dVar);
        }

        /* renamed from: k */
        public final Object m26327k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10337e(this.f30709g, dVar).m26326s(s.a);
        }

        /* renamed from: s */
        public final Object m26326s(Object obj) {
            a aVar = a.a;
            int i = this.f30707e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10473d abstractC10473d = C10332d.this.f30689b;
                List<C10329b> list = this.f30709g;
                this.f30707e = 1;
                if (abstractC10473d.mo26100n(list, this) == aVar) {
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

    @e(c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$markMessageAsSpam$1", f = "InsightsFeedbackManager.kt", l = {135}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.e.d$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/e/d$f.class */
    public static final class C10338f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f30710e;

        /* renamed from: g */
        public final /* synthetic */ List f30712g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10338f(List list, d dVar) {
            super(2, dVar);
            C10332d.this = r5;
            this.f30712g = list;
        }

        /* renamed from: i */
        public final d<s> m26325i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10338f(this.f30712g, dVar);
        }

        /* renamed from: k */
        public final Object m26324k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10338f(this.f30712g, dVar).m26323s(s.a);
        }

        /* renamed from: s */
        public final Object m26323s(Object obj) {
            a aVar = a.a;
            int i = this.f30710e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10473d abstractC10473d = C10332d.this.f30689b;
                List<C10329b> list = this.f30712g;
                this.f30710e = 1;
                if (abstractC10473d.mo26102l(list, this) == aVar) {
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

    @Inject
    public C10332d(AbstractC10473d abstractC10473d, @Named("IO") f fVar, C9112f c9112f, AbstractC10821g abstractC10821g) {
        s1.z.c.l.e(abstractC10473d, "repository");
        s1.z.c.l.e(fVar, "ioCoroutineContext");
        s1.z.c.l.e(c9112f, "insightsUiDialogOpener");
        s1.z.c.l.e(abstractC10821g, "smartSmsFeatureFilter");
        this.f30689b = abstractC10473d;
        this.f30690c = fVar;
        this.f30691d = c9112f;
        this.f30692e = abstractC10821g;
        this.f30688a = s1.a.a.a.v0.f.d.h(fVar.plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: a */
    public Object mo26353a(long j, d<? super Map<Long, Float>> dVar) {
        return this.f30689b.mo26113a(j, dVar);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: b */
    public Object mo26352b(long j, d<? super Map<Long, C10329b>> dVar) {
        return this.f30689b.mo26112b(j, dVar);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: c */
    public Object mo26351c(long j, C10329b c10329b, long j2, String str, Boolean bool, boolean z, d<? super s> dVar) {
        Object mo26111c = this.f30689b.mo26111c(j, c10329b, j2, str, bool, z, dVar);
        return mo26111c == a.a ? mo26111c : s.a;
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: d */
    public void mo26350d(List<C10329b> list, boolean z) {
        s1.z.c.l.e(list, "feedback");
        this.f30689b.mo26110d(list, z);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: e */
    public void mo26349e(List<C10329b> list, boolean z) {
        s1.z.c.l.e(list, "feedback");
        this.f30689b.mo26109e(list, z);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: f */
    public void mo26348f() {
        this.f30689b.mo26108f();
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: g */
    public Object mo26347g(long j, C10329b c10329b, long j2, d<? super s> dVar) {
        Object mo26107g = this.f30689b.mo26107g(j, c10329b, j2, dVar);
        return mo26107g == a.a ? mo26107g : s.a;
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: h */
    public boolean mo26346h() {
        return this.f30689b.mo26106h();
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: i */
    public void mo26345i() {
        this.f30689b.mo26101m();
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: j */
    public void mo26344j(List<C10329b> list) {
        s1.z.c.l.e(list, "feedback");
        s1.a.a.a.v0.f.d.w2(this.f30688a, (f) null, (j0) null, new C10337e(list, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: k */
    public boolean mo26343k(String str) {
        s1.z.c.l.e(str, "senderId");
        return ((Boolean) s1.a.a.a.v0.f.d.c3((f) null, new C10336d(str, null), 1, (Object) null)).booleanValue();
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: l */
    public void mo26342l(List<C10329b> list) {
        s1.z.c.l.e(list, "feedback");
        s1.a.a.a.v0.f.d.w2(this.f30688a, (f) null, (j0) null, new C10338f(list, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: m */
    public void mo26341m(String str, AbstractC10330c.AbstractC10331a abstractC10331a) {
        s1.z.c.l.e(str, "senderId");
        s1.z.c.l.e(abstractC10331a, "callback");
        s1.a.a.a.v0.f.d.w2(this.f30688a, (f) null, (j0) null, new C10334b(str, abstractC10331a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: n */
    public void mo26340n(List<C10329b> list, AbstractC10470c abstractC10470c, FeedbackConsentType feedbackConsentType) {
        s1.z.c.l.e(list, "feedback");
        s1.z.c.l.e(abstractC10470c, "questionnaireType");
        s1.z.c.l.e(feedbackConsentType, "consentType");
        s1.a.a.a.v0.f.d.w2(this.f30688a, (f) null, (j0) null, new C10335c(list, abstractC10470c.mo26114a(), feedbackConsentType, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c
    /* renamed from: o */
    public void mo26339o(String str, boolean z, FragmentManager fragmentManager) {
        s1.z.c.l.e(str, "senderId");
        s1.z.c.l.e(fragmentManager, "fragmentManager");
        C9112f c9112f = this.f30691d;
        String m26800d = C10031q.f29863b.m26800d(str);
        C10333a c10333a = new C10333a(fragmentManager);
        Objects.requireNonNull(c9112f);
        s1.z.c.l.e(fragmentManager, "fragmentManager");
        s1.z.c.l.e(m26800d, "address");
        s1.z.c.l.e("conversation_view", "analyticsContext");
        s1.z.c.l.e(c10333a, "dialogActionCallback");
        Objects.requireNonNull(C8962a.f27258k);
        s1.z.c.l.e(m26800d, "address");
        s1.z.c.l.e(c10333a, "dialogActionCallback");
        s1.z.c.l.e("conversation_view", "analyticContext");
        C8962a c8962a = new C8962a();
        c8962a.f27259a = c10333a;
        Bundle bundle = new Bundle();
        bundle.putString("sender_id", m26800d);
        bundle.putBoolean("is_im", z);
        bundle.putString("analytics_context", "conversation_view");
        c8962a.setArguments(bundle);
        c8962a.show(fragmentManager, C8962a.f27257j);
    }
}
