package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.r.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/u.class */
public final class C9161u<TResult> implements AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20864a;

    /* renamed from: b */
    public final Object f20865b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    public AbstractC9134d f20866c;

    public C9161u(@NonNull Executor executor, @NonNull AbstractC9134d dVar) {
        this.f20864a = executor;
        this.f20866c = dVar;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        if (!hVar.mo16009e() && !hVar.mo16011c()) {
            synchronized (this.f20865b) {
                if (this.f20866c != null) {
                    this.f20864a.execute(new RunnableC9162v(this, hVar));
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        synchronized (this.f20865b) {
            this.f20866c = null;
        }
    }
}
