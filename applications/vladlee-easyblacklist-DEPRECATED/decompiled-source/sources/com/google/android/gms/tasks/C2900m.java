package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/m.class */
final class C2900m<TResult> implements AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17406a;

    /* renamed from: b */
    private final Object f17407b = new Object();

    /* renamed from: c */
    private OnSuccessListener<? super TResult> f17408c;

    public C2900m(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f17406a = executor;
        this.f17408c = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        synchronized (this.f17407b) {
            this.f17408c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        if (task.isSuccessful()) {
            synchronized (this.f17407b) {
                if (this.f17408c != null) {
                    this.f17406a.execute(new RunnableC2901n(this, task));
                }
            }
        }
    }
}
