package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: com.google.firebase.iid.l */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/l.class */
abstract class AbstractC3221l<T> {

    /* renamed from: a */
    final int f19123a;

    /* renamed from: b */
    final TaskCompletionSource<T> f19124b = new TaskCompletionSource<>();

    /* renamed from: c */
    final int f19125c = 1;

    /* renamed from: d */
    final Bundle f19126d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3221l(int i, Bundle bundle) {
        this.f19123a = i;
        this.f19126d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo470a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m471a(C3223n nVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(nVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f19124b.setException(nVar);
    }

    public String toString() {
        int i = this.f19125c;
        int i2 = this.f19123a;
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=false}");
        return sb.toString();
    }
}
