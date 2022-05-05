package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public final class zzkl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkl> CREATOR = new zzkk();

    /* renamed from: a */
    private final int f17305a;

    /* renamed from: b */
    private final Float f17306b;
    public final String zza;
    public final long zzb;
    public final Long zzc;
    public final String zzd;
    public final String zze;
    public final Double zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f17305a = i;
        this.zza = str;
        this.zzb = j;
        this.zzc = l;
        Double d2 = null;
        this.f17306b = null;
        if (i == 1) {
            this.zzf = f != null ? Double.valueOf(f.doubleValue()) : d2;
        } else {
            this.zzf = d;
        }
        this.zzd = str2;
        this.zze = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(C2843hp hpVar) {
        this(hpVar.f17036c, hpVar.f17037d, hpVar.f17038e, hpVar.f17035b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(String str) {
        Preconditions.checkNotEmpty(str);
        this.f17305a = 2;
        this.zza = str;
        this.zzb = 0L;
        this.zzc = null;
        this.f17306b = null;
        this.zzf = null;
        this.zzd = null;
        this.zze = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.f17305a = 2;
        this.zza = str;
        this.zzb = j;
        this.zze = str2;
        if (obj == null) {
            this.zzc = null;
            this.f17306b = null;
            this.zzf = null;
            this.zzd = null;
        } else if (obj instanceof Long) {
            this.zzc = (Long) obj;
            this.f17306b = null;
            this.zzf = null;
            this.zzd = null;
        } else if (obj instanceof String) {
            this.zzc = null;
            this.f17306b = null;
            this.zzf = null;
            this.zzd = (String) obj;
        } else if (obj instanceof Double) {
            this.zzc = null;
            this.f17306b = null;
            this.zzf = (Double) obj;
            this.zzd = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f17305a);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.writeLongObject(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 7, this.zze, false);
        SafeParcelWriter.writeDoubleObject(parcel, 8, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Object zza() {
        Long l = this.zzc;
        if (l != null) {
            return l;
        }
        Double d = this.zzf;
        if (d != null) {
            return d;
        }
        String str = this.zzd;
        if (str != null) {
            return str;
        }
        return null;
    }
}
