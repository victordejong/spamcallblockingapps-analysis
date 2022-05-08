package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.r.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/p.class */
public final class C9156p<TResult> implements AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20853a;

    /* renamed from: b */
    public final Object f20854b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    public AbstractC9130b f20855c;

    public C9156p(@NonNull Executor executor, @NonNull AbstractC9130b bVar) {
        this.f20853a = executor;
        this.f20855c = bVar;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        if (hVar.mo16011c()) {
            synchronized (this.f20854b) {
                if (this.f20855c != null) {
                    this.f20853a.execute(new RunnableC9158r(this));
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        synchronized (this.f20854b) {
            this.f20855c = null;
        }
    }
}
