package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.AbstractBinderC7101x;
import p081h.p203i.p204a.p224e.p235d.BinderC6787a0;
import p081h.p203i.p204a.p224e.p235d.C6798f0;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractBinderC7017r0;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new C6798f0();

    /* renamed from: a */
    public final String f6669a;
    @Nullable

    /* renamed from: b */
    public final AbstractBinderC7101x f6670b;

    /* renamed from: c */
    public final boolean f6671c;

    /* renamed from: d */
    public final boolean f6672d;

    public zzj(String str, @Nullable IBinder iBinder, boolean z, boolean z2) {
        this.f6669a = str;
        this.f6670b = m31899a(iBinder);
        this.f6671c = z;
        this.f6672d = z2;
    }

    public zzj(String str, @Nullable AbstractBinderC7101x xVar, boolean z, boolean z2) {
        this.f6669a = str;
        this.f6670b = xVar;
        this.f6671c = z;
        this.f6672d = z2;
    }

    @Nullable
    /* renamed from: a */
    public static AbstractBinderC7101x m31899a(@Nullable IBinder iBinder) {
        BinderC6787a0 a0Var = null;
        if (iBinder == null) {
            return null;
        }
        try {
            AbstractC7106b E0 = AbstractBinderC7017r0.m21299a(iBinder).mo21079E0();
            byte[] bArr = E0 == null ? null : (byte[]) BinderC7110d.m21059A(E0);
            if (bArr != null) {
                a0Var = new BinderC6787a0(bArr);
            } else {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
            }
            return a0Var;
        } catch (RemoteException e) {
            Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6669a, false);
        AbstractBinderC7101x xVar = this.f6670b;
        if (xVar == null) {
            xVar = null;
        } else {
            xVar.asBinder();
        }
        C7031b.m21222a(parcel, 2, (IBinder) xVar, false);
        C7031b.m21212a(parcel, 3, this.f6671c);
        C7031b.m21212a(parcel, 4, this.f6672d);
        C7031b.m21229a(parcel, a);
    }
}
