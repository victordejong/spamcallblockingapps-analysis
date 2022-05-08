package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��B\u0007¢\u0006\u0004\b\u0016\u0010\u0006J\u000f\u0010\u0002\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u000e\u0010\nR\u0016\u0010\u000f\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/lifecycle/DispatchQueue;", "", "canRun", "()Z", "", "drainQueue", "()V", "Ljava/lang/Runnable;", "runnable", "enqueue", "(Ljava/lang/Runnable;)V", "finish", "pause", "resume", "runOrEnqueue", "finished", "Z", "isDraining", "paused", "Ljava/util/Queue;", "queue", "Ljava/util/Queue;", "<init>", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/DispatchQueue.class */
public final class DispatchQueue {

    /* renamed from: b */
    private boolean f3980b;

    /* renamed from: c */
    private boolean f3981c;

    /* renamed from: a */
    private boolean f3979a = true;

    /* renamed from: d */
    private final Queue<Runnable> f3982d = new ArrayDeque();

    @MainThread
    /* renamed from: b */
    private final boolean m18253b() {
        return this.f3980b || !this.f3979a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    /* renamed from: d */
    public final void m18251d(Runnable runnable) {
        if (this.f3982d.offer(runnable)) {
            m18252c();
            return;
        }
        throw new IllegalStateException("cannot enqueue any more runnables".toString());
    }

    @MainThread
    /* renamed from: c */
    public final void m18252c() {
        if (!this.f3981c) {
            try {
                this.f3981c = true;
                while ((!this.f3982d.isEmpty()) && m18253b()) {
                    Runnable poll = this.f3982d.poll();
                    if (poll != null) {
                        poll.run();
                    }
                }
            } finally {
                this.f3981c = false;
            }
        }
    }

    @MainThread
    /* renamed from: e */
    public final void m18250e() {
        this.f3980b = true;
        m18252c();
    }

    @MainThread
    /* renamed from: f */
    public final void m18249f() {
        this.f3979a = true;
    }

    @MainThread
    /* renamed from: g */
    public final void m18248g() {
        if (this.f3979a) {
            if (!this.f3980b) {
                this.f3979a = false;
                m18252c();
                return;
            }
            throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
        }
    }

    @AnyThread
    @SuppressLint({"WrongThread"})
    @ExperimentalCoroutinesApi
    /* renamed from: h */
    public final void m18247h(@NotNull final Runnable runnable) {
        Intrinsics.m1829f(runnable, "runnable");
        MainCoroutineDispatcher W = Dispatchers.m1267b().mo477W();
        if (W.mo478V(EmptyCoroutineContext.f20645f)) {
            W.mo241t(EmptyCoroutineContext.f20645f, new Runnable() { // from class: androidx.lifecycle.DispatchQueue$runOrEnqueue$$inlined$with$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    DispatchQueue.this.m18251d(runnable);
                }
            });
        } else {
            m18251d(runnable);
        }
    }
}
