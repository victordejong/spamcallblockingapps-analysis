package com.google.firebase.appindexing.internal;

import android.os.Handler;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.libs.punchclock.threads.TracingHandler;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzk.class */
public final class zzk implements OnCompleteListener<Void>, Executor {
    @NonNull
    private final Handler handler;
    @NonNull
    private final GoogleApi<?> zzfa;
    @GuardedBy
    private final Queue<zzj> zzff = new ArrayDeque();
    @GuardedBy
    private int zzfg = 0;

    public zzk(@NonNull GoogleApi<?> googleApi) {
        this.zzfa = googleApi;
        this.handler = new TracingHandler(googleApi.getLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.handler.post(runnable);
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Void> task) {
        zzj zzjVar;
        synchronized (this.zzff) {
            if (this.zzfg == 2) {
                zzjVar = this.zzff.peek();
                Preconditions.m14520n(zzjVar != null);
            } else {
                zzjVar = null;
            }
            this.zzfg = 0;
        }
        if (zzjVar != null) {
            zzjVar.execute();
        }
    }

    public final Task<Void> zzb(zzy zzyVar) {
        boolean isEmpty;
        zzj zzjVar = new zzj(this, zzyVar);
        Task<Void> task = zzjVar.getTask();
        task.mo10793c(this, this);
        synchronized (this.zzff) {
            isEmpty = this.zzff.isEmpty();
            this.zzff.add(zzjVar);
        }
        if (isEmpty) {
            zzjVar.execute();
        }
        return task;
    }
}
