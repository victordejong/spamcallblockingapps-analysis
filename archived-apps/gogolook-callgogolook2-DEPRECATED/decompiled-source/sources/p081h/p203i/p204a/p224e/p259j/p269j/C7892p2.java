package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.p2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/p2.class */
public final class C7892p2 implements AbstractC7885o2 {
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: a */
    public final int mo19098a(int i, Object obj, Object obj2) {
        C7875n2 n2Var = (C7875n2) obj;
        if (n2Var.isEmpty()) {
            return 0;
        }
        Iterator it = n2Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: a */
    public final C7863m2<?, ?> mo19097a(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: a */
    public final Object mo19096a(Object obj, Object obj2) {
        C7875n2 n2Var = (C7875n2) obj;
        C7875n2 n2Var2 = (C7875n2) obj2;
        C7875n2 n2Var3 = n2Var;
        if (!n2Var2.isEmpty()) {
            n2Var3 = n2Var;
            if (!n2Var.m19147d()) {
                n2Var3 = n2Var.m19146e();
            }
            n2Var3.m19149a(n2Var2);
        }
        return n2Var3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: b */
    public final Object mo19095b(Object obj) {
        return C7875n2.m19144g().m19146e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: c */
    public final Object mo19094c(Object obj) {
        ((C7875n2) obj).m19150a();
        return obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: d */
    public final boolean mo19093d(Object obj) {
        return !((C7875n2) obj).m19147d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: e */
    public final Map<?, ?> mo19092e(Object obj) {
        return (C7875n2) obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7885o2
    /* renamed from: f */
    public final Map<?, ?> mo19091f(Object obj) {
        return (C7875n2) obj;
    }
}
