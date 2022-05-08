package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatc.class */
public final class zzatc extends zzase {

    /* renamed from: a */
    private final String f11350a;

    /* renamed from: b */
    private final int f11351b;

    public zzatc(RewardItem rewardItem) {
        this(rewardItem != null ? rewardItem.getType() : "", rewardItem != null ? rewardItem.getAmount() : 1);
    }

    public zzatc(zzasd zzasdVar) {
        this(zzasdVar != null ? zzasdVar.type : "", zzasdVar != null ? zzasdVar.zzdno : 1);
    }

    public zzatc(String str, int i) {
        this.f11350a = str;
        this.f11351b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzasf
    public final int getAmount() {
        return this.f11351b;
    }

    @Override // com.google.android.gms.internal.ads.zzasf
    public final String getType() {
        return this.f11350a;
    }
}
