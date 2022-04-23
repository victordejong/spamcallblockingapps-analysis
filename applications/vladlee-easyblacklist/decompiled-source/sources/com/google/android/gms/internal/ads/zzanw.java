package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanw.class */
public final class zzanw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzanw> CREATOR = new zzanv();

    /* renamed from: a */
    private final int f11071a;

    /* renamed from: b */
    private final int f11072b;

    /* renamed from: c */
    private final int f11073c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanw(int i, int i2, int i3) {
        this.f11071a = i;
        this.f11072b = i2;
        this.f11073c = i3;
    }

    public static zzanw zza(VersionInfo versionInfo) {
        return new zzanw(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final String toString() {
        int i = this.f11071a;
        int i2 = this.f11072b;
        int i3 = this.f11073c;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11071a);
        SafeParcelWriter.writeInt(parcel, 2, this.f11072b);
        SafeParcelWriter.writeInt(parcel, 3, this.f11073c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
