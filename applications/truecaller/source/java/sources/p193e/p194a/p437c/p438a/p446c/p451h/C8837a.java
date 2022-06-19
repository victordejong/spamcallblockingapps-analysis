package p193e.p194a.p437c.p438a.p446c.p451h;

import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$logBannerView$1", f = "BusinessInsightsViewModel.kt", l = {173}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.h.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/a.class */
public final class C8837a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f26940e;

    /* renamed from: f */
    public final /* synthetic */ BusinessInsightsViewModel f26941f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8837a(BusinessInsightsViewModel businessInsightsViewModel, d dVar) {
        super(2, dVar);
        this.f26941f = businessInsightsViewModel;
    }

    /* renamed from: i */
    public final d<s> m28024i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8837a(this.f26941f, dVar);
    }

    /* renamed from: k */
    public final Object m28023k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8837a(this.f26941f, dVar).m28022s(s.a);
    }

    /* renamed from: s */
    public final Object m28022s(Object obj) {
        a aVar = a.a;
        int i = this.f26940e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f26940e = 1;
            if (s1.a.a.a.v0.f.d.D0(3000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f26941f.f12772e = false;
        return s.a;
    }
}
