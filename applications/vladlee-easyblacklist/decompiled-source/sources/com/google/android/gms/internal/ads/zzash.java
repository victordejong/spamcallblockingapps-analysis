package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzash.class */
public final class zzash extends zzgc implements zzasf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzash(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzasf
    public final int getAmount() {
        Parcel a = m3258a(2, m3259a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzasf
    public final String getType() {
        Parcel a = m3258a(1, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
