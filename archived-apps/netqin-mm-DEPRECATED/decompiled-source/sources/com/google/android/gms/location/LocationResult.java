package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationResult.class */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<Location> f29736a;

    /* renamed from: b */
    public static final List<Location> f29735b = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new zzac();

    @SafeParcelable.Constructor
    public LocationResult(@SafeParcelable.Param(id = 1) List<Location> list) {
        this.f29736a = list;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.f29736a.size() != this.f29736a.size()) {
            return false;
        }
        Iterator<Location> it = this.f29736a.iterator();
        for (Location location : locationResult.f29736a) {
            if (it.next().getTime() != location.getTime()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final List<Location> m9412f() {
        return this.f29736a;
    }

    public final int hashCode() {
        int i = 17;
        for (Location location : this.f29736a) {
            long time = location.getTime();
            i = (i * 31) + ((int) (time ^ (time >>> 32)));
        }
        return i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f29736a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, m9412f(), false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
