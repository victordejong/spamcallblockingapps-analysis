package com.google.firebase.appindexing.internal;

import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzj.class */
public final class zzj {
    private final zzy zzfc;
    private final TaskCompletionSource<Void> zzfd = new TaskCompletionSource<>();
    final /* synthetic */ zzk zzfe;

    public zzj(zzk zzkVar, zzy zzyVar) {
        this.zzfe = zzkVar;
        this.zzfc = zzyVar;
    }

    public final void execute() {
        Queue queue;
        int i;
        GoogleApi googleApi;
        queue = this.zzfe.zzff;
        synchronized (queue) {
            i = this.zzfe.zzfg;
            Preconditions.m14520n(i == 0);
            this.zzfe.zzfg = 1;
        }
        googleApi = this.zzfe.zzfa;
        googleApi.doWrite(new zzl(this)).mo10792d(this.zzfe, new OnFailureListener(this) { // from class: com.google.firebase.appindexing.internal.zzm
            private final zzj zzfi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfi = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zzfi.zza(exc);
            }
        });
    }

    public final Task<Void> getTask() {
        return this.zzfd.m10830a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Exception exc) {
        Queue queue;
        Queue queue2;
        zzj zzjVar;
        Queue queue3;
        Queue queue4;
        queue = this.zzfe.zzff;
        synchronized (queue) {
            queue2 = this.zzfe.zzff;
            if (queue2.peek() == this) {
                queue3 = this.zzfe.zzff;
                queue3.remove();
                this.zzfe.zzfg = 0;
                queue4 = this.zzfe.zzff;
                zzjVar = (zzj) queue4.peek();
            } else {
                zzjVar = null;
            }
        }
        this.zzfd.m10827d(exc);
        if (zzjVar != null) {
            zzjVar.execute();
        }
    }
}
