package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.List;
/* renamed from: h.i.a.e.j.q.x4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x4.class */
public final class C8774x4 extends AbstractC8747u4 {
    public C8774x4() {
        super();
    }

    /* renamed from: c */
    public static <E> AbstractC8638i4<E> m17068c(Object obj, long j) {
        return (AbstractC8638i4) C8776x6.m17028f(obj, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: a */
    public final <L> List<L> mo17071a(Object obj, long j) {
        AbstractC8638i4 c = m17068c(obj, j);
        AbstractC8638i4 i4Var = c;
        if (!c.mo17284i()) {
            int size = c.size();
            i4Var = c.mo16949f(size == 0 ? 10 : size << 1);
            C8776x6.m17052a(obj, j, i4Var);
        }
        return i4Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: a */
    public final <E> void mo17070a(Object obj, Object obj2, long j) {
        AbstractC8638i4 c = m17068c(obj, j);
        AbstractC8638i4 c2 = m17068c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        AbstractC8638i4 i4Var = c;
        if (size > 0) {
            i4Var = c;
            if (size2 > 0) {
                AbstractC8638i4<E> i4Var2 = c;
                if (!c.mo17284i()) {
                    i4Var2 = c.mo16949f(size2 + size);
                }
                i4Var2.addAll(c2);
                i4Var = i4Var2;
            }
        }
        i4Var = c2;
        if (size > 0) {
        }
        C8776x6.m17052a(obj, j, i4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8747u4
    /* renamed from: b */
    public final void mo17069b(Object obj, long j) {
        m17068c(obj, j).mo17285g();
    }
}
