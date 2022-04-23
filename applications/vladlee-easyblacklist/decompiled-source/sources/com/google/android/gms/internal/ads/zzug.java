package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzug.class */
public final class zzug extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzug> CREATOR = new zzui();
    public final Bundle extras;
    public final int versionCode;
    public final int zzabo;
    public final int zzabp;
    public final String zzabq;
    public final boolean zzbkh;
    @Deprecated
    public final long zzcby;
    @Deprecated
    public final int zzcbz;
    public final List<String> zzcca;
    public final boolean zzccb;
    public final String zzccc;
    public final zzys zzccd;
    public final String zzcce;
    public final Bundle zzccf;
    public final Bundle zzccg;
    public final List<String> zzcch;
    public final String zzcci;
    public final String zzccj;
    @Deprecated
    public final boolean zzcck;
    public final List<String> zzccl;
    public final zzua zzccm;
    public final Location zzmi;

    public zzug(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzys zzysVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzua zzuaVar, int i4, String str5, List<String> list3) {
        this.versionCode = i;
        this.zzcby = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzcbz = i2;
        this.zzcca = list;
        this.zzccb = z;
        this.zzabo = i3;
        this.zzbkh = z2;
        this.zzccc = str;
        this.zzccd = zzysVar;
        this.zzmi = location;
        this.zzcce = str2;
        this.zzccf = bundle2 == null ? new Bundle() : bundle2;
        this.zzccg = bundle3;
        this.zzcch = list2;
        this.zzcci = str3;
        this.zzccj = str4;
        this.zzcck = z3;
        this.zzccm = zzuaVar;
        this.zzabp = i4;
        this.zzabq = str5;
        this.zzccl = list3 == null ? new ArrayList<>() : list3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzug)) {
            return false;
        }
        zzug zzugVar = (zzug) obj;
        return this.versionCode == zzugVar.versionCode && this.zzcby == zzugVar.zzcby && Objects.equal(this.extras, zzugVar.extras) && this.zzcbz == zzugVar.zzcbz && Objects.equal(this.zzcca, zzugVar.zzcca) && this.zzccb == zzugVar.zzccb && this.zzabo == zzugVar.zzabo && this.zzbkh == zzugVar.zzbkh && Objects.equal(this.zzccc, zzugVar.zzccc) && Objects.equal(this.zzccd, zzugVar.zzccd) && Objects.equal(this.zzmi, zzugVar.zzmi) && Objects.equal(this.zzcce, zzugVar.zzcce) && Objects.equal(this.zzccf, zzugVar.zzccf) && Objects.equal(this.zzccg, zzugVar.zzccg) && Objects.equal(this.zzcch, zzugVar.zzcch) && Objects.equal(this.zzcci, zzugVar.zzcci) && Objects.equal(this.zzccj, zzugVar.zzccj) && this.zzcck == zzugVar.zzcck && this.zzabp == zzugVar.zzabp && Objects.equal(this.zzabq, zzugVar.zzabq) && Objects.equal(this.zzccl, zzugVar.zzccl);
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzcby), this.extras, Integer.valueOf(this.zzcbz), this.zzcca, Boolean.valueOf(this.zzccb), Integer.valueOf(this.zzabo), Boolean.valueOf(this.zzbkh), this.zzccc, this.zzccd, this.zzmi, this.zzcce, this.zzccf, this.zzccg, this.zzcch, this.zzcci, this.zzccj, Boolean.valueOf(this.zzcck), Integer.valueOf(this.zzabp), this.zzabq, this.zzccl);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeLong(parcel, 2, this.zzcby);
        SafeParcelWriter.writeBundle(parcel, 3, this.extras, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzcbz);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzcca, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzccb);
        SafeParcelWriter.writeInt(parcel, 7, this.zzabo);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbkh);
        SafeParcelWriter.writeString(parcel, 9, this.zzccc, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzccd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzmi, i, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzcce, false);
        SafeParcelWriter.writeBundle(parcel, 13, this.zzccf, false);
        SafeParcelWriter.writeBundle(parcel, 14, this.zzccg, false);
        SafeParcelWriter.writeStringList(parcel, 15, this.zzcch, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzcci, false);
        SafeParcelWriter.writeString(parcel, 17, this.zzccj, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzcck);
        SafeParcelWriter.writeParcelable(parcel, 19, this.zzccm, i, false);
        SafeParcelWriter.writeInt(parcel, 20, this.zzabp);
        SafeParcelWriter.writeString(parcel, 21, this.zzabq, false);
        SafeParcelWriter.writeStringList(parcel, 22, this.zzccl, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
