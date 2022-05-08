package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/e.class */
final class C2892e<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17387a;

    /* renamed from: b */
    private final Continuation<TResult, Task<TContinuationResult>> f17388b;

    /* renamed from: c */
    private final C2908v<TContinuationResult> f17389c;

    public C2892e(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation, C2908v<TContinuationResult> vVar) {
        this.f17387a = executor;
        this.f17388b = continuation;
        this.f17389c = vVar;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        this.f17387a.execute(new RunnableC2893f(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.f17389c.m1560a();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f17389c.m1559a(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f17389c.m1558a((C2908v<TContinuationResult>) tcontinuationresult);
    }
}
