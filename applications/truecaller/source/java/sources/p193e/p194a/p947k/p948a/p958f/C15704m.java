package p193e.p194a.p947k.p948a.p958f;

import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC16031n0;
import p193e.p194a.p947k.p969c.C16036o0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.preview.PreviewPresenter$retryUploading$1", f = "PreviewPresenter.kt", l = {163}, m = "invokeSuspend")
/* renamed from: e.a.k.a.f.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/m.class */
public final class C15704m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44299e;

    /* renamed from: f */
    public final /* synthetic */ C15699j f44300f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15704m(C15699j c15699j, d dVar) {
        super(2, dVar);
        this.f44300f = c15699j;
    }

    /* renamed from: i */
    public final d<s> m18472i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15704m(this.f44300f, dVar);
    }

    /* renamed from: k */
    public final Object m18471k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15704m(this.f44300f, dVar).m18470s(s.a);
    }

    /* renamed from: s */
    public final Object m18470s(Object obj) {
        OutgoingVideoDetails mo18497k7;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f44299e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15697h abstractC15697h = (AbstractC15697h) this.f44300f.f57683a;
            if (abstractC15697h == null || (mo18497k7 = abstractC15697h.mo18497k7()) == null) {
                C15699j c15699j = this.f44300f;
                AbstractC15697h abstractC15697h2 = (AbstractC15697h) c15699j.f57683a;
                if (abstractC15697h2 != null) {
                    abstractC15697h2.mo18495m3(c15699j.f44273d);
                }
                return sVar;
            }
            C15699j c15699j2 = this.f44300f;
            AbstractC16031n0 abstractC16031n0 = c15699j2.f44282m;
            OnboardingData onboardingData = c15699j2.f44273d;
            this.f44299e = 1;
            if (((C16036o0) abstractC16031n0).m17974a(onboardingData, mo18497k7, this) == aVar) {
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
