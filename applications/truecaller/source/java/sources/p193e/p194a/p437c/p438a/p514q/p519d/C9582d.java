package p193e.p194a.p437c.p438a.p514q.p519d;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p194a.p437c.p438a.p514q.p517c.p518c.C9575a;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.d.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/d/d.class */
public final class C9582d<T> implements AbstractC27012l0<AbstractC27592q1<AdapterItem>> {

    /* renamed from: a */
    public final /* synthetic */ C9577b f28995a;

    public C9582d(C9577b c9577b) {
        this.f28995a = c9577b;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(AbstractC27592q1<AdapterItem> abstractC27592q1) {
        AbstractC27592q1<AdapterItem> abstractC27592q12 = abstractC27592q1;
        C9575a c9575a = this.f28995a.f28989b;
        if (c9575a != null) {
            c9575a.e(abstractC27592q12);
        } else {
            l.l("updatesListAdapter");
            throw null;
        }
    }
}
