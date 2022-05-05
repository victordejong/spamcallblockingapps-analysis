package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauu.class */
public final class zzauu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzauu> CREATOR = new zzaux();
    public final String zzblx;
    public final String zzbqz;
    public final zzuj zzdpu;

    public zzauu(String str, String str2, zzuj zzujVar) {
        this.zzbqz = str;
        this.zzblx = str2;
        this.zzdpu = zzujVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzbqz, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzblx, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzdpu, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
