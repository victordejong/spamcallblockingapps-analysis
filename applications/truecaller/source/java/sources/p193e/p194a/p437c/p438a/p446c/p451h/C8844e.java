package p193e.p194a.p437c.p438a.p446c.p451h;

import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p449f.C8802f;
import p193e.p194a.p437c.p438a.p446c.p450g.C8835e;
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
@e(c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$observeUpcomingReminders$1", f = "BusinessInsightsViewModel.kt", l = {265}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.h.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/e.class */
public final class C8844e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26954e;

    /* renamed from: f */
    public final /* synthetic */ BusinessInsightsViewModel f26955f;

    /* renamed from: e.a.c.a.c.h.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/e$a.class */
    public static final class C8845a implements g<C8835e> {
        public C8845a() {
            C8844e.this = r4;
        }

        /* renamed from: a */
        public Object m28010a(C8835e c8835e, d<? super s> dVar) {
            BusinessInsightsViewModel businessInsightsViewModel = C8844e.this.f26955f;
            businessInsightsViewModel.f12768a.f26965c = c8835e;
            BusinessInsightsViewModel.m35194c(businessInsightsViewModel);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8844e(BusinessInsightsViewModel businessInsightsViewModel, d dVar) {
        super(2, dVar);
        this.f26955f = businessInsightsViewModel;
    }

    /* renamed from: i */
    public final d<s> m28013i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8844e(this.f26955f, dVar);
    }

    /* renamed from: k */
    public final Object m28012k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8844e(this.f26955f, dVar).m28011s(s.a);
    }

    /* renamed from: s */
    public final Object m28011s(Object obj) {
        a aVar = a.a;
        int i = this.f26954e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f F0 = s1.a.a.a.v0.f.d.F0(this.f26955f.f12774g.m27874c(new C8802f(false, 1)));
            C8845a c8845a = new C8845a();
            this.f26954e = 1;
            if (F0.c(c8845a, this) == aVar) {
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
