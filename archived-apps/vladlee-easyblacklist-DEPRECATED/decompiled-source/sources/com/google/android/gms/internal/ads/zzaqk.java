package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqk.class */
public final class zzaqk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqk> CREATOR = new zzaqn();
    public final ApplicationInfo applicationInfo;
    public final String packageName;
    public final zzazb zzdij;
    public final PackageInfo zzdip;
    public final List<String> zzdiz;
    public final String zzdjj;
    public final Bundle zzdlu;
    public final boolean zzdlv;
    public final String zzdlw;
    public zzdbe zzdlx;
    public String zzdly;

    public zzaqk(Bundle bundle, zzazb zzazbVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, boolean z, String str3, zzdbe zzdbeVar, String str4) {
        this.zzdlu = bundle;
        this.zzdij = zzazbVar;
        this.packageName = str;
        this.applicationInfo = applicationInfo;
        this.zzdiz = list;
        this.zzdip = packageInfo;
        this.zzdjj = str2;
        this.zzdlv = z;
        this.zzdlw = str3;
        this.zzdlx = zzdbeVar;
        this.zzdly = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zzdlu, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdij, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.applicationInfo, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.packageName, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzdiz, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzdip, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdjj, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzdlv);
        SafeParcelWriter.writeString(parcel, 9, this.zzdlw, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzdlx, i, false);
        SafeParcelWriter.writeString(parcel, 11, this.zzdly, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
