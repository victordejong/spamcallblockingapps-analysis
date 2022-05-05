package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasu.class */
public final class zzasu implements RewardItem {

    /* renamed from: a */
    private final zzasf f11343a;

    public zzasu(zzasf zzasfVar) {
        this.f11343a = zzasfVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzasf zzasfVar = this.f11343a;
        if (zzasfVar == null) {
            return 0;
        }
        try {
            return zzasfVar.getAmount();
        } catch (RemoteException e) {
            zzayu.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final String getType() {
        zzasf zzasfVar = this.f11343a;
        if (zzasfVar == null) {
            return null;
        }
        try {
            return zzasfVar.getType();
        } catch (RemoteException e) {
            zzayu.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
