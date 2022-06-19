package p193e.p194a.p798g5.p802e0.p803u;

import java.util.List;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.u.a */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/a.class */
public final class C14504a extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<C8551c> f41749a;

    /* renamed from: b */
    public List<C8551c> f41750b;

    public C14504a(List<C8551c> list, List<C8551c> list2) {
        l.e(list, "oldCategories");
        l.e(list2, "newCategories");
        this.f41749a = list;
        this.f41750b = list2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return true;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return this.f41749a.get(i).f26350a == this.f41750b.get(i2).f26350a;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f41750b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f41749a.size();
    }
}
