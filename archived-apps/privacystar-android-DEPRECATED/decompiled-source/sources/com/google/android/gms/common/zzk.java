package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;
@SafeParcelable.Class(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzk.class */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();
    @SafeParcelable.Field(getter = "getAllowTestKeys", m344id = 3)
    private final boolean zzaa;
    @SafeParcelable.Field(getter = "getCallingPackage", m344id = 1)
    private final String zzy;
    @Nullable
    @SafeParcelable.Field(getter = "getCallingCertificateBinder", m344id = 2, type = "android.os.IBinder")
    private final zze zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzk(@SafeParcelable.Param(m343id = 1) String str, @SafeParcelable.Param(m343id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(m343id = 3) boolean z) {
        this.zzy = str;
        this.zzz = zza(iBinder);
        this.zzaa = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(String str, @Nullable zze zzeVar, boolean z) {
        this.zzy = str;
        this.zzz = zzeVar;
        this.zzaa = z;
    }

    @Nullable
    private static zze zza(@Nullable IBinder iBinder) {
        zzf zzfVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            IObjectWrapper zzb = zzj.zzb(iBinder).zzb();
            byte[] bArr = zzb == null ? null : (byte[]) ObjectWrapper.unwrap(zzb);
            if (bArr != null) {
                zzfVar = new zzf(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return zzfVar;
        } catch (RemoteException e) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzy, false);
        if (this.zzz == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            iBinder = null;
        } else {
            iBinder = this.zzz.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 2, iBinder, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzaa);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
