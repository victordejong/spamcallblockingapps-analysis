package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzae.class */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new zzah();
    @SafeParcelable.Field

    /* renamed from: a */
    public final long f29402a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f29403b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f29404c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f29405d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f29406e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f29407f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final Bundle f29408g;

    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) Bundle bundle) {
        this.f29402a = j;
        this.f29403b = j2;
        this.f29404c = z;
        this.f29405d = str;
        this.f29406e = str2;
        this.f29407f = str3;
        this.f29408g = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17230a(parcel, 1, this.f29402a);
        SafeParcelWriter.m17230a(parcel, 2, this.f29403b);
        SafeParcelWriter.m17218a(parcel, 3, this.f29404c);
        SafeParcelWriter.m17221a(parcel, 4, this.f29405d, false);
        SafeParcelWriter.m17221a(parcel, 5, this.f29406e, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f29407f, false);
        SafeParcelWriter.m17229a(parcel, 7, this.f29408g, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
