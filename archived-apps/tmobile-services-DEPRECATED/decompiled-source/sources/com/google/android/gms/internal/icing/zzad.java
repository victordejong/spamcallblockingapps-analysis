package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.firebase.appindexing.internal.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzad.class */
public final class zzad extends zzb implements zzaa {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    }

    @Override // com.google.android.gms.internal.icing.zzaa
    /* renamed from: f0 */
    public final void mo14057f0(zzac zzacVar, zza[] zzaVarArr) throws RemoteException {
        Parcel zza = zza();
        zzd.m13971b(zza, zzacVar);
        zza.writeTypedArray(zzaVarArr, 0);
        zzb(7, zza);
    }

    @Override // com.google.android.gms.internal.icing.zzaa
    /* renamed from: u0 */
    public final void mo14056u0(zzac zzacVar, String str, zzw[] zzwVarArr) throws RemoteException {
        Parcel zza = zza();
        zzd.m13971b(zza, zzacVar);
        zza.writeString(null);
        zza.writeTypedArray(zzwVarArr, 0);
        zzb(1, zza);
    }
}
