package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {

    /* renamed from: a */
    private final C2908v<TResult> f17368a = new C2908v<>();

    public TaskCompletionSource() {
    }

    public TaskCompletionSource(CancellationToken cancellationToken) {
        cancellationToken.onCanceledRequested(new C2906t(this));
    }

    public Task<TResult> getTask() {
        return this.f17368a;
    }

    public void setException(Exception exc) {
        this.f17368a.m1559a(exc);
    }

    public void setResult(TResult tresult) {
        this.f17368a.m1558a((C2908v<TResult>) tresult);
    }

    public boolean trySetException(Exception exc) {
        return this.f17368a.m1556b(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.f17368a.m1555b((C2908v<TResult>) tresult);
    }
}
