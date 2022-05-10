package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.Geofence;
import java.util.Locale;
@VisibleForTesting
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbh.class */
public final class zzbh extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzbh> CREATOR = new zzbi();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f29380a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f29381b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final short f29382c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final double f29383d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final double f29384e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final float f29385f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f29386g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f29387h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final int f29388i;

    @SafeParcelable.Constructor
    public zzbh(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 7) int i, @SafeParcelable.Param(id = 3) short s, @SafeParcelable.Param(id = 4) double d, @SafeParcelable.Param(id = 5) double d2, @SafeParcelable.Param(id = 6) float f, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 8) int i2, @SafeParcelable.Param(id = 9) int i3) {
        if (str == null || str.length() > 100) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "requestId is null or too long: ".concat(valueOf) : new String("requestId is null or too long: "));
        } else if (f <= 0.0f) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("invalid radius: ");
            sb.append(f);
            throw new IllegalArgumentException(sb.toString());
        } else if (d > 90.0d || d < -90.0d) {
            StringBuilder sb2 = new StringBuilder(42);
            sb2.append("invalid latitude: ");
            sb2.append(d);
            throw new IllegalArgumentException(sb2.toString());
        } else if (d2 > 180.0d || d2 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(43);
            sb3.append("invalid longitude: ");
            sb3.append(d2);
            throw new IllegalArgumentException(sb3.toString());
        } else {
            int i4 = i & 7;
            if (i4 != 0) {
                this.f29382c = s;
                this.f29380a = str;
                this.f29383d = d;
                this.f29384e = d2;
                this.f29385f = f;
                this.f29381b = j;
                this.f29386g = i4;
                this.f29387h = i2;
                this.f29388i = i3;
                return;
            }
            StringBuilder sb4 = new StringBuilder(46);
            sb4.append("No supported transition specified: ");
            sb4.append(i);
            throw new IllegalArgumentException(sb4.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzbh)) {
            return false;
        }
        zzbh zzbhVar = (zzbh) obj;
        return this.f29385f == zzbhVar.f29385f && this.f29383d == zzbhVar.f29383d && this.f29384e == zzbhVar.f29384e && this.f29382c == zzbhVar.f29382c;
    }

    /* renamed from: f */
    public final String m10488f() {
        return this.f29380a;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f29383d);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f29384e);
        return ((((((((i + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.f29385f)) * 31) + this.f29382c) * 31) + this.f29386g;
    }

    public final String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", this.f29382c != 1 ? null : "CIRCLE", this.f29380a.replaceAll("\\p{C}", "?"), Integer.valueOf(this.f29386g), Double.valueOf(this.f29383d), Double.valueOf(this.f29384e), Float.valueOf(this.f29385f), Integer.valueOf(this.f29387h / 1000), Integer.valueOf(this.f29388i), Long.valueOf(this.f29381b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, m10488f(), false);
        SafeParcelWriter.m17230a(parcel, 2, this.f29381b);
        SafeParcelWriter.m17219a(parcel, 3, this.f29382c);
        SafeParcelWriter.m17233a(parcel, 4, this.f29383d);
        SafeParcelWriter.m17233a(parcel, 5, this.f29384e);
        SafeParcelWriter.m17232a(parcel, 6, this.f29385f);
        SafeParcelWriter.m17231a(parcel, 7, this.f29386g);
        SafeParcelWriter.m17231a(parcel, 8, this.f29387h);
        SafeParcelWriter.m17231a(parcel, 9, this.f29388i);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
