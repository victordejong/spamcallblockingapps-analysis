package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zas;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zaj();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f30234a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zas f30235b;

    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) zas zasVar) {
        this.f30234a = i;
        this.f30235b = zasVar;
    }

    public zak(zas zasVar) {
        this(1, zasVar);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f30234a);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f30235b, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
