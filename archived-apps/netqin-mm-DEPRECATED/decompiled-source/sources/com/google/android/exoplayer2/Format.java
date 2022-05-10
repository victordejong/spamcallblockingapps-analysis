package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3026f;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C7121a();

    /* renamed from: A */
    public final String f21940A;

    /* renamed from: B */
    public final int f21941B;

    /* renamed from: C */
    public final Class<? extends AbstractC3026f> f21942C;

    /* renamed from: D */
    public int f21943D;

    /* renamed from: a */
    public final String f21944a;

    /* renamed from: b */
    public final String f21945b;

    /* renamed from: c */
    public final int f21946c;

    /* renamed from: d */
    public final int f21947d;

    /* renamed from: e */
    public final int f21948e;

    /* renamed from: f */
    public final String f21949f;

    /* renamed from: g */
    public final Metadata f21950g;

    /* renamed from: h */
    public final String f21951h;

    /* renamed from: i */
    public final String f21952i;

    /* renamed from: j */
    public final int f21953j;

    /* renamed from: k */
    public final List<byte[]> f21954k;

    /* renamed from: l */
    public final DrmInitData f21955l;

    /* renamed from: m */
    public final long f21956m;

    /* renamed from: n */
    public final int f21957n;

    /* renamed from: o */
    public final int f21958o;

    /* renamed from: p */
    public final float f21959p;

    /* renamed from: q */
    public final int f21960q;

    /* renamed from: r */
    public final float f21961r;

    /* renamed from: s */
    public final int f21962s;

    /* renamed from: t */
    public final byte[] f21963t;

    /* renamed from: u */
    public final ColorInfo f21964u;

    /* renamed from: v */
    public final int f21965v;

    /* renamed from: w */
    public final int f21966w;

    /* renamed from: x */
    public final int f21967x;

    /* renamed from: y */
    public final int f21968y;

    /* renamed from: z */
    public final int f21969z;

    /* renamed from: com.google.android.exoplayer2.Format$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/Format$a.class */
    public static final class C7121a implements Parcelable.Creator<Format> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Format[] newArray(int i) {
            return new Format[i];
        }
    }

    public Format(Parcel parcel) {
        this.f21944a = parcel.readString();
        this.f21945b = parcel.readString();
        this.f21946c = parcel.readInt();
        this.f21947d = parcel.readInt();
        this.f21948e = parcel.readInt();
        this.f21949f = parcel.readString();
        this.f21950g = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f21951h = parcel.readString();
        this.f21952i = parcel.readString();
        this.f21953j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f21954k = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f21954k.add(parcel.createByteArray());
        }
        this.f21955l = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f21956m = parcel.readLong();
        this.f21957n = parcel.readInt();
        this.f21958o = parcel.readInt();
        this.f21959p = parcel.readFloat();
        this.f21960q = parcel.readInt();
        this.f21961r = parcel.readFloat();
        this.f21963t = C2885h0.m28675a(parcel) ? parcel.createByteArray() : null;
        this.f21962s = parcel.readInt();
        this.f21964u = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f21965v = parcel.readInt();
        this.f21966w = parcel.readInt();
        this.f21967x = parcel.readInt();
        this.f21968y = parcel.readInt();
        this.f21969z = parcel.readInt();
        this.f21940A = parcel.readString();
        this.f21941B = parcel.readInt();
        this.f21942C = null;
    }

    public Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14, Class<? extends AbstractC3026f> cls) {
        this.f21944a = str;
        this.f21945b = str2;
        this.f21946c = i;
        this.f21947d = i2;
        this.f21948e = i3;
        this.f21949f = str3;
        this.f21950g = metadata;
        this.f21951h = str4;
        this.f21952i = str5;
        this.f21953j = i4;
        this.f21954k = list == null ? Collections.emptyList() : list;
        this.f21955l = drmInitData;
        this.f21956m = j;
        this.f21957n = i5;
        this.f21958o = i6;
        this.f21959p = f;
        int i15 = 0;
        this.f21960q = i7 == -1 ? 0 : i7;
        this.f21961r = f2 == -1.0f ? 1.0f : f2;
        this.f21963t = bArr;
        this.f21962s = i8;
        this.f21964u = colorInfo;
        this.f21965v = i9;
        this.f21966w = i10;
        this.f21967x = i11;
        this.f21968y = i12 == -1 ? 0 : i12;
        if (i13 != -1) {
            i15 = i13;
        }
        this.f21969z = i15;
        this.f21940A = C2885h0.m28637c(str6);
        this.f21941B = i14;
        this.f21942C = cls;
    }

    /* renamed from: a */
    public static Format m18705a(String str, String str2, int i, String str3) {
        return m18704a(str, str2, i, str3, (DrmInitData) null);
    }

    /* renamed from: a */
    public static Format m18704a(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m18697a(str, str2, null, -1, i, str3, -1, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: a */
    public static Format m18703a(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: a */
    public static Format m18702a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m18701a(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, (byte[]) null, -1, (ColorInfo) null, drmInitData);
    }

    /* renamed from: a */
    public static Format m18701a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, Long.MAX_VALUE, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: a */
    public static Format m18700a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1, null);
    }

    /* renamed from: a */
    public static Format m18699a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m18700a(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, (Metadata) null);
    }

    /* renamed from: a */
    public static Format m18698a(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m18699a(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: a */
    public static Format m18697a(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3, null);
    }

    /* renamed from: a */
    public static Format m18696a(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1, null);
    }

    /* renamed from: a */
    public static Format m18695a(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: a */
    public int m18714a() {
        int i = this.f21957n;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f21958o;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    /* renamed from: a */
    public Format m18713a(float f) {
        return new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, this.f21948e, this.f21949f, this.f21950g, this.f21951h, this.f21952i, this.f21953j, this.f21954k, this.f21955l, this.f21956m, this.f21957n, this.f21958o, f, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, this.f21968y, this.f21969z, this.f21940A, this.f21941B, this.f21942C);
    }

    /* renamed from: a */
    public Format m18712a(int i) {
        return new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, i, this.f21949f, this.f21950g, this.f21951h, this.f21952i, this.f21953j, this.f21954k, this.f21955l, this.f21956m, this.f21957n, this.f21958o, this.f21959p, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, this.f21968y, this.f21969z, this.f21940A, this.f21941B, this.f21942C);
    }

    /* renamed from: a */
    public Format m18711a(int i, int i2) {
        return new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, this.f21948e, this.f21949f, this.f21950g, this.f21951h, this.f21952i, this.f21953j, this.f21954k, this.f21955l, this.f21956m, this.f21957n, this.f21958o, this.f21959p, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, i, i2, this.f21940A, this.f21941B, this.f21942C);
    }

    /* renamed from: a */
    public Format m18710a(long j) {
        return new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, this.f21948e, this.f21949f, this.f21950g, this.f21951h, this.f21952i, this.f21953j, this.f21954k, this.f21955l, j, this.f21957n, this.f21958o, this.f21959p, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, this.f21968y, this.f21969z, this.f21940A, this.f21941B, this.f21942C);
    }

    /* renamed from: a */
    public Format m18708a(DrmInitData drmInitData) {
        return m18707a(drmInitData, this.f21950g);
    }

    /* renamed from: a */
    public Format m18707a(DrmInitData drmInitData, Metadata metadata) {
        return (drmInitData == this.f21955l && metadata == this.f21950g) ? this : new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, this.f21948e, this.f21949f, metadata, this.f21951h, this.f21952i, this.f21953j, this.f21954k, drmInitData, this.f21956m, this.f21957n, this.f21958o, this.f21959p, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, this.f21968y, this.f21969z, this.f21940A, this.f21941B, this.f21942C);
    }

    /* renamed from: a */
    public Format m18706a(Metadata metadata) {
        return m18707a(this.f21955l, metadata);
    }

    /* renamed from: a */
    public boolean m18709a(Format format) {
        if (this.f21954k.size() != format.f21954k.size()) {
            return false;
        }
        for (int i = 0; i < this.f21954k.size(); i++) {
            if (!Arrays.equals(this.f21954k.get(i), format.f21954k.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public Format m18694b(int i) {
        return new Format(this.f21944a, this.f21945b, this.f21946c, this.f21947d, this.f21948e, this.f21949f, this.f21950g, this.f21951h, this.f21952i, i, this.f21954k, this.f21955l, this.f21956m, this.f21957n, this.f21958o, this.f21959p, this.f21960q, this.f21961r, this.f21963t, this.f21962s, this.f21964u, this.f21965v, this.f21966w, this.f21967x, this.f21968y, this.f21969z, this.f21940A, this.f21941B, this.f21942C);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        int i;
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i2 = this.f21943D;
        if (i2 != 0 && (i = format.f21943D) != 0 && i2 != i) {
            return false;
        }
        if (!(this.f21946c == format.f21946c && this.f21947d == format.f21947d && this.f21948e == format.f21948e && this.f21953j == format.f21953j && this.f21956m == format.f21956m && this.f21957n == format.f21957n && this.f21958o == format.f21958o && this.f21960q == format.f21960q && this.f21962s == format.f21962s && this.f21965v == format.f21965v && this.f21966w == format.f21966w && this.f21967x == format.f21967x && this.f21968y == format.f21968y && this.f21969z == format.f21969z && this.f21941B == format.f21941B && Float.compare(this.f21959p, format.f21959p) == 0 && Float.compare(this.f21961r, format.f21961r) == 0 && C2885h0.m28669a(this.f21942C, format.f21942C) && C2885h0.m28669a((Object) this.f21944a, (Object) format.f21944a) && C2885h0.m28669a((Object) this.f21945b, (Object) format.f21945b) && C2885h0.m28669a((Object) this.f21949f, (Object) format.f21949f) && C2885h0.m28669a((Object) this.f21951h, (Object) format.f21951h) && C2885h0.m28669a((Object) this.f21952i, (Object) format.f21952i) && C2885h0.m28669a((Object) this.f21940A, (Object) format.f21940A) && Arrays.equals(this.f21963t, format.f21963t) && C2885h0.m28669a(this.f21950g, format.f21950g) && C2885h0.m28669a(this.f21964u, format.f21964u) && C2885h0.m28669a(this.f21955l, format.f21955l) && m18709a(format))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f21943D == 0) {
            String str = this.f21944a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f21945b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f21946c;
            int i3 = this.f21947d;
            int i4 = this.f21948e;
            String str3 = this.f21949f;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f21950g;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f21951h;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f21952i;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f21953j;
            int i6 = (int) this.f21956m;
            int i7 = this.f21957n;
            int i8 = this.f21958o;
            int floatToIntBits = Float.floatToIntBits(this.f21959p);
            int i9 = this.f21960q;
            int floatToIntBits2 = Float.floatToIntBits(this.f21961r);
            int i10 = this.f21962s;
            int i11 = this.f21965v;
            int i12 = this.f21966w;
            int i13 = this.f21967x;
            int i14 = this.f21968y;
            int i15 = this.f21969z;
            String str6 = this.f21940A;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i16 = this.f21941B;
            Class<? extends AbstractC3026f> cls = this.f21942C;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.f21943D = ((((((((((((((((((((((((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + floatToIntBits) * 31) + i9) * 31) + floatToIntBits2) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + hashCode7) * 31) + i16) * 31) + i;
        }
        return this.f21943D;
    }

    public String toString() {
        return "Format(" + this.f21944a + ", " + this.f21945b + ", " + this.f21951h + ", " + this.f21952i + ", " + this.f21949f + ", " + this.f21948e + ", " + this.f21940A + ", [" + this.f21957n + ", " + this.f21958o + ", " + this.f21959p + "], [" + this.f21965v + ", " + this.f21966w + "])";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f21944a);
        parcel.writeString(this.f21945b);
        parcel.writeInt(this.f21946c);
        parcel.writeInt(this.f21947d);
        parcel.writeInt(this.f21948e);
        parcel.writeString(this.f21949f);
        boolean z = false;
        parcel.writeParcelable(this.f21950g, 0);
        parcel.writeString(this.f21951h);
        parcel.writeString(this.f21952i);
        parcel.writeInt(this.f21953j);
        int size = this.f21954k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f21954k.get(i2));
        }
        parcel.writeParcelable(this.f21955l, 0);
        parcel.writeLong(this.f21956m);
        parcel.writeInt(this.f21957n);
        parcel.writeInt(this.f21958o);
        parcel.writeFloat(this.f21959p);
        parcel.writeInt(this.f21960q);
        parcel.writeFloat(this.f21961r);
        if (this.f21963t != null) {
            z = true;
        }
        C2885h0.m28674a(parcel, z);
        byte[] bArr = this.f21963t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f21962s);
        parcel.writeParcelable(this.f21964u, i);
        parcel.writeInt(this.f21965v);
        parcel.writeInt(this.f21966w);
        parcel.writeInt(this.f21967x);
        parcel.writeInt(this.f21968y);
        parcel.writeInt(this.f21969z);
        parcel.writeString(this.f21940A);
        parcel.writeInt(this.f21941B);
    }
}
