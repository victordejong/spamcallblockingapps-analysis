package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/k.class */
final class C2898k<TResult> implements AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17401a;

    /* renamed from: b */
    private final Object f17402b = new Object();

    /* renamed from: c */
    private OnFailureListener f17403c;

    public C2898k(Executor executor, OnFailureListener onFailureListener) {
        this.f17401a = executor;
        this.f17403c = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        synchronized (this.f17402b) {
            this.f17403c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        if (!task.isSuccessful() && !task.isCanceled()) {
            synchronized (this.f17402b) {
                if (this.f17403c != null) {
                    this.f17401a.execute(new RunnableC2899l(this, task));
                }
            }
        }
    }
}
