package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zza.class */
final class zza extends CancellationToken {
    private final zzu<Void> zza = new zzu<>();

    public final void cancel() {
        this.zza.trySetResult(null);
    }

    @Override // com.google.android.gms.tasks.CancellationToken
    public final boolean isCancellationRequested() {
        return this.zza.isComplete();
    }

    @Override // com.google.android.gms.tasks.CancellationToken
    public final CancellationToken onCanceledRequested(@NonNull OnTokenCanceledListener onTokenCanceledListener) {
        this.zza.addOnSuccessListener(new zzb(this, onTokenCanceledListener));
        return this;
    }
}
