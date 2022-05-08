package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.r.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/b0.class */
public final class C9131b0<TResult> {

    /* renamed from: a */
    public final Object f20817a = new Object();
    @GuardedBy("mLock")

    /* renamed from: b */
    public Queue<AbstractC9129a0<TResult>> f20818b;
    @GuardedBy("mLock")

    /* renamed from: c */
    public boolean f20819c;

    /* renamed from: a */
    public final void m16047a(@NonNull AbstractC9129a0<TResult> a0Var) {
        synchronized (this.f20817a) {
            if (this.f20818b == null) {
                this.f20818b = new ArrayDeque();
            }
            this.f20818b.add(a0Var);
        }
    }

    /* renamed from: a */
    public final void m16046a(@NonNull AbstractC9143h<TResult> hVar) {
        AbstractC9129a0<TResult> poll;
        synchronized (this.f20817a) {
            if (this.f20818b != null && !this.f20819c) {
                this.f20819c = true;
                while (true) {
                    synchronized (this.f20817a) {
                        poll = this.f20818b.poll();
                        if (poll == null) {
                            this.f20819c = false;
                            return;
                        }
                    }
                    poll.mo15977a(hVar);
                }
            }
        }
    }
}
