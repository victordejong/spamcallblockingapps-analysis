package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzc.class */
public final class zzc<TResult, TContinuationResult> implements zzq<TResult> {

    /* renamed from: a */
    private final Executor f9854a;

    /* renamed from: b */
    private final Continuation<TResult, TContinuationResult> f9855b;

    /* renamed from: c */
    private final zzu<TContinuationResult> f9856c;

    public zzc(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation, @NonNull zzu<TContinuationResult> zzuVar) {
        this.f9854a = executor;
        this.f9855b = continuation;
        this.f9856c = zzuVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        this.f9854a.execute(new zzd(this, task));
    }
}
