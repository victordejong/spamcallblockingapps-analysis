package p193e.p194a.p437c.p438a.p456d.p470g;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.C8879g;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/n.class */
public final class C8961n<T> implements AbstractC27012l0<AbstractC27592q1<AdapterItem>> {

    /* renamed from: a */
    public final /* synthetic */ C8956l f27255a;

    public C8961n(C8956l c8956l) {
        this.f27255a = c8956l;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(AbstractC27592q1<AdapterItem> abstractC27592q1) {
        AbstractC27592q1<AdapterItem> abstractC27592q12 = abstractC27592q1;
        C8879g c8879g = this.f27255a.f27249b;
        if (c8879g != null) {
            c8879g.e(abstractC27592q12);
        } else {
            l.l("transactionAdapter");
            throw null;
        }
    }
}
