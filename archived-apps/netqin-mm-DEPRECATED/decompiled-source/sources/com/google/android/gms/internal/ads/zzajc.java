package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajc.class */
public final class zzajc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajc> CREATOR = new zzajb();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f24147a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f24148b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f24149c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f24150d;

    @SafeParcelable.Constructor
    public zzajc(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i3) {
        this.f24147a = i;
        this.f24148b = i2;
        this.f24149c = str;
        this.f24150d = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f24148b);
        SafeParcelWriter.m17221a(parcel, 2, this.f24149c, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f24150d);
        SafeParcelWriter.m17231a(parcel, 1000, this.f24147a);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
