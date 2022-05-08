package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarg.class */
public final class zzarg extends zzgc implements zzare {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzare
    public final int getAmount() {
        Parcel a = m3258a(2, m3259a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzare
    public final String getType() {
        Parcel a = m3258a(1, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
