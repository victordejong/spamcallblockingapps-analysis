package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuy.class */
public final class zzuy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuy> CREATOR = new zzvb();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f28992a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f28993b;

    @SafeParcelable.Constructor
    public zzuy(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f28992a = str;
        this.f28993b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f28992a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f28993b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
