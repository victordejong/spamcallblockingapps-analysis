package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9136e;
import p193e.p194a.p437c.p438a.p480j.p482b.C9137f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getQuickFilters$3", f = "InsightsSmartFeedViewModel.kt", l = {299}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/g.class */
public final class C9480g extends i implements p<g<? super C9137f>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28749e;

    /* renamed from: f */
    public int f28750f;

    /* renamed from: g */
    public final /* synthetic */ InsightsSmartFeedViewModel f28751g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9480g(InsightsSmartFeedViewModel insightsSmartFeedViewModel, d dVar) {
        super(2, dVar);
        this.f28751g = insightsSmartFeedViewModel;
    }

    /* renamed from: i */
    public final d<s> m27528i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C9480g c9480g = new C9480g(this.f28751g, dVar);
        c9480g.f28749e = obj;
        return c9480g;
    }

    /* renamed from: k */
    public final Object m27527k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C9480g c9480g = new C9480g(this.f28751g, dVar);
        c9480g.f28749e = obj;
        return c9480g.m27526s(s.a);
    }

    /* renamed from: s */
    public final Object m27526s(Object obj) {
        a aVar = a.a;
        int i = this.f28750f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f28749e;
            Objects.requireNonNull(this.f28751g);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 4; i2++) {
                arrayList.add(new C9136e(i2 + 100));
            }
            C9137f c9137f = new C9137f(arrayList, true);
            this.f28750f = 1;
            if (gVar.a(c9137f, this) == aVar) {
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
