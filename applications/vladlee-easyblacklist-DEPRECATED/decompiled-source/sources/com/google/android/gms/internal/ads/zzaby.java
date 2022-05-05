package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaby.class */
public final class zzaby extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaby> CREATOR = new zzabx();
    public final int versionCode;
    public final int zzbjw;
    public final int zzbjx;
    public final boolean zzbjy;
    public final int zzbjz;
    public final boolean zzbkb;
    public final boolean zzcvo;
    public final zzyw zzcvp;

    public zzaby(int i, boolean z, int i2, boolean z2, int i3, zzyw zzywVar, boolean z3, int i4) {
        this.versionCode = i;
        this.zzcvo = z;
        this.zzbjw = i2;
        this.zzbjy = z2;
        this.zzbjz = i3;
        this.zzcvp = zzywVar;
        this.zzbkb = z3;
        this.zzbjx = i4;
    }

    public zzaby(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzyw(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjk(), nativeAdOptions.getMediaAspectRatio());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzcvo);
        SafeParcelWriter.writeInt(parcel, 3, this.zzbjw);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzbjy);
        SafeParcelWriter.writeInt(parcel, 5, this.zzbjz);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzcvp, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzbkb);
        SafeParcelWriter.writeInt(parcel, 8, this.zzbjx);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
