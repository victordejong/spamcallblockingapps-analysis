package p193e.p194a.p619d.p657v.p658k;

import java.util.LinkedHashSet;
import java.util.Set;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.o0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/o0.class */
public final class C11965o0 implements AbstractC11963n0 {

    /* renamed from: a */
    public final Set<Integer> f35123a = new LinkedHashSet();

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11963n0
    /* renamed from: a */
    public void mo23771a(Set<Integer> set) {
        synchronized (this) {
            l.e(set, "peerIds");
            this.f35123a.addAll(set);
        }
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11963n0
    /* renamed from: b */
    public boolean mo23770b(int i) {
        boolean contains;
        synchronized (this) {
            contains = this.f35123a.contains(Integer.valueOf(i));
        }
        return contains;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11963n0
    /* renamed from: c */
    public void mo23769c(Set<Integer> set) {
        synchronized (this) {
            l.e(set, "peerIds");
            this.f35123a.removeAll(set);
        }
    }
}
