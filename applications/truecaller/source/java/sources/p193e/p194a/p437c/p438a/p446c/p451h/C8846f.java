package p193e.p194a.p437c.p438a.p446c.p451h;

import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8836f;
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
@e(c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$observeUpdates$1", f = "BusinessInsightsViewModel.kt", l = {265}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.h.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/f.class */
public final class C8846f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26957e;

    /* renamed from: f */
    public final /* synthetic */ BusinessInsightsViewModel f26958f;

    /* renamed from: e.a.c.a.c.h.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/f$a.class */
    public static final class C8847a implements g<C8836f> {
        public C8847a() {
            C8846f.this = r4;
        }

        /* renamed from: a */
        public Object m28006a(C8836f c8836f, d<? super s> dVar) {
            BusinessInsightsViewModel businessInsightsViewModel = C8846f.this.f26958f;
            businessInsightsViewModel.f12768a.f26967e = c8836f;
            BusinessInsightsViewModel.m35194c(businessInsightsViewModel);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8846f(BusinessInsightsViewModel businessInsightsViewModel, d dVar) {
        super(2, dVar);
        this.f26958f = businessInsightsViewModel;
    }

    /* renamed from: i */
    public final d<s> m28009i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8846f(this.f26958f, dVar);
    }

    /* renamed from: k */
    public final Object m28008k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8846f(this.f26958f, dVar).m28007s(s.a);
    }

    /* renamed from: s */
    public final Object m28007s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f26957e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f F0 = s1.a.a.a.v0.f.d.F0(this.f26958f.f12776i.m27874c(sVar));
            C8847a c8847a = new C8847a();
            this.f26957e = 1;
            if (F0.c(c8847a, this) == aVar) {
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
