package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationSettingsStates.class */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new zzai();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f29746a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f29747b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f29748c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f29749d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f29750e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f29751f;

    @SafeParcelable.Constructor
    public LocationSettingsStates(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) boolean z2, @SafeParcelable.Param(id = 3) boolean z3, @SafeParcelable.Param(id = 4) boolean z4, @SafeParcelable.Param(id = 5) boolean z5, @SafeParcelable.Param(id = 6) boolean z6) {
        this.f29746a = z;
        this.f29747b = z2;
        this.f29748c = z3;
        this.f29749d = z4;
        this.f29750e = z5;
        this.f29751f = z6;
    }

    /* renamed from: B */
    public final boolean m9409B() {
        return this.f29747b;
    }

    /* renamed from: f */
    public final boolean m9408f() {
        return this.f29751f;
    }

    /* renamed from: i */
    public final boolean m9407i() {
        return this.f29748c;
    }

    /* renamed from: u */
    public final boolean m9406u() {
        return this.f29749d;
    }

    /* renamed from: v */
    public final boolean m9405v() {
        return this.f29746a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 1, m9405v());
        SafeParcelWriter.m17218a(parcel, 2, m9409B());
        SafeParcelWriter.m17218a(parcel, 3, m9407i());
        SafeParcelWriter.m17218a(parcel, 4, m9406u());
        SafeParcelWriter.m17218a(parcel, 5, m9404y());
        SafeParcelWriter.m17218a(parcel, 6, m9408f());
        SafeParcelWriter.m17234a(parcel, a);
    }

    /* renamed from: y */
    public final boolean m9404y() {
        return this.f29750e;
    }
}
