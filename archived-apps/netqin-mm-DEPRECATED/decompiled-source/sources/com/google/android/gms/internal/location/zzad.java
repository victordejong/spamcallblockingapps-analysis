package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzad.class */
public final class zzad extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();
    @SafeParcelable.Field

    /* renamed from: a */
    public final Status f29358a;

    static {
        new zzad(Status.f23076e);
    }

    @SafeParcelable.Constructor
    public zzad(@SafeParcelable.Param(id = 1) Status status) {
        this.f29358a = status;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: d */
    public final Status mo8632d() {
        return this.f29358a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 1, (Parcelable) mo8632d(), i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
