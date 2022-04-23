package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzua.class */
public final class zzua extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzua> CREATOR = new zztz();
    public final String zzcbu;
    public final String zzcbv;

    public zzua(String str, String str2) {
        this.zzcbu = str;
        this.zzcbv = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzcbu, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzcbv, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
