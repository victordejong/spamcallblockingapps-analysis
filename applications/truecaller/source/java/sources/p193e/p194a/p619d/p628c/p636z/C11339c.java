package p193e.p194a.p619d.p628c.p636z;

import java.util.List;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.c.l;
/* renamed from: e.a.d.c.z.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/c.class */
public final class C11339c extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<AbstractC11358p> f33358a;

    /* renamed from: b */
    public final List<AbstractC11358p> f33359b;

    /* JADX WARN: Multi-variable type inference failed */
    public C11339c(List<? extends AbstractC11358p> list, List<? extends AbstractC11358p> list2) {
        l.e(list, "oldPeers");
        l.e(list2, "newPeers");
        this.f33358a = list;
        this.f33359b = list2;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return l.a(this.f33358a.get(i), this.f33359b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return l.a(this.f33358a.get(i), this.f33359b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f33359b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f33358a.size();
    }
}
