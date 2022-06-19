package p193e.p194a.p437c.p438a.p446c.p451h;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.LiveData;
import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import n3.v.o;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p449f.C8819o;
import p193e.p194a.p437c.p438a.p446c.p449f.C8829x;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import q3.a.i0;
import q3.a.x2.d1;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.presentation.BusinessInsightsViewModel$observeBannerItem$1", f = "BusinessInsightsViewModel.kt", l = {125, 266, 132}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.h.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/b.class */
public final class C8838b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f26942e;

    /* renamed from: f */
    public int f26943f;

    /* renamed from: g */
    public final /* synthetic */ BusinessInsightsViewModel f26944g;

    /* renamed from: h */
    public final /* synthetic */ ActivityResultRegistry f26945h;

    /* renamed from: e.a.c.a.c.h.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/b$a.class */
    public static final class C8839a<T> implements AbstractC27012l0<AdapterItem.C4109a> {
        public C8839a() {
            C8838b.this = r4;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(AdapterItem.C4109a c4109a) {
            BusinessInsightsViewModel businessInsightsViewModel = C8838b.this.f26944g;
            businessInsightsViewModel.f12768a.f26968f = c4109a;
            BusinessInsightsViewModel.m35194c(businessInsightsViewModel);
        }
    }

    /* renamed from: e.a.c.a.c.h.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/b$b.class */
    public static final class C8840b implements g<AdapterItem.C4109a> {
        public C8840b() {
            C8838b.this = r4;
        }

        /* renamed from: a */
        public Object m28018a(AdapterItem.C4109a c4109a, d<? super s> dVar) {
            BusinessInsightsViewModel businessInsightsViewModel = C8838b.this.f26944g;
            businessInsightsViewModel.f12768a.f26968f = c4109a;
            BusinessInsightsViewModel.m35194c(businessInsightsViewModel);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8838b(BusinessInsightsViewModel businessInsightsViewModel, ActivityResultRegistry activityResultRegistry, d dVar) {
        super(2, dVar);
        this.f26944g = businessInsightsViewModel;
        this.f26945h = activityResultRegistry;
    }

    /* renamed from: i */
    public final d<s> m28021i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8838b(this.f26944g, this.f26945h, dVar);
    }

    /* renamed from: k */
    public final Object m28020k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8838b(this.f26944g, this.f26945h, dVar).m28019s(s.a);
    }

    /* renamed from: s */
    public final Object m28019s(Object obj) {
        Object obj2;
        n3.v.i0<List<AdapterItem>> i0Var;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f26943f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C8819o c8819o = this.f26944g.f12778k;
            this.f26943f = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c8819o.f27793a, new AbstractC9117k.C9118a(sVar, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i == 2) {
                C25225a.m3932a3(obj);
                return sVar;
            } else if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0Var = (n3.v.i0) this.f26942e;
                C25225a.m3932a3(obj);
                obj2 = obj;
                i0Var.m((LiveData) obj2, new C8839a());
                return sVar;
            }
        } else {
            C25225a.m3932a3(obj);
        }
        LiveData liveData = (LiveData) obj;
        if (liveData != null) {
            LiveData m43264W = MediaSessionCompat.m43264W(liveData);
            l.b(m43264W, "Transformations.distinctUntilChanged(this)");
            l.f(m43264W, "$this$asFlow");
            d1 d1Var = new d1(new o(m43264W, (d) null));
            C8840b c8840b = new C8840b();
            this.f26943f = 2;
            if (d1Var.c(c8840b, this) == aVar) {
                return aVar;
            }
        } else if (this.f26944g.f12779l.mo27247m()) {
            BusinessInsightsViewModel businessInsightsViewModel = this.f26944g;
            n3.v.i0<List<AdapterItem>> i0Var2 = businessInsightsViewModel.f12769b;
            C8829x c8829x = businessInsightsViewModel.f12787t;
            ActivityResultRegistry activityResultRegistry = this.f26945h;
            this.f26942e = i0Var2;
            this.f26943f = 3;
            obj2 = c8829x.m27865c(activityResultRegistry, this);
            if (obj2 == aVar) {
                return aVar;
            }
            i0Var = i0Var2;
            i0Var.m((LiveData) obj2, new C8839a());
        }
        return sVar;
    }
}
