package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaw.class */
public final class zaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaw> CREATOR = new zav();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23482a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23483b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f23484c;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: d */
    public final Scope[] f23485d;

    @SafeParcelable.Constructor
    public zaw(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Scope[] scopeArr) {
        this.f23482a = i;
        this.f23483b = i2;
        this.f23484c = i3;
        this.f23485d = scopeArr;
    }

    public zaw(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23482a);
        SafeParcelWriter.m17231a(parcel, 2, this.f23483b);
        SafeParcelWriter.m17231a(parcel, 3, this.f23484c);
        SafeParcelWriter.m17215a(parcel, 4, (Parcelable[]) this.f23485d, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
