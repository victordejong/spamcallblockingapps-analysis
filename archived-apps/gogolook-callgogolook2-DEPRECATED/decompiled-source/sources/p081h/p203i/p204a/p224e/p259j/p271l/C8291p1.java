package p081h.p203i.p204a.p224e.p259j.p271l;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: h.i.a.e.j.l.p1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p1.class */
public final class C8291p1 extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f19116a;

    public C8291p1(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f19116a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C8291p1.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C8291p1 p1Var = (C8291p1) obj;
        return this.f19116a == p1Var.f19116a && get() == p1Var.get();
    }

    public final int hashCode() {
        return this.f19116a;
    }
}
