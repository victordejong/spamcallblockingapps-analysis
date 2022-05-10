package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavu.class */
public final class zzavu extends zzauw {

    /* renamed from: a */
    public final String f24541a;

    /* renamed from: b */
    public final int f24542b;

    public zzavu(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.mo16298y() : 1);
    }

    public zzavu(zzauv zzauvVar) {
        this(zzauvVar != null ? zzauvVar.f24528a : "", zzauvVar != null ? zzauvVar.f24529b : 1);
    }

    public zzavu(String str, int i) {
        this.f24541a = str;
        this.f24542b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String getType() throws RemoteException {
        return this.f24541a;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    /* renamed from: y */
    public final int mo16293y() throws RemoteException {
        return this.f24542b;
    }
}
