package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavm.class */
public final class zzavm implements RewardItem {

    /* renamed from: a */
    public final zzaux f24534a;

    public zzavm(zzaux zzauxVar) {
        this.f24534a = zzauxVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzaux zzauxVar = this.f24534a;
        if (zzauxVar == null) {
            return null;
        }
        try {
            return zzauxVar.getType();
        } catch (RemoteException e) {
            zzbbq.m15853c("Could not forward getType to RewardItem", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    /* renamed from: y */
    public final int mo16298y() {
        zzaux zzauxVar = this.f24534a;
        if (zzauxVar == null) {
            return 0;
        }
        try {
            return zzauxVar.mo16293y();
        } catch (RemoteException e) {
            zzbbq.m15853c("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }
}
