package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaie.class */
public final class zzaie extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaie> CREATOR = new zzaid();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f24127a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f24128b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f24129c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final byte[] f24130d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String[] f24131e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String[] f24132f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f24133g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final long f24134h;

    @SafeParcelable.Constructor
    public zzaie(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) String[] strArr2, @SafeParcelable.Param(id = 7) boolean z2, @SafeParcelable.Param(id = 8) long j) {
        this.f24127a = z;
        this.f24128b = str;
        this.f24129c = i;
        this.f24130d = bArr;
        this.f24131e = strArr;
        this.f24132f = strArr2;
        this.f24133g = z2;
        this.f24134h = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 1, this.f24127a);
        SafeParcelWriter.m17221a(parcel, 2, this.f24128b, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f24129c);
        SafeParcelWriter.m17217a(parcel, 4, this.f24130d, false);
        SafeParcelWriter.m17214a(parcel, 5, this.f24131e, false);
        SafeParcelWriter.m17214a(parcel, 6, this.f24132f, false);
        SafeParcelWriter.m17218a(parcel, 7, this.f24133g);
        SafeParcelWriter.m17230a(parcel, 8, this.f24134h);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
