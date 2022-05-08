package p081h.p203i.p204a.p224e.p293r;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.r.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/x.class */
public final class C9164x<TResult> implements AbstractC9129a0<TResult> {

    /* renamed from: a */
    public final Executor f20871a;

    /* renamed from: b */
    public final Object f20872b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    public AbstractC9137e<? super TResult> f20873c;

    public C9164x(@NonNull Executor executor, @NonNull AbstractC9137e<? super TResult> eVar) {
        this.f20871a = executor;
        this.f20873c = eVar;
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: a */
    public final void mo15977a(@NonNull AbstractC9143h<TResult> hVar) {
        if (hVar.mo16009e()) {
            synchronized (this.f20872b) {
                if (this.f20873c != null) {
                    this.f20871a.execute(new RunnableC9163w(this, hVar));
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9129a0
    /* renamed from: c */
    public final void mo15975c() {
        synchronized (this.f20872b) {
            this.f20873c = null;
        }
    }
}
