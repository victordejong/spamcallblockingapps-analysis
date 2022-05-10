package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafh.class */
public final class zzafh extends zzgu implements zzaff {
    public zzafh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaff
    /* renamed from: a */
    public final void mo16773a(zzaew zzaewVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaewVar);
        m12084b(1, W);
    }
}
