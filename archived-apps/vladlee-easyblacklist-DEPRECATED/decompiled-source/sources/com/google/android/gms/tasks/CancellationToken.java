package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/CancellationToken.class */
public abstract class CancellationToken {
    public abstract boolean isCancellationRequested();

    public abstract CancellationToken onCanceledRequested(OnTokenCanceledListener onTokenCanceledListener);
}
