package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zau;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zal();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f30236a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final ConnectionResult f30237b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final zau f30238c;

    public zam(int i) {
        this(new ConnectionResult(8, null), null);
    }

    @SafeParcelable.Constructor
    public zam(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ConnectionResult connectionResult, @SafeParcelable.Param(id = 3) zau zauVar) {
        this.f30236a = i;
        this.f30237b = connectionResult;
        this.f30238c = zauVar;
    }

    public zam(ConnectionResult connectionResult, zau zauVar) {
        this(1, connectionResult, null);
    }

    /* renamed from: f */
    public final ConnectionResult m8628f() {
        return this.f30237b;
    }

    /* renamed from: i */
    public final zau m8627i() {
        return this.f30238c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f30236a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f30237b, i, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f30238c, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
