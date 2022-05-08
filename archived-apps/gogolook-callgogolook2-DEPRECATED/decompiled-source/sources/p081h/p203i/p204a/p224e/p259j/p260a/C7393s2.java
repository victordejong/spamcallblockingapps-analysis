package p081h.p203i.p204a.p224e.p259j.p260a;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: h.i.a.e.j.a.s2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s2.class */
public final class C7393s2 {

    /* renamed from: a */
    public final ConcurrentHashMap<C7405t2, List<Throwable>> f17448a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f17449b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m20685a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f17449b.poll();
        while (poll != null) {
            this.f17448a.remove(poll);
            poll = this.f17449b.poll();
        }
        return this.f17448a.get(new C7405t2(th, null));
    }
}
