package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/d.class */
final class RunnableC2891d implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Task f17385a;

    /* renamed from: b */
    private final /* synthetic */ C2890c f17386b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2891d(C2890c cVar, Task task) {
        this.f17386b = cVar;
        this.f17385a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2908v vVar;
        C2908v vVar2;
        Continuation continuation;
        C2908v vVar3;
        C2908v vVar4;
        if (this.f17385a.isCanceled()) {
            vVar4 = this.f17386b.f17384c;
            vVar4.m1560a();
            return;
        }
        try {
            continuation = this.f17386b.f17383b;
            Object then = continuation.then(this.f17385a);
            vVar3 = this.f17386b.f17384c;
            vVar3.m1558a((C2908v) then);
        } catch (RuntimeExecutionException e) {
            boolean z = e.getCause() instanceof Exception;
            vVar = this.f17386b.f17384c;
            if (z) {
                vVar.m1559a((Exception) e.getCause());
            } else {
                vVar.m1559a((Exception) e);
            }
        } catch (Exception e2) {
            vVar2 = this.f17386b.f17384c;
            vVar2.m1559a(e2);
        }
    }
}
