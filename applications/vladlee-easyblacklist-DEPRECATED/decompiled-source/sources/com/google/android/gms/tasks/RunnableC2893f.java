package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/f.class */
final class RunnableC2893f implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17390a;

    /* renamed from: b */
    private final /* synthetic */ C2892e f17391b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2893f(C2892e eVar, Task task) {
        this.f17391b = eVar;
        this.f17390a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2908v vVar;
        C2908v vVar2;
        Continuation continuation;
        try {
            continuation = this.f17391b.f17388b;
            Task task = (Task) continuation.then(this.f17390a);
            if (task == null) {
                this.f17391b.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            task.addOnSuccessListener(TaskExecutors.f17369a, this.f17391b);
            task.addOnFailureListener(TaskExecutors.f17369a, this.f17391b);
            task.addOnCanceledListener(TaskExecutors.f17369a, this.f17391b);
        } catch (RuntimeExecutionException e) {
            boolean z = e.getCause() instanceof Exception;
            vVar = this.f17391b.f17389c;
            if (z) {
                vVar.m1559a((Exception) e.getCause());
            } else {
                vVar.m1559a((Exception) e);
            }
        } catch (Exception e2) {
            vVar2 = this.f17391b.f17389c;
            vVar2.m1559a(e2);
        }
    }
}
