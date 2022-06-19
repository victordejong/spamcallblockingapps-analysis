package p193e.p194a.p437c.p438a.p456d.p463f.p469e;

import com.truecaller.insights.p168ui.financepage.search.view.SearchTrxActivity;
import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p194a.p437c.p438a.p456d.p463f.p467c.C8929a;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.f.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/e/f.class */
public final class C8938f<T> implements AbstractC27012l0<AbstractC27592q1<AdapterItem>> {

    /* renamed from: a */
    public final /* synthetic */ SearchTrxActivity f27219a;

    public C8938f(SearchTrxActivity searchTrxActivity) {
        this.f27219a = searchTrxActivity;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(AbstractC27592q1<AdapterItem> abstractC27592q1) {
        AbstractC27592q1<AdapterItem> abstractC27592q12 = abstractC27592q1;
        C8929a c8929a = this.f27219a.f12746d;
        if (c8929a == null) {
            l.l("trxAdapter");
            throw null;
        }
        c8929a.e(abstractC27592q12);
        this.f27219a.m35201pa().f27470f.postDelayed(new RunnableC8939g(new C8937e(this.f27219a)), 500L);
    }
}
