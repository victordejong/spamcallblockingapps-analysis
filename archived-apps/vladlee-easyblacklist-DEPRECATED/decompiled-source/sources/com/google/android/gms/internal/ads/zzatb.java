package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatb.class */
public final class zzatb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatb> CREATOR = new zzata();
    public final String zzdnv;
    public final String zzdnw;

    public zzatb(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    public zzatb(String str, String str2) {
        this.zzdnv = str;
        this.zzdnw = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdnv, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzdnw, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
