package p193e.p194a.p372b0.p373a.p385r;

import java.util.List;
import p1727n3.p1744b0.p1745a.C25586h;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b0.a.r.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/r/a.class */
public final class C8328a<T> extends C25586h.AbstractC25588b {

    /* renamed from: a */
    public final List<T> f25635a;

    /* renamed from: b */
    public final List<T> f25636b;

    /* renamed from: c */
    public final p<T, T, Boolean> f25637c;

    /* JADX WARN: Multi-variable type inference failed */
    public C8328a(List<? extends T> list, List<? extends T> list2, p<? super T, ? super T, Boolean> pVar) {
        l.e(list, "oldList");
        l.e(list2, "newList");
        l.e(pVar, "compare");
        this.f25635a = list;
        this.f25636b = list2;
        this.f25637c = pVar;
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areContentsTheSame(int i, int i2) {
        return l.a(this.f25635a.get(i), this.f25636b.get(i2));
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public boolean areItemsTheSame(int i, int i2) {
        return ((Boolean) this.f25637c.k(this.f25635a.get(i), this.f25636b.get(i2))).booleanValue();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getNewListSize() {
        return this.f25636b.size();
    }

    @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25588b
    public int getOldListSize() {
        return this.f25635a.size();
    }
}
