package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/c.class */
final class C2890c<TResult, TContinuationResult> implements AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17382a;

    /* renamed from: b */
    private final Continuation<TResult, TContinuationResult> f17383b;

    /* renamed from: c */
    private final C2908v<TContinuationResult> f17384c;

    public C2890c(Executor executor, Continuation<TResult, TContinuationResult> continuation, C2908v<TContinuationResult> vVar) {
        this.f17382a = executor;
        this.f17383b = continuation;
        this.f17384c = vVar;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        this.f17382a.execute(new RunnableC2891d(this, task));
    }
}
