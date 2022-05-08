package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.C8531y;
import p081h.p203i.p204a.p224e.p280k.AbstractC8819d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbh.class */
public final class zzbh extends AbstractSafeParcelable implements AbstractC8819d {
    public static final Parcelable.Creator<zzbh> CREATOR = new C8531y();

    /* renamed from: a */
    public final String f6874a;

    /* renamed from: b */
    public final long f6875b;

    /* renamed from: c */
    public final short f6876c;

    /* renamed from: d */
    public final double f6877d;

    /* renamed from: e */
    public final double f6878e;

    /* renamed from: f */
    public final float f6879f;

    /* renamed from: g */
    public final int f6880g;

    /* renamed from: h */
    public final int f6881h;

    /* renamed from: i */
    public final int f6882i;

    public zzbh(String str, int i, short s, double d, double d2, float f, long j, int i2, int i3) {
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
                this.f6876c = s;
                this.f6874a = str;
                this.f6877d = d;
                this.f6878e = d2;
                this.f6879f = f;
                this.f6875b = j;
                this.f6880g = i4;
                this.f6881h = i2;
                this.f6882i = i3;
                return;
            }
            StringBuilder sb4 = new StringBuilder(46);
            sb4.append("No supported transition specified: ");
            sb4.append(i);
            throw new IllegalArgumentException(sb4.toString());
        }
    }

    /* renamed from: c */
    public final String m31833c() {
        return this.f6874a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzbh)) {
            return false;
        }
        zzbh zzbhVar = (zzbh) obj;
        return this.f6879f == zzbhVar.f6879f && this.f6877d == zzbhVar.f6877d && this.f6878e == zzbhVar.f6878e && this.f6876c == zzbhVar.f6876c;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f6877d);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f6878e);
        return ((((((((i + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.f6879f)) * 31) + this.f6876c) * 31) + this.f6880g;
    }

    public final String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", this.f6876c != 1 ? null : "CIRCLE", this.f6874a.replaceAll("\\p{C}", "?"), Integer.valueOf(this.f6880g), Double.valueOf(this.f6877d), Double.valueOf(this.f6878e), Float.valueOf(this.f6879f), Integer.valueOf(this.f6881h / 1000), Integer.valueOf(this.f6882i), Long.valueOf(this.f6875b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, m31833c(), false);
        C7031b.m21224a(parcel, 2, this.f6875b);
        C7031b.m21213a(parcel, 3, this.f6876c);
        C7031b.m21227a(parcel, 4, this.f6877d);
        C7031b.m21227a(parcel, 5, this.f6878e);
        C7031b.m21226a(parcel, 6, this.f6879f);
        C7031b.m21225a(parcel, 7, this.f6880g);
        C7031b.m21225a(parcel, 8, this.f6881h);
        C7031b.m21225a(parcel, 9, this.f6882i);
        C7031b.m21229a(parcel, a);
    }
}
