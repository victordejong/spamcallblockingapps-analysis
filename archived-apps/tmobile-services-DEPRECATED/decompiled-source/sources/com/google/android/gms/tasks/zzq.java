package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzq.class */
public interface zzq<TResult> {
    void cancel();

    void onComplete(@NonNull Task<TResult> task);
}
