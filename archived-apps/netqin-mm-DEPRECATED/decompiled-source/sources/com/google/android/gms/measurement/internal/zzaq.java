package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzat();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f29812a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zzap f29813b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29814c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final long f29815d;

    public zzaq(zzaq zzaqVar, long j) {
        Preconditions.m17288a(zzaqVar);
        this.f29812a = zzaqVar.f29812a;
        this.f29813b = zzaqVar.f29813b;
        this.f29814c = zzaqVar.f29814c;
        this.f29815d = j;
    }

    @SafeParcelable.Constructor
    public zzaq(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) zzap zzapVar, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) long j) {
        this.f29812a = str;
        this.f29813b = zzapVar;
        this.f29814c = str2;
        this.f29815d = j;
    }

    public final String toString() {
        String str = this.f29814c;
        String str2 = this.f29812a;
        String valueOf = String.valueOf(this.f29813b);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f29812a, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f29813b, i, false);
        SafeParcelWriter.m17221a(parcel, 4, this.f29814c, false);
        SafeParcelWriter.m17230a(parcel, 5, this.f29815d);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
