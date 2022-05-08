package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018��B'\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0082\b¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Landroidx/lifecycle/LifecycleController;", "", "finish", "()V", "Lkotlinx/coroutines/Job;", "parentJob", "handleDestroy", "(Lkotlinx/coroutines/Job;)V", "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Landroidx/lifecycle/Lifecycle$State;", "Landroidx/lifecycle/LifecycleEventObserver;", "observer", "Landroidx/lifecycle/LifecycleEventObserver;", "<init>", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@MainThread
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleController.class */
public final class LifecycleController {

    /* renamed from: a */
    private final LifecycleEventObserver f3989a;

    /* renamed from: b */
    private final Lifecycle f3990b;

    /* renamed from: c */
    private final Lifecycle.State f3991c;

    /* renamed from: d */
    private final DispatchQueue f3992d;

    public LifecycleController(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State minState, @NotNull DispatchQueue dispatchQueue, @NotNull final Job parentJob) {
        Intrinsics.m1829f(lifecycle, "lifecycle");
        Intrinsics.m1829f(minState, "minState");
        Intrinsics.m1829f(dispatchQueue, "dispatchQueue");
        Intrinsics.m1829f(parentJob, "parentJob");
        this.f3990b = lifecycle;
        this.f3991c = minState;
        this.f3992d = dispatchQueue;
        this.f3989a = new LifecycleEventObserver() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            /* renamed from: c */
            public final void mo16457c(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
                Lifecycle.State state;
                DispatchQueue dispatchQueue2;
                DispatchQueue dispatchQueue3;
                Intrinsics.m1829f(source, "source");
                Intrinsics.m1829f(event, "<anonymous parameter 1>");
                Lifecycle lifecycle2 = source.getLifecycle();
                Intrinsics.m1833b(lifecycle2, "source.lifecycle");
                if (lifecycle2.mo18230b() == Lifecycle.State.DESTROYED) {
                    LifecycleController lifecycleController = LifecycleController.this;
                    Job.DefaultImpls.m1226a(parentJob, null, 1, null);
                    lifecycleController.m18237c();
                    return;
                }
                Lifecycle lifecycle3 = source.getLifecycle();
                Intrinsics.m1833b(lifecycle3, "source.lifecycle");
                Lifecycle.State b = lifecycle3.mo18230b();
                state = LifecycleController.this.f3991c;
                if (b.compareTo(state) < 0) {
                    dispatchQueue3 = LifecycleController.this.f3992d;
                    dispatchQueue3.m18249f();
                    return;
                }
                dispatchQueue2 = LifecycleController.this.f3992d;
                dispatchQueue2.m18248g();
            }
        };
        if (this.f3990b.mo18230b() == Lifecycle.State.DESTROYED) {
            Job.DefaultImpls.m1226a(parentJob, null, 1, null);
            m18237c();
            return;
        }
        this.f3990b.mo18231a(this.f3989a);
    }

    @MainThread
    /* renamed from: c */
    public final void m18237c() {
        this.f3990b.mo18229c(this.f3989a);
        this.f3992d.m18250e();
    }
}
