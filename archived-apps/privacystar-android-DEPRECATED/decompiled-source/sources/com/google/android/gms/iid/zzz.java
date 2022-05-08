package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzz.class */
abstract class zzz<T> {
    final int what;
    final int zzck;
    final TaskCompletionSource<T> zzcl = new TaskCompletionSource<>();
    final Bundle zzcm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(int i, int i2, Bundle bundle) {
        this.zzck = i;
        this.what = i2;
        this.zzcm = bundle;
    }

    public String toString() {
        int i = this.what;
        int i2 = this.zzck;
        zzu();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=false}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(zzaa zzaaVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzaaVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzcl.setException(zzaaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzh(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zzu();
}
