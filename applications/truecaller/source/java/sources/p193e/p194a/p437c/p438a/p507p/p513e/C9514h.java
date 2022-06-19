package p193e.p194a.p437c.p438a.p507p.p513e;

import com.google.android.material.button.MaterialButton;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9137f;
import p193e.p194a.p437c.p438a.p480j.p483c.C9142a;
import p193e.p194a.p437c.p438a.p507p.p511d.C9473e;
import p193e.p194a.p437c.p438a.p507p.p511d.C9477f;
import p193e.p194a.p437c.p438a.p507p.p511d.C9480g;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.t;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectQuickFilter$1", f = "InsightsSmartFeedFragment.kt", l = {144}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.e.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/h.class */
public final class C9514h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28846e;

    /* renamed from: f */
    public final /* synthetic */ C9507f f28847f;

    @e(c = "com.truecaller.insights.ui.smartfeed.view.InsightsSmartFeedFragment$collectQuickFilter$1$1", f = "InsightsSmartFeedFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.p.e.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/h$a.class */
    public static final class C9515a extends i implements p<C9137f, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f28848e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9515a(d dVar) {
            super(2, dVar);
            C9514h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27473i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9515a c9515a = new C9515a(dVar);
            c9515a.f28848e = obj;
            return c9515a;
        }

        /* renamed from: k */
        public final Object m27472k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9514h c9514h = C9514h.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C9137f c9137f = (C9137f) obj;
            C9142a c9142a = c9514h.f28847f.f28832f;
            if (c9142a == null) {
                l.l("quickFilterAdapter");
                throw null;
            }
            c9142a.submitList(c9137f.f27839a);
            MaterialButton materialButton = c9514h.f28847f.m27489QA().f27478c;
            l.d(materialButton, "binding.moreFilters");
            boolean z = true;
            if (c9137f.f27840b || !(!c9137f.f27839a.isEmpty())) {
                z = false;
            }
            materialButton.setVisibility(z ? 0 : 8);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27471s(Object obj) {
            C25225a.m3932a3(obj);
            C9137f c9137f = (C9137f) this.f28848e;
            C9142a c9142a = C9514h.this.f28847f.f28832f;
            if (c9142a == null) {
                l.l("quickFilterAdapter");
                throw null;
            }
            c9142a.submitList(c9137f.f27839a);
            MaterialButton materialButton = C9514h.this.f28847f.m27489QA().f27478c;
            l.d(materialButton, "binding.moreFilters");
            boolean z = true;
            if (c9137f.f27840b || !(!c9137f.f27839a.isEmpty())) {
                z = false;
            }
            materialButton.setVisibility(z ? 0 : 8);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9514h(C9507f c9507f, d dVar) {
        super(2, dVar);
        this.f28847f = c9507f;
    }

    /* renamed from: i */
    public final d<s> m27476i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9514h(this.f28847f, dVar);
    }

    /* renamed from: k */
    public final Object m27475k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9514h(this.f28847f, dVar).m27474s(s.a);
    }

    /* renamed from: s */
    public final Object m27474s(Object obj) {
        a aVar = a.a;
        int i = this.f28846e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9507f c9507f = this.f28847f;
            s1.a.l[] lVarArr = C9507f.f28829m;
            InsightsSmartFeedViewModel m27488RA = c9507f.m27488RA();
            f F0 = s1.a.a.a.v0.f.d.F0(new t(new C9480g(m27488RA, null), s1.a.a.a.v0.f.d.P3(new C9477f(m27488RA.f12913j), new C9473e(null, m27488RA))));
            C9515a c9515a = new C9515a(null);
            this.f28846e = 1;
            if (s1.a.a.a.v0.f.d.g0(F0, c9515a, this) == aVar) {
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
