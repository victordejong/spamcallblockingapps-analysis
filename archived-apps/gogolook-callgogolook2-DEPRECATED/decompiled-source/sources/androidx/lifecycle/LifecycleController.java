package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0007J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0082\bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Landroidx/lifecycle/LifecycleController;", "", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "minState", "Landroidx/lifecycle/Lifecycle$State;", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "parentJob", "Lkotlinx/coroutines/Job;", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/Job;)V", "observer", "Landroidx/lifecycle/LifecycleEventObserver;", "finish", "", "handleDestroy", "lifecycle-runtime-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
@MainThread
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleController.class */
public final class LifecycleController {
    public final DispatchQueue dispatchQueue;
    public final Lifecycle lifecycle;
    public final Lifecycle.State minState;
    public final LifecycleEventObserver observer;

    public LifecycleController(Lifecycle lifecycle, Lifecycle.State state, DispatchQueue dispatchQueue, final Job job) {
        C15149k.m377b(lifecycle, "lifecycle");
        C15149k.m377b(state, "minState");
        C15149k.m377b(dispatchQueue, "dispatchQueue");
        C15149k.m377b(job, "parentJob");
        this.lifecycle = lifecycle;
        this.minState = state;
        this.dispatchQueue = dispatchQueue;
        this.observer = new LifecycleEventObserver() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                Lifecycle.State state2;
                DispatchQueue dispatchQueue2;
                DispatchQueue dispatchQueue3;
                C15149k.m377b(lifecycleOwner, "source");
                C15149k.m377b(event, "<anonymous parameter 1>");
                Lifecycle lifecycle2 = lifecycleOwner.getLifecycle();
                C15149k.m383a((Object) lifecycle2, "source.lifecycle");
                if (lifecycle2.getCurrentState() == Lifecycle.State.DESTROYED) {
                    LifecycleController lifecycleController = LifecycleController.this;
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    lifecycleController.finish();
                    return;
                }
                Lifecycle lifecycle3 = lifecycleOwner.getLifecycle();
                C15149k.m383a((Object) lifecycle3, "source.lifecycle");
                Lifecycle.State currentState = lifecycle3.getCurrentState();
                state2 = LifecycleController.this.minState;
                if (currentState.compareTo(state2) < 0) {
                    dispatchQueue3 = LifecycleController.this.dispatchQueue;
                    dispatchQueue3.pause();
                    return;
                }
                dispatchQueue2 = LifecycleController.this.dispatchQueue;
                dispatchQueue2.resume();
            }
        };
        if (this.lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            finish();
            return;
        }
        this.lifecycle.addObserver(this.observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleDestroy(Job job) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        finish();
    }

    @MainThread
    public final void finish() {
        this.lifecycle.removeObserver(this.observer);
        this.dispatchQueue.finish();
    }
}
