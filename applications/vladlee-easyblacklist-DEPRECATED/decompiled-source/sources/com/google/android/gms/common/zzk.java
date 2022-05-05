package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzk.class */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();

    /* renamed from: a */
    private final String f7019a;
    @Nullable

    /* renamed from: b */
    private final AbstractBinderC1646e f7020b;

    /* renamed from: c */
    private final boolean f7021c;

    /* renamed from: d */
    private final boolean f7022d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(String str, @Nullable IBinder iBinder, boolean z, boolean z2) {
        this.f7019a = str;
        this.f7020b = m5549a(iBinder);
        this.f7021c = z;
        this.f7022d = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(String str, @Nullable AbstractBinderC1646e eVar, boolean z, boolean z2) {
        this.f7019a = str;
        this.f7020b = eVar;
        this.f7021c = z;
        this.f7022d = z2;
    }

    @Nullable
    /* renamed from: a */
    private static AbstractBinderC1646e m5549a(@Nullable IBinder iBinder) {
        BinderC1647f fVar = null;
        if (iBinder == null) {
            return null;
        }
        try {
            IObjectWrapper zzb = zzj.zzb(iBinder).zzb();
            byte[] bArr = zzb == null ? null : (byte[]) ObjectWrapper.unwrap(zzb);
            if (bArr != null) {
                fVar = new BinderC1647f(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return fVar;
        } catch (RemoteException e) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f7019a, false);
        AbstractBinderC1646e eVar = this.f7020b;
        if (eVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            iBinder = null;
        } else {
            iBinder = eVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 2, iBinder, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f7021c);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f7022d);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
