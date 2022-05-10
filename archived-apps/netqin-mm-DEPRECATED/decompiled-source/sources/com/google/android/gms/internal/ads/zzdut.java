package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdut.class */
public final class zzdut extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdut> CREATOR = new zzduw();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f27855a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f27856b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f27857c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f27858d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f27859e;

    @SafeParcelable.Constructor
    public zzdut(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2) {
        this.f27855a = i;
        this.f27856b = i2;
        this.f27857c = str;
        this.f27858d = str2;
        this.f27859e = i3;
    }

    public zzdut(int i, zzgo zzgoVar, String str, String str2) {
        this(1, i, zzgoVar.zzv(), str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27855a);
        SafeParcelWriter.m17231a(parcel, 2, this.f27856b);
        SafeParcelWriter.m17221a(parcel, 3, this.f27857c, false);
        SafeParcelWriter.m17221a(parcel, 4, this.f27858d, false);
        SafeParcelWriter.m17231a(parcel, 5, this.f27859e);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
