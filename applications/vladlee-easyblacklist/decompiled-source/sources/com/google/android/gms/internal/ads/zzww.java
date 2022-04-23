package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzww.class */
public final class zzww implements MuteThisAdReason {

    /* renamed from: a */
    private final String f15606a;

    /* renamed from: b */
    private zzwr f15607b;

    public zzww(zzwr zzwrVar) {
        String str;
        this.f15607b = zzwrVar;
        try {
            str = zzwrVar.getDescription();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            str = null;
        }
        this.f15606a = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f15606a;
    }

    public final String toString() {
        return this.f15606a;
    }

    public final zzwr zzpi() {
        return this.f15607b;
    }
}
