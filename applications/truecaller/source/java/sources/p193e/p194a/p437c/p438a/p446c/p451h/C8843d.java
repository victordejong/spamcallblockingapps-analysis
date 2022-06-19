package p193e.p194a.p437c.p438a.p446c.p451h;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.insights.utils.HideTrxTempState;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
/* renamed from: e.a.c.a.c.h.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/d.class */
public final class C8843d<T> implements AbstractC27012l0<HideTrxTempState> {

    /* renamed from: a */
    public final /* synthetic */ BusinessInsightsViewModel f26952a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26992b0 f26953b;

    public C8843d(BusinessInsightsViewModel businessInsightsViewModel, AbstractC26992b0 abstractC26992b0) {
        this.f26952a = businessInsightsViewModel;
        this.f26953b = abstractC26992b0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(HideTrxTempState hideTrxTempState) {
        d.w2(MediaSessionCompat.m43315C0(this.f26952a), (f) null, (j0) null, new C8841c(this, hideTrxTempState, null), 3, (Object) null);
    }
}
