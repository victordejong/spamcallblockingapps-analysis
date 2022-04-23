package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagn.class */
public final class zzagn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzagn> CREATOR = new zzagq();
    public final String description;
    public final String zzcyc;
    public final boolean zzcyd;
    public final int zzcye;

    public zzagn(String str, boolean z, int i, String str2) {
        this.zzcyc = str;
        this.zzcyd = z;
        this.zzcye = i;
        this.description = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzcyc, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzcyd);
        SafeParcelWriter.writeInt(parcel, 3, this.zzcye);
        SafeParcelWriter.writeString(parcel, 4, this.description, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
