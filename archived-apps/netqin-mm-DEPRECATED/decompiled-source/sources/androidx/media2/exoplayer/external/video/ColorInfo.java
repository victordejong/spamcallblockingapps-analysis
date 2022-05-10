package androidx.media2.exoplayer.external.video;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo.class */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new C0356a();

    /* renamed from: a */
    public final int f2020a;

    /* renamed from: b */
    public final int f2021b;

    /* renamed from: c */
    public final int f2022c;

    /* renamed from: d */
    public final byte[] f2023d;

    /* renamed from: e */
    public int f2024e;

    /* renamed from: androidx.media2.exoplayer.external.video.ColorInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/ColorInfo$a.class */
    public class C0356a implements Parcelable.Creator<ColorInfo> {
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
        this.f2020a = i;
        this.f2021b = i2;
        this.f2022c = i3;
        this.f2023d = bArr;
    }

    public ColorInfo(Parcel parcel) {
        this.f2020a = parcel.readInt();
        this.f2021b = parcel.readInt();
        this.f2022c = parcel.readInt();
        this.f2023d = C1167d0.m34483a(parcel) ? parcel.createByteArray() : null;
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
        if (!(this.f2020a == colorInfo.f2020a && this.f2021b == colorInfo.f2021b && this.f2022c == colorInfo.f2022c && Arrays.equals(this.f2023d, colorInfo.f2023d))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f2024e == 0) {
            this.f2024e = ((((((527 + this.f2020a) * 31) + this.f2021b) * 31) + this.f2022c) * 31) + Arrays.hashCode(this.f2023d);
        }
        return this.f2024e;
    }

    public String toString() {
        int i = this.f2020a;
        int i2 = this.f2021b;
        int i3 = this.f2022c;
        boolean z = this.f2023d != null;
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
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2020a);
        parcel.writeInt(this.f2021b);
        parcel.writeInt(this.f2022c);
        C1167d0.m34482a(parcel, this.f2023d != null);
        byte[] bArr = this.f2023d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }
}
