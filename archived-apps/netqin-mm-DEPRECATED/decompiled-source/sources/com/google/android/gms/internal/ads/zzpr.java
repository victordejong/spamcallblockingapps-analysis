package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.ye0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpr.class */
public final class zzpr implements Parcelable {
    public static final Parcelable.Creator<zzpr> CREATOR = new ye0();

    /* renamed from: a */
    public final int f28791a;

    /* renamed from: b */
    public final int f28792b;

    /* renamed from: c */
    public final int f28793c;

    /* renamed from: d */
    public final byte[] f28794d;

    /* renamed from: e */
    public int f28795e;

    public zzpr(int i, int i2, int i3, byte[] bArr) {
        this.f28791a = i;
        this.f28792b = i2;
        this.f28793c = i3;
        this.f28794d = bArr;
    }

    public zzpr(Parcel parcel) {
        this.f28791a = parcel.readInt();
        this.f28792b = parcel.readInt();
        this.f28793c = parcel.readInt();
        this.f28794d = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzpr.class != obj.getClass()) {
            return false;
        }
        zzpr zzprVar = (zzpr) obj;
        return this.f28791a == zzprVar.f28791a && this.f28792b == zzprVar.f28792b && this.f28793c == zzprVar.f28793c && Arrays.equals(this.f28794d, zzprVar.f28794d);
    }

    public final int hashCode() {
        if (this.f28795e == 0) {
            this.f28795e = ((((((this.f28791a + 527) * 31) + this.f28792b) * 31) + this.f28793c) * 31) + Arrays.hashCode(this.f28794d);
        }
        return this.f28795e;
    }

    public final String toString() {
        int i = this.f28791a;
        int i2 = this.f28792b;
        int i3 = this.f28793c;
        boolean z = this.f28794d != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f28791a);
        parcel.writeInt(this.f28792b);
        parcel.writeInt(this.f28793c);
        parcel.writeInt(this.f28794d != null ? 1 : 0);
        byte[] bArr = this.f28794d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
