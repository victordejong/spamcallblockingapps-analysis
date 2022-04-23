package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
/* renamed from: com.google.android.gms.tasks.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/p.class */
final class RunnableC2903p implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17414a;

    /* renamed from: b */
    private final /* synthetic */ C2902o f17415b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2903p(C2902o oVar, Task task) {
        this.f17415b = oVar;
        this.f17414a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SuccessContinuation successContinuation;
        try {
            successContinuation = this.f17415b.f17412b;
            Task then = successContinuation.then(this.f17414a.getResult());
            if (then == null) {
                this.f17415b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            then.addOnSuccessListener(TaskExecutors.f17369a, this.f17415b);
            then.addOnFailureListener(TaskExecutors.f17369a, this.f17415b);
            then.addOnCanceledListener(TaskExecutors.f17369a, this.f17415b);
        } catch (RuntimeExecutionException e) {
            boolean z = e.getCause() instanceof Exception;
            C2902o oVar = this.f17415b;
            if (z) {
                oVar.onFailure((Exception) e.getCause());
            } else {
                oVar.onFailure(e);
            }
        } catch (CancellationException e2) {
            this.f17415b.onCanceled();
        } catch (Exception e3) {
            this.f17415b.onFailure(e3);
        }
    }
}
