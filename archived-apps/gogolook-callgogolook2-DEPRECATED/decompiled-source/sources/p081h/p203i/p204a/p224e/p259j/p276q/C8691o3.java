package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.o3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o3.class */
public class C8691o3 {

    /* renamed from: b */
    public static volatile C8691o3 f19902b;

    /* renamed from: c */
    public static final C8691o3 f19903c = new C8691o3(true);

    /* renamed from: a */
    public final Map<C8692a, AbstractC8568c4.C8572d<?, ?>> f19904a;

    /* renamed from: h.i.a.e.j.q.o3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o3$a.class */
    public static final class C8692a {

        /* renamed from: a */
        public final Object f19905a;

        /* renamed from: b */
        public final int f19906b;

        public C8692a(Object obj, int i) {
            this.f19905a = obj;
            this.f19906b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C8692a)) {
                return false;
            }
            C8692a aVar = (C8692a) obj;
            return this.f19905a == aVar.f19905a && this.f19906b == aVar.f19906b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f19905a) * 65535) + this.f19906b;
        }
    }

    static {
        m17281b();
    }

    public C8691o3() {
        this.f19904a = new HashMap();
    }

    public C8691o3(boolean z) {
        this.f19904a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C8691o3 m17283a() {
        return AbstractC8550a4.m17842a(C8691o3.class);
    }

    /* renamed from: b */
    public static Class<?> m17281b() {
        try {
            return Class.forName("h.i.g.n");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static C8691o3 m17280c() {
        return C8682n3.m17343b();
    }

    /* renamed from: d */
    public static C8691o3 m17279d() {
        C8691o3 o3Var = f19902b;
        C8691o3 o3Var2 = o3Var;
        if (o3Var == null) {
            synchronized (C8691o3.class) {
                try {
                    C8691o3 o3Var3 = f19902b;
                    o3Var2 = o3Var3;
                    if (o3Var3 == null) {
                        o3Var2 = C8682n3.m17342c();
                        f19902b = o3Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o3Var2;
    }

    /* renamed from: a */
    public final <ContainingType extends AbstractC8648j5> AbstractC8568c4.C8572d<ContainingType, ?> m17282a(ContainingType containingtype, int i) {
        return (AbstractC8568c4.C8572d<ContainingType, ?>) this.f19904a.get(new C8692a(containingtype, i));
    }
}
