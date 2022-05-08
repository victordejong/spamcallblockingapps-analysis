package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzr.class */
public final class zzr<TResult> {
    private final Object mLock = new Object();
    @GuardedBy("mLock")
    private Queue<zzq<TResult>> zzt;
    @GuardedBy("mLock")
    private boolean zzu;

    public final void zza(@NonNull Task<TResult> task) {
        zzq<TResult> poll;
        synchronized (this.mLock) {
            if (this.zzt != null && !this.zzu) {
                this.zzu = true;
                while (true) {
                    synchronized (this.mLock) {
                        poll = this.zzt.poll();
                        if (poll == null) {
                            this.zzu = false;
                            return;
                        }
                    }
                    poll.onComplete(task);
                }
            }
        }
    }

    public final void zza(@NonNull zzq<TResult> zzqVar) {
        synchronized (this.mLock) {
            if (this.zzt == null) {
                this.zzt = new ArrayDeque();
            }
            this.zzt.add(zzqVar);
        }
    }
}
