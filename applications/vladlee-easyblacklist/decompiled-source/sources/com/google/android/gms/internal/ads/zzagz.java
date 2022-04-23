package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagz.class */
public final class zzagz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzagz> CREATOR = new zzahc();
    public final int versionCode;
    public final int zzbjx;
    public final int zzcyi;
    public final String zzcyj;

    public zzagz(int i, int i2, String str, int i3) {
        this.versionCode = i;
        this.zzcyi = i2;
        this.zzcyj = str;
        this.zzbjx = i3;
    }

    public zzagz(zzahl zzahlVar) {
        this(2, 1, zzahlVar.zzrw(), zzahlVar.getMediaAspectRatio());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzcyi);
        SafeParcelWriter.writeString(parcel, 2, this.zzcyj, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzbjx);
        SafeParcelWriter.writeInt(parcel, 1000, this.versionCode);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
