package com.google.android.exoplayer2.video;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C7210a();

    /* renamed from: a */
    public final int f22574a;

    /* renamed from: b */
    public final int f22575b;

    /* renamed from: c */
    public final int f22576c;

    /* renamed from: d */
    public final byte[] f22577d;

    /* renamed from: e */
    public int f22578e;

    /* renamed from: com.google.android.exoplayer2.video.ColorInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/ColorInfo$a.class */
    public static final class C7210a implements Parcelable.Creator<ColorInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorInfo createFromParcel(Parcel parcel) {
            return new ColorInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ColorInfo[] newArray(int i) {
            return new ColorInfo[i];
        }
    }

    public ColorInfo(int i, int i2, int i3, byte[] bArr) {
        this.f22574a = i;
        this.f22575b = i2;
        this.f22576c = i3;
        this.f22577d = bArr;
    }

    public ColorInfo(Parcel parcel) {
        this.f22574a = parcel.readInt();
        this.f22575b = parcel.readInt();
        this.f22576c = parcel.readInt();
        this.f22577d = C2885h0.m28675a(parcel) ? parcel.createByteArray() : null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        if (!(this.f22574a == colorInfo.f22574a && this.f22575b == colorInfo.f22575b && this.f22576c == colorInfo.f22576c && Arrays.equals(this.f22577d, colorInfo.f22577d))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f22578e == 0) {
            this.f22578e = ((((((527 + this.f22574a) * 31) + this.f22575b) * 31) + this.f22576c) * 31) + Arrays.hashCode(this.f22577d);
        }
        return this.f22578e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
        sb.append(this.f22574a);
        sb.append(", ");
        sb.append(this.f22575b);
        sb.append(", ");
        sb.append(this.f22576c);
        sb.append(", ");
        sb.append(this.f22577d != null);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22574a);
        parcel.writeInt(this.f22575b);
        parcel.writeInt(this.f22576c);
        C2885h0.m28674a(parcel, this.f22577d != null);
        byte[] bArr = this.f22577d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
