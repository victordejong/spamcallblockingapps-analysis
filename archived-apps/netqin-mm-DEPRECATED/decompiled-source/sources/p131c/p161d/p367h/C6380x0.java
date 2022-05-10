package p131c.p161d.p367h;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: c.d.h.x0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/x0.class */
public final class C6380x0 {

    /* renamed from: c */
    public static final C6380x0 f20050c = new C6380x0();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC6287c1<?>> f20052b = new ConcurrentHashMap();

    /* renamed from: a */
    public final AbstractC6290d1 f20051a = new C6314g0();

    /* renamed from: a */
    public static C6380x0 m21016a() {
        return f20050c;
    }

    /* renamed from: a */
    public <T> AbstractC6287c1<T> m21015a(Class<T> cls) {
        C6381y.m21007a(cls, "messageType");
        AbstractC6287c1<?> c1Var = this.f20052b.get(cls);
        AbstractC6287c1<T> c1Var2 = (AbstractC6287c1<T>) c1Var;
        if (c1Var == null) {
            c1Var2 = this.f20051a.mo21493a(cls);
            AbstractC6287c1<?> a = m21014a(cls, c1Var2);
            if (a != null) {
                c1Var2 = (AbstractC6287c1<T>) a;
            }
        }
        return c1Var2;
    }

    /* renamed from: a */
    public AbstractC6287c1<?> m21014a(Class<?> cls, AbstractC6287c1<?> c1Var) {
        C6381y.m21007a(cls, "messageType");
        C6381y.m21007a(c1Var, "schema");
        return this.f20052b.putIfAbsent(cls, c1Var);
    }

    /* renamed from: a */
    public <T> AbstractC6287c1<T> m21013a(T t) {
        return m21015a((Class) t.getClass());
    }

    /* renamed from: a */
    public <T> void m21012a(T t, AbstractC6284b1 b1Var, C6358p pVar) throws IOException {
        m21013a((C6380x0) t).mo21082a(t, b1Var, pVar);
    }
}
