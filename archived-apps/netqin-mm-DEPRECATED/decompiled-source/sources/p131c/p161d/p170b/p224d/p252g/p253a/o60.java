package p131c.p161d.p170b.p224d.p252g.p253a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.o60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o60.class */
public final class o60 extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f14297a;

    public o60(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f14297a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != o60.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        o60 o60Var = (o60) obj;
        return this.f14297a == o60Var.f14297a && get() == o60Var.get();
    }

    public final int hashCode() {
        return this.f14297a;
    }
}
