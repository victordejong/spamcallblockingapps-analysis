package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.de0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmg.class */
public final class zzmg extends zzmj {
    public static final Parcelable.Creator<zzmg> CREATOR = new de0();

    /* renamed from: b */
    public final String f28626b;

    /* renamed from: c */
    public final String f28627c;

    /* renamed from: d */
    public final int f28628d;

    /* renamed from: e */
    public final byte[] f28629e;

    public zzmg(Parcel parcel) {
        super("APIC");
        this.f28626b = parcel.readString();
        this.f28627c = parcel.readString();
        this.f28628d = parcel.readInt();
        this.f28629e = parcel.createByteArray();
    }

    public zzmg(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f28626b = str;
        this.f28627c = null;
        this.f28628d = 3;
        this.f28629e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmg.class != obj.getClass()) {
            return false;
        }
        zzmg zzmgVar = (zzmg) obj;
        return this.f28628d == zzmgVar.f28628d && zzpq.m11624a(this.f28626b, zzmgVar.f28626b) && zzpq.m11624a(this.f28627c, zzmgVar.f28627c) && Arrays.equals(this.f28629e, zzmgVar.f28629e);
    }

    public final int hashCode() {
        int i = this.f28628d;
        String str = this.f28626b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f28627c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f28629e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f28626b);
        parcel.writeString(this.f28627c);
        parcel.writeInt(this.f28628d);
        parcel.writeByteArray(this.f28629e);
    }
}
