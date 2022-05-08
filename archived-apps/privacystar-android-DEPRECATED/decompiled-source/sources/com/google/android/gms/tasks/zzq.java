package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzq.class */
interface zzq<TResult> {
    void cancel();

    void onComplete(@NonNull Task<TResult> task);
}
