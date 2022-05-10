package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzi.class */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new zzh();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f22803a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f22804b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f22805c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f22806d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final float f22807e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final int f22808f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f22809g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f22810h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final boolean f22811i;

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) boolean z3, @SafeParcelable.Param(id = 6) float f, @SafeParcelable.Param(id = 7) int i, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) boolean z5, @SafeParcelable.Param(id = 10) boolean z6) {
        this.f22803a = z;
        this.f22804b = z2;
        this.f22805c = str;
        this.f22806d = z3;
        this.f22807e = f;
        this.f22808f = i;
        this.f22809g = z4;
        this.f22810h = z5;
        this.f22811i = z6;
    }

    public zzi(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 2, this.f22803a);
        SafeParcelWriter.m17218a(parcel, 3, this.f22804b);
        SafeParcelWriter.m17221a(parcel, 4, this.f22805c, false);
        SafeParcelWriter.m17218a(parcel, 5, this.f22806d);
        SafeParcelWriter.m17232a(parcel, 6, this.f22807e);
        SafeParcelWriter.m17231a(parcel, 7, this.f22808f);
        SafeParcelWriter.m17218a(parcel, 8, this.f22809g);
        SafeParcelWriter.m17218a(parcel, 9, this.f22810h);
        SafeParcelWriter.m17218a(parcel, 10, this.f22811i);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
