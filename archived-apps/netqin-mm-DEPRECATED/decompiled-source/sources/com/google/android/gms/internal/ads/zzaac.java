package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaac.class */
public final class zzaac extends zzyg {

    /* renamed from: a */
    public final OnAdMetadataChangedListener f23624a;

    @Override // com.google.android.gms.internal.ads.zzyh
    /* renamed from: O */
    public final void mo11119O() throws RemoteException {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f23624a;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.m17905O();
        }
    }
}
