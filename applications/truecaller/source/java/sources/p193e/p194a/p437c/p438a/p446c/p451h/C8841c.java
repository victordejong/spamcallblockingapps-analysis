package p193e.p194a.p437c.p438a.p446c.p451h;

import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.insights.utils.HideTrxTempState;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8831a;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$observeFinanceReminders$1$1", f = "BusinessInsightsViewModel.kt", l = {265}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.h.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/c.class */
public final class C8841c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26948e;

    /* renamed from: f */
    public final /* synthetic */ C8843d f26949f;

    /* renamed from: g */
    public final /* synthetic */ HideTrxTempState f26950g;

    /* renamed from: e.a.c.a.c.h.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/c$a.class */
    public static final class C8842a implements g<C8831a> {
        public C8842a() {
            C8841c.this = r4;
        }

        /* renamed from: a */
        public Object m28014a(C8831a c8831a, d<? super s> dVar) {
            C8831a c8831a2 = c8831a;
            boolean mo26834k0 = C8841c.this.f26950g.isDefault() ? C8841c.this.f26949f.f26952a.f12780m.mo26834k0() : !C8841c.this.f26950g.isShown();
            BusinessInsightsViewModel businessInsightsViewModel = C8841c.this.f26949f.f26952a;
            businessInsightsViewModel.f12768a.f26969g = mo26834k0 && businessInsightsViewModel.f12779l.mo27270Y();
            BusinessInsightsViewModel businessInsightsViewModel2 = C8841c.this.f26949f.f26952a;
            businessInsightsViewModel2.f12768a.f26966d = c8831a2;
            BusinessInsightsViewModel.m35194c(businessInsightsViewModel2);
            C8843d c8843d = C8841c.this.f26949f;
            BusinessInsightsViewModel businessInsightsViewModel3 = c8843d.f26952a;
            AbstractC27028u lifecycle = c8843d.f26953b.getLifecycle();
            l.d(lifecycle, "lifecycleOwner.lifecycle");
            AbstractC27028u.EnumC27030b enumC27030b = ((C26994c0) lifecycle).f75501c;
            l.d(enumC27030b, "lifecycleOwner.lifecycle.currentState");
            businessInsightsViewModel3.m35193d(enumC27030b);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8841c(C8843d c8843d, HideTrxTempState hideTrxTempState, d dVar) {
        super(2, dVar);
        this.f26949f = c8843d;
        this.f26950g = hideTrxTempState;
    }

    /* renamed from: i */
    public final d<s> m28017i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8841c(this.f26949f, this.f26950g, dVar);
    }

    /* renamed from: k */
    public final Object m28016k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8841c(this.f26949f, this.f26950g, dVar).m28015s(s.a);
    }

    /* renamed from: s */
    public final Object m28015s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f26948e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f F0 = s1.a.a.a.v0.f.d.F0(this.f26949f.f26952a.f12775h.m27874c(sVar));
            C8842a c8842a = new C8842a();
            this.f26948e = 1;
            if (F0.c(c8842a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
