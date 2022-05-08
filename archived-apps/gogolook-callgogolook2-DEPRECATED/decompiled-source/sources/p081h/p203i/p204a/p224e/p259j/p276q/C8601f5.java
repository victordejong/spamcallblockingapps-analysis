package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.f5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/f5.class */
public final class C8601f5 implements AbstractC8592e5 {
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: a */
    public final int mo17673a(int i, Object obj, Object obj2) {
        C8583d5 d5Var = (C8583d5) obj;
        if (d5Var.isEmpty()) {
            return 0;
        }
        Iterator it = d5Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: a */
    public final Map<?, ?> mo17672a(Object obj) {
        return (C8583d5) obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: b */
    public final Object mo17670b(Object obj, Object obj2) {
        C8583d5 d5Var = (C8583d5) obj;
        C8583d5 d5Var2 = (C8583d5) obj2;
        C8583d5 d5Var3 = d5Var;
        if (!d5Var2.isEmpty()) {
            d5Var3 = d5Var;
            if (!d5Var.m17704d()) {
                d5Var3 = d5Var.m17702f();
            }
            d5Var3.m17706a(d5Var2);
        }
        return d5Var3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: b */
    public final boolean mo17671b(Object obj) {
        return !((C8583d5) obj).m17704d();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: c */
    public final Object mo17669c(Object obj) {
        return C8583d5.m17700h().m17702f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: d */
    public final Object mo17668d(Object obj) {
        ((C8583d5) obj).m17703e();
        return obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: e */
    public final Map<?, ?> mo17667e(Object obj) {
        return (C8583d5) obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8592e5
    /* renamed from: f */
    public final C8574c5<?, ?> mo17666f(Object obj) {
        throw new NoSuchMethodError();
    }
}
