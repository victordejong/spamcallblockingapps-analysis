package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzart.class */
public final class zzart implements RewardItem {

    /* renamed from: a */
    private final zzare f11334a;

    public zzart(zzare zzareVar) {
        this.f11334a = zzareVar;
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final int getAmount() {
        zzare zzareVar = this.f11334a;
        if (zzareVar == null) {
            return 0;
        }
        try {
            return zzareVar.getAmount();
        } catch (RemoteException e) {
            zzayu.zzd("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardItem
    public final String getType() {
        zzare zzareVar = this.f11334a;
        if (zzareVar == null) {
            return null;
        }
        try {
            return zzareVar.getType();
        } catch (RemoteException e) {
            zzayu.zzd("Could not forward getType to RewardItem", e);
            return null;
        }
    }
}
