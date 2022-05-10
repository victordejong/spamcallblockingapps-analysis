package p131c.p161d.p170b.p224d.p252g.p253a;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: c.d.b.d.g.a.p60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p60.class */
public final class p60 {

    /* renamed from: a */
    public final ConcurrentHashMap<o60, List<Throwable>> f14389a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f14390b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m26596a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f14390b.poll();
        while (poll != null) {
            this.f14389a.remove(poll);
            poll = this.f14390b.poll();
        }
        List<Throwable> list = this.f14389a.get(new o60(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f14389a.putIfAbsent(new o60(th, this.f14390b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}
