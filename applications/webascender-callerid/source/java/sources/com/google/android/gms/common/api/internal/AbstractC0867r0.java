package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C0834f;
/* renamed from: com.google.android.gms.common.api.internal.r0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/r0.class */
public abstract class AbstractC0867r0 {

    /* renamed from: a */
    public final int f3446a;

    public AbstractC0867r0(int i) {
        this.f3446a = i;
    }

    /* renamed from: f */
    public static Status m3512f(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    /* renamed from: b */
    public abstract void m3516b(Status status);

    /* renamed from: c */
    public abstract void m3515c(C0834f.a<?> aVar) throws DeadObjectException;

    /* renamed from: d */
    public abstract void m3514d(C0873t2 c0873t2, boolean z);

    /* renamed from: e */
    public abstract void m3513e(Exception exc);
}
