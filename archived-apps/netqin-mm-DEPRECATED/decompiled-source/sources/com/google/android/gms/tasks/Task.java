package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/Task.class */
public abstract class Task<TResult> {
    /* renamed from: a */
    public <TContinuationResult> Task<TContinuationResult> mo8616a(Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: a */
    public Task<TResult> mo8615a(OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: a */
    public abstract Task<TResult> mo8614a(OnFailureListener onFailureListener);

    /* renamed from: a */
    public abstract Task<TResult> mo8613a(OnSuccessListener<? super TResult> onSuccessListener);

    /* renamed from: a */
    public <TContinuationResult> Task<TContinuationResult> mo8612a(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: a */
    public <TContinuationResult> Task<TContinuationResult> mo8611a(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: a */
    public Task<TResult> mo8610a(Executor executor, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: a */
    public abstract Task<TResult> mo8609a(Executor executor, OnFailureListener onFailureListener);

    /* renamed from: a */
    public abstract Task<TResult> mo8608a(Executor executor, OnSuccessListener<? super TResult> onSuccessListener);

    /* renamed from: a */
    public <TContinuationResult> Task<TContinuationResult> mo8607a(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: a */
    public abstract Exception mo8617a();

    /* renamed from: b */
    public <TContinuationResult> Task<TContinuationResult> mo8605b(Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: b */
    public <TContinuationResult> Task<TContinuationResult> mo8604b(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: b */
    public abstract TResult mo8606b();

    /* renamed from: c */
    public abstract boolean mo8603c();

    /* renamed from: d */
    public abstract boolean mo8602d();

    /* renamed from: e */
    public abstract boolean mo8601e();
}
