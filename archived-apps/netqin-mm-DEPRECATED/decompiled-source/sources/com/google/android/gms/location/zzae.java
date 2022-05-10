package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzae.class */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new zzaf();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f29756a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f29757b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29758c;

    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 1) String str2, @SafeParcelable.Param(id = 2) String str3) {
        this.f29758c = str;
        this.f29756a = str2;
        this.f29757b = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f29756a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f29757b, false);
        SafeParcelWriter.m17221a(parcel, 5, this.f29758c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
