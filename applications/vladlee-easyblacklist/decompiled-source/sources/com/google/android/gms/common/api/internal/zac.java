package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zac.class */
public abstract class zac {

    /* renamed from: a */
    private final int f6501a;

    public zac(int i) {
        this.f6501a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ Status m5828a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (PlatformVersion.isAtLeastIceCreamSandwichMR1() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void zaa(Status status);

    public abstract void zaa(zaz zazVar, boolean z);

    public abstract void zaa(RuntimeException runtimeException);

    public abstract void zac(GoogleApiManager.zaa<?> zaaVar);
}
