package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f22990a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f22991b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f22992c;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 2) long j2) {
        this.f22990a = z;
        this.f22991b = j;
        this.f22992c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return this.f22990a == zzcVar.f22990a && this.f22991b == zzcVar.f22991b && this.f22992c == zzcVar.f22992c;
    }

    public final int hashCode() {
        return Objects.m17294a(Boolean.valueOf(this.f22990a), Long.valueOf(this.f22991b), Long.valueOf(this.f22992c));
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f22990a + ",collectForDebugStartTimeMillis: " + this.f22991b + ",collectForDebugExpiryTimeMillis: " + this.f22992c + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 1, this.f22990a);
        SafeParcelWriter.m17230a(parcel, 2, this.f22992c);
        SafeParcelWriter.m17230a(parcel, 3, this.f22991b);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
