package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxc.class */
public final class zzaxc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaxc> CREATOR = new zzaxe();
    public final int errorCode;
    public final String zzdtr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxc(String str, int i) {
        this.zzdtr = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaxc zza(Throwable th, int i) {
        return new zzaxc(th.getMessage(), i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdtr, false);
        SafeParcelWriter.writeInt(parcel, 2, this.errorCode);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
