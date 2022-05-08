package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7580f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f7581g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final int f7582h;

    @SafeParcelable.Constructor
    public FavaDiagnosticsEntity(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.f7580f = i;
        this.f7581g = str;
        this.f7582h = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7580f);
        SafeParcelWriter.m14447q(parcel, 2, this.f7581g, false);
        SafeParcelWriter.m14453k(parcel, 3, this.f7582h);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
