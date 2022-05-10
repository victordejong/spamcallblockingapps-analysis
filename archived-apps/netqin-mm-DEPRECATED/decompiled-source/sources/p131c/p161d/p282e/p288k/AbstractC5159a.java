package p131c.p161d.p282e.p288k;

import java.util.Set;
import p131c.p161d.p282e.p334r.AbstractC5887a;
/* renamed from: c.d.e.k.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/a.class */
public abstract class AbstractC5159a implements AbstractC5165e {
    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: a */
    public <T> T mo24330a(Class<T> cls) {
        AbstractC5887a<T> b = mo24329b(cls);
        if (b == null) {
            return null;
        }
        return b.get();
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: d */
    public <T> Set<T> mo24327d(Class<T> cls) {
        return mo24328c(cls).get();
    }
}
