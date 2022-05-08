package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DefaultExecutor;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\b\u0017\u0018��2\u00020\u0001B'\b\u0016\u0012\b\b\u0002\u0010(\u001a\u00020\u0002\u0012\b\b\u0002\u00102\u001a\u00020\u0002\u0012\b\b\u0002\u00103\u001a\u00020#¢\u0006\u0004\b5\u00106B\u001d\b\u0017\u0012\b\b\u0002\u0010(\u001a\u00020\u0002\u0012\b\b\u0002\u00102\u001a\u00020\u0002¢\u0006\u0004\b5\u00107B)\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u001e\u0012\b\b\u0002\u00103\u001a\u00020#¢\u0006\u0004\b5\u00108J\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0019\u001a\u00020\u00072\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u000e\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H��¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\n\u0010\u0011\u001a\u00060\u000fj\u0002`\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u0013J\u0015\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u0007H��¢\u0006\u0004\b\u001c\u0010\tJ\u0017\u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH��¢\u0006\u0004\b \u0010!J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020\u0007H��¢\u0006\u0004\b&\u0010\tR\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020,8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0016\u00100\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010)R\u0016\u00103\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u00069"}, d2 = {"Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "", "parallelism", "Lkotlinx/coroutines/CoroutineDispatcher;", "blocking", "(I)Lkotlinx/coroutines/CoroutineDispatcher;", "", "close", "()V", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "createScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "Lkotlinx/coroutines/scheduling/TaskContext;", "", "tailDispatch", "dispatchWithContext$kotlinx_coroutines_core", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V", "dispatchWithContext", "dispatchYield", "limited", "restore$kotlinx_coroutines_core", "restore", "", "timeout", "shutdown$kotlinx_coroutines_core", "(J)V", "shutdown", "", "toString", "()Ljava/lang/String;", "usePrivateScheduler$kotlinx_coroutines_core", "usePrivateScheduler", "corePoolSize", "I", "coroutineScheduler", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "executor", "idleWorkerKeepAliveNs", "J", "maxPoolSize", "schedulerName", "Ljava/lang/String;", "<init>", "(IILjava/lang/String;)V", "(II)V", "(IIJLjava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher.class */
public class ExperimentalCoroutineDispatcher extends ExecutorCoroutineDispatcher {

    /* renamed from: g */
    private CoroutineScheduler f23991g;

    /* renamed from: h */
    private final int f23992h;

    /* renamed from: i */
    private final int f23993i;

    /* renamed from: j */
    private final long f23994j;

    /* renamed from: k */
    private final String f23995k;

    public ExperimentalCoroutineDispatcher(int i, int i2, long j, @NotNull String str) {
        this.f23992h = i;
        this.f23993i = i2;
        this.f23994j = j;
        this.f23995k = str;
        this.f23991g = m351X();
    }

    public ExperimentalCoroutineDispatcher(int i, int i2, @NotNull String str) {
        this(i, i2, TasksKt.f24011d, str);
    }

    public /* synthetic */ ExperimentalCoroutineDispatcher(int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? TasksKt.f24009b : i, (i3 & 2) != 0 ? TasksKt.f24010c : i2, (i3 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    /* renamed from: X */
    private final CoroutineScheduler m351X() {
        return new CoroutineScheduler(this.f23992h, this.f23993i, this.f23994j, this.f23995k);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: N */
    public void mo349N(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.m379k(this.f23991g, runnable, null, true, 2, null);
        } catch (RejectedExecutionException e) {
            DefaultExecutor.f21150m.mo349N(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    /* renamed from: W */
    public Executor mo348W() {
        return this.f23991g;
    }

    /* renamed from: Y */
    public final void m350Y(@NotNull Runnable runnable, @NotNull TaskContext taskContext, boolean z) {
        try {
            this.f23991g.m380i(runnable, taskContext, z);
        } catch (RejectedExecutionException e) {
            DefaultExecutor.f21150m.m1243z0(this.f23991g.m382e(runnable, taskContext));
        }
    }

    public void close() {
        this.f23991g.close();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    public void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        try {
            CoroutineScheduler.m379k(this.f23991g, runnable, null, false, 6, null);
        } catch (RejectedExecutionException e) {
            DefaultExecutor.f21150m.mo241t(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return super.toString() + "[scheduler = " + this.f23991g + ']';
    }
}
