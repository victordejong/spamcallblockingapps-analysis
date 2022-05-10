package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zab.class */
public abstract class zab {

    /* renamed from: a */
    public final int f23244a;

    public zab(int i) {
        this.f23244a = i;
    }

    /* renamed from: b */
    public static Status m17526b(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: a */
    public abstract void mo17487a(Status status);

    /* renamed from: a */
    public abstract void mo17486a(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException;

    /* renamed from: a */
    public abstract void mo17485a(zav zavVar, boolean z);

    /* renamed from: a */
    public abstract void mo17484a(Exception exc);
}
