package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzaa;
import com.google.android.gms.internal.icing.zzah;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzs.class */
public abstract class zzs extends TaskApiCall<zzah, Void> implements BaseImplementation.ResultHolder<Status> {
    private TaskCompletionSource<Void> zzfn;

    private zzs() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzs(zzq zzqVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public /* synthetic */ void doExecute(zzah zzahVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.zzfn = taskCompletionSource;
        zza((zzaa) zzahVar.getService());
    }

    public void setFailedResult(Status status) {
        Preconditions.m14532b(!status.m14996d0(), "Failed result must not be success.");
        this.zzfn.m10829b(zzaf.zza(status, status.m14999I()));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public /* synthetic */ void setResult(Status status) {
        Status status2 = status;
        if (status2.m14996d0()) {
            this.zzfn.m10828c(null);
        } else {
            this.zzfn.m10829b(zzaf.zza(status2, "User Action indexing error, please try again."));
        }
    }

    protected abstract void zza(zzaa zzaaVar) throws RemoteException;
}
