package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Comparator;
/* renamed from: h.i.a.e.j.q.v2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v2.class */
public final class C8754v2 implements Comparator<AbstractC8736t2> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC8736t2 t2Var, AbstractC8736t2 t2Var2) {
        int a;
        int a2;
        AbstractC8736t2 t2Var3 = t2Var;
        AbstractC8736t2 t2Var4 = t2Var2;
        AbstractC8794z2 z2Var = (AbstractC8794z2) t2Var3.iterator();
        AbstractC8794z2 z2Var2 = (AbstractC8794z2) t2Var4.iterator();
        while (z2Var.hasNext() && z2Var2.hasNext()) {
            a = AbstractC8736t2.m17181a(z2Var.nextByte());
            a2 = AbstractC8736t2.m17181a(z2Var2.nextByte());
            int compare = Integer.compare(a, a2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(t2Var3.size(), t2Var4.size());
    }
}
