package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class C2902o<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17411a;

    /* renamed from: b */
    private final SuccessContinuation<TResult, TContinuationResult> f17412b;

    /* renamed from: c */
    private final C2908v<TContinuationResult> f17413c;

    public C2902o(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation, C2908v<TContinuationResult> vVar) {
        this.f17411a = executor;
        this.f17412b = successContinuation;
        this.f17413c = vVar;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        this.f17411a.execute(new RunnableC2903p(this, task));
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        this.f17413c.m1560a();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        this.f17413c.m1559a(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f17413c.m1558a((C2908v<TContinuationResult>) tcontinuationresult);
    }
}
