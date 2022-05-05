package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq extends zza implements zzeo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        Parcel a = m2472a();
        zzb.zza(a, zzmVar);
        zzb.zza(a, z);
        Parcel a2 = m2471a(7, a);
        ArrayList createTypedArrayList = a2.createTypedArrayList(zzkl.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, zzmVar);
        Parcel a2 = m2471a(16, a);
        ArrayList createTypedArrayList = a2.createTypedArrayList(zzv.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        Parcel a2 = m2471a(17, a);
        ArrayList createTypedArrayList = a2.createTypedArrayList(zzv.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        zzb.zza(a, z);
        Parcel a2 = m2471a(15, a);
        ArrayList createTypedArrayList = a2.createTypedArrayList(zzkl.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, z);
        zzb.zza(a, zzmVar);
        Parcel a2 = m2471a(14, a);
        ArrayList createTypedArrayList = a2.createTypedArrayList(zzkl.CREATOR);
        a2.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j, String str, String str2, String str3) {
        Parcel a = m2472a();
        a.writeLong(j);
        a.writeString(str);
        a.writeString(str2);
        a.writeString(str3);
        m2470b(10, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzanVar);
        zzb.zza(a, zzmVar);
        m2470b(1, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Parcel a = m2472a();
        zzb.zza(a, zzanVar);
        a.writeString(str);
        a.writeString(str2);
        m2470b(5, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzklVar);
        zzb.zza(a, zzmVar);
        m2470b(2, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzmVar);
        m2470b(4, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzvVar);
        m2470b(13, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzvVar);
        zzb.zza(a, zzmVar);
        m2470b(12, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Parcel a = m2472a();
        zzb.zza(a, zzanVar);
        a.writeString(str);
        Parcel a2 = m2471a(9, a);
        byte[] createByteArray = a2.createByteArray();
        a2.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzmVar);
        m2470b(6, a);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzmVar);
        Parcel a2 = m2471a(11, a);
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzmVar);
        m2470b(18, a);
    }
}
