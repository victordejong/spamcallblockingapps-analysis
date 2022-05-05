package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaru.class */
public final class zzaru extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaru> CREATOR = new zzarx();
    public final String zzbqz;
    public final zzug zzdio;

    public zzaru(zzug zzugVar, String str) {
        this.zzdio = zzugVar;
        this.zzbqz = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdio, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzbqz, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
