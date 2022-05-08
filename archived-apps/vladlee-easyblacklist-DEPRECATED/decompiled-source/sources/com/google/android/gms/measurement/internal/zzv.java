package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzv.class */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new zzy();
    public String zza;
    public String zzb;
    public zzkl zzc;
    public long zzd;
    public boolean zze;
    public String zzf;
    public zzan zzg;
    public long zzh;
    public zzan zzi;
    public long zzj;
    public zzan zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        this.zza = zzvVar.zza;
        this.zzb = zzvVar.zzb;
        this.zzc = zzvVar.zzc;
        this.zzd = zzvVar.zzd;
        this.zze = zzvVar.zze;
        this.zzf = zzvVar.zzf;
        this.zzg = zzvVar.zzg;
        this.zzh = zzvVar.zzh;
        this.zzi = zzvVar.zzi;
        this.zzj = zzvVar.zzj;
        this.zzk = zzvVar.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(String str, String str2, zzkl zzklVar, long j, boolean z, String str3, zzan zzanVar, long j2, zzan zzanVar2, long j3, zzan zzanVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzklVar;
        this.zzd = j;
        this.zze = z;
        this.zzf = str3;
        this.zzg = zzanVar;
        this.zzh = j2;
        this.zzi = zzanVar2;
        this.zzj = j3;
        this.zzk = zzanVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.zzh);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzj);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
