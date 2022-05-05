package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i.class */
final class C2896i<TResult> implements AbstractC2904q<TResult> {

    /* renamed from: a */
    private final Executor f17396a;

    /* renamed from: b */
    private final Object f17397b = new Object();

    /* renamed from: c */
    private OnCompleteListener<TResult> f17398c;

    public C2896i(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f17396a = executor;
        this.f17398c = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1564a() {
        synchronized (this.f17397b) {
            this.f17398c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC2904q
    /* renamed from: a */
    public final void mo1563a(Task<TResult> task) {
        synchronized (this.f17397b) {
            if (this.f17398c != null) {
                this.f17396a.execute(new RunnableC2897j(this, task));
            }
        }
    }
}
