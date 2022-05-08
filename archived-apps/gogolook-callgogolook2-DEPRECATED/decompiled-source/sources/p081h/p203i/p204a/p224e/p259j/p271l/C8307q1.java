package p081h.p203i.p204a.p224e.p259j.p271l;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: h.i.a.e.j.l.q1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q1.class */
public final class C8307q1 {

    /* renamed from: a */
    public final ConcurrentHashMap<C8291p1, List<Throwable>> f19255a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f19256b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m18198a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f19256b.poll();
        while (poll != null) {
            this.f19255a.remove(poll);
            poll = this.f19256b.poll();
        }
        List<Throwable> list = this.f19255a.get(new C8291p1(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f19255a.putIfAbsent(new C8291p1(th, this.f19256b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}
