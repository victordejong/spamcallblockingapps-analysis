package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8505f;
import p081h.p203i.p204a.p224e.p259j.p274o.C8509h;
import p081h.p203i.p204a.p224e.p259j.p274o.C8530x;
import p081h.p203i.p204a.p224e.p280k.AbstractBinderC8833j0;
import p081h.p203i.p204a.p224e.p280k.AbstractBinderC8839m0;
import p081h.p203i.p204a.p224e.p280k.AbstractC8831i0;
import p081h.p203i.p204a.p224e.p280k.AbstractC8837l0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbf.class */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new C8530x();

    /* renamed from: a */
    public int f6868a;

    /* renamed from: b */
    public zzbd f6869b;

    /* renamed from: c */
    public AbstractC8837l0 f6870c;

    /* renamed from: d */
    public PendingIntent f6871d;

    /* renamed from: e */
    public AbstractC8831i0 f6872e;

    /* renamed from: f */
    public AbstractC8505f f6873f;

    public zzbf(int i, zzbd zzbdVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        AbstractC8505f fVar;
        this.f6868a = i;
        this.f6869b = zzbdVar;
        this.f6870c = iBinder == null ? null : AbstractBinderC8839m0.m16882a(iBinder);
        this.f6871d = pendingIntent;
        this.f6872e = iBinder2 == null ? null : AbstractBinderC8833j0.m16884a(iBinder2);
        if (iBinder3 == null) {
            fVar = null;
        } else if (iBinder3 == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            fVar = queryLocalInterface instanceof AbstractC8505f ? (AbstractC8505f) queryLocalInterface : new C8509h(iBinder3);
        }
        this.f6873f = fVar;
    }

    /* renamed from: a */
    public static zzbf m31835a(AbstractC8831i0 i0Var, @Nullable AbstractC8505f fVar) {
        return new zzbf(2, null, null, null, i0Var.asBinder(), fVar != null ? fVar.asBinder() : null);
    }

    /* renamed from: a */
    public static zzbf m31834a(AbstractC8837l0 l0Var, @Nullable AbstractC8505f fVar) {
        return new zzbf(2, null, l0Var.asBinder(), null, null, fVar != null ? fVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6868a);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6869b, i, false);
        AbstractC8837l0 l0Var = this.f6870c;
        IBinder iBinder = null;
        C7031b.m21222a(parcel, 3, l0Var == null ? null : l0Var.asBinder(), false);
        C7031b.m21220a(parcel, 4, (Parcelable) this.f6871d, i, false);
        AbstractC8831i0 i0Var = this.f6872e;
        C7031b.m21222a(parcel, 5, i0Var == null ? null : i0Var.asBinder(), false);
        AbstractC8505f fVar = this.f6873f;
        if (fVar != null) {
            iBinder = fVar.asBinder();
        }
        C7031b.m21222a(parcel, 6, iBinder, false);
        C7031b.m21229a(parcel, a);
    }
}
