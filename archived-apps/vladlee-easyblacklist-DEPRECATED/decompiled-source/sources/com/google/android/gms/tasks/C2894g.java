package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/g.class */
final class C2894g<TResult> implements AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17392a;

    /* renamed from: b */
    private final Object f17393b = new Object();

    /* renamed from: c */
    private OnCanceledListener f17394c;

    public C2894g(Executor executor, OnCanceledListener onCanceledListener) {
        this.f17392a = executor;
        this.f17394c = onCanceledListener;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        synchronized (this.f17393b) {
            this.f17394c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task task) {
        if (task.isCanceled()) {
            synchronized (this.f17393b) {
                if (this.f17394c != null) {
                    this.f17392a.execute(new RunnableC2895h(this));
                }
            }
        }
    }
}
