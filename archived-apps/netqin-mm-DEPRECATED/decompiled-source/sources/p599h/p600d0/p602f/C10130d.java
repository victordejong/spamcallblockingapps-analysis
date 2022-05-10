package p599h.p600d0.p602f;

import java.util.LinkedHashSet;
import java.util.Set;
import p599h.C10104c0;
/* renamed from: h.d0.f.d */
/* loaded from: classes2-dex2jar.jar:h/d0/f/d.class */
public final class C10130d {

    /* renamed from: a */
    public final Set<C10104c0> f37412a = new LinkedHashSet();

    /* renamed from: a */
    public void m1363a(C10104c0 c0Var) {
        synchronized (this) {
            this.f37412a.remove(c0Var);
        }
    }

    /* renamed from: b */
    public void m1362b(C10104c0 c0Var) {
        synchronized (this) {
            this.f37412a.add(c0Var);
        }
    }

    /* renamed from: c */
    public boolean m1361c(C10104c0 c0Var) {
        boolean contains;
        synchronized (this) {
            contains = this.f37412a.contains(c0Var);
        }
        return contains;
    }
}
