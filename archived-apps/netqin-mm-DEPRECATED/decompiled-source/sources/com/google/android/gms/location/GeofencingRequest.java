package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.location.zzbh;
import java.util.ArrayList;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/GeofencingRequest.class */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zzq();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<zzbh> f29719a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29720b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29721c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/GeofencingRequest$Builder.class */
    public static final class Builder {
        public Builder() {
            new ArrayList();
        }
    }

    @SafeParcelable.Constructor
    public GeofencingRequest(@SafeParcelable.Param(id = 1) List<zzbh> list, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) String str) {
        this.f29719a = list;
        this.f29720b = i;
        this.f29721c = str;
    }

    /* renamed from: f */
    public int m9415f() {
        return this.f29720b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GeofencingRequest[");
        sb.append("geofences=");
        sb.append(this.f29719a);
        int i = this.f29720b;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(", initialTrigger=");
        sb2.append(i);
        sb2.append(", ");
        sb.append(sb2.toString());
        String valueOf = String.valueOf(this.f29721c);
        sb.append(valueOf.length() != 0 ? "tag=".concat(valueOf) : new String("tag="));
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, this.f29719a, false);
        SafeParcelWriter.m17231a(parcel, 2, m9415f());
        SafeParcelWriter.m17221a(parcel, 3, this.f29721c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
