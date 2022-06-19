package p193e.p194a.p437c.p438a.p498n.p505e;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9419b;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.e.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/e/h.class */
public final class C9437h<T> implements AbstractC27012l0<AbstractC27592q1<AdapterItem>> {

    /* renamed from: a */
    public final /* synthetic */ C9431e f28646a;

    public C9437h(C9431e c9431e) {
        this.f28646a = c9431e;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(AbstractC27592q1<AdapterItem> abstractC27592q1) {
        AbstractC27592q1<AdapterItem> abstractC27592q12 = abstractC27592q1;
        C9419b c9419b = this.f28646a.f28641b;
        if (c9419b != null) {
            c9419b.e(abstractC27592q12);
        } else {
            l.l("remindersListAdapter");
            throw null;
        }
    }
}
