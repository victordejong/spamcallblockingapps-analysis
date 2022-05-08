package p081h.p203i.p325c.p326a0;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: h.i.c.a0.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/a0/d.class */
public class C9387d {

    /* renamed from: b */
    public static volatile C9387d f21427b;

    /* renamed from: a */
    public final Set<AbstractC9389f> f21428a = new HashSet();

    /* renamed from: b */
    public static C9387d m15331b() {
        C9387d dVar = f21427b;
        C9387d dVar2 = dVar;
        if (dVar == null) {
            synchronized (C9387d.class) {
                try {
                    C9387d dVar3 = f21427b;
                    dVar2 = dVar3;
                    if (dVar3 == null) {
                        dVar2 = new C9387d();
                        f21427b = dVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar2;
    }

    /* renamed from: a */
    public Set<AbstractC9389f> m15332a() {
        Set<AbstractC9389f> unmodifiableSet;
        synchronized (this.f21428a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f21428a);
        }
        return unmodifiableSet;
    }
}
