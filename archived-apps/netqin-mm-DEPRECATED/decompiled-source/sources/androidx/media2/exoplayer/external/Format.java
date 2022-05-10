package androidx.media2.exoplayer.external;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C0280a();

    /* renamed from: A */
    public final String f1551A;

    /* renamed from: B */
    public final int f1552B;

    /* renamed from: C */
    public int f1553C;

    /* renamed from: a */
    public final String f1554a;

    /* renamed from: b */
    public final String f1555b;

    /* renamed from: c */
    public final int f1556c;

    /* renamed from: d */
    public final int f1557d;

    /* renamed from: e */
    public final int f1558e;

    /* renamed from: f */
    public final String f1559f;

    /* renamed from: g */
    public final Metadata f1560g;

    /* renamed from: h */
    public final String f1561h;

    /* renamed from: i */
    public final String f1562i;

    /* renamed from: j */
    public final int f1563j;

    /* renamed from: k */
    public final List<byte[]> f1564k;

    /* renamed from: l */
    public final DrmInitData f1565l;

    /* renamed from: m */
    public final long f1566m;

    /* renamed from: n */
    public final int f1567n;

    /* renamed from: o */
    public final int f1568o;

    /* renamed from: p */
    public final float f1569p;

    /* renamed from: q */
    public final int f1570q;

    /* renamed from: r */
    public final float f1571r;

    /* renamed from: s */
    public final int f1572s;

    /* renamed from: t */
    public final byte[] f1573t;

    /* renamed from: u */
    public final ColorInfo f1574u;

    /* renamed from: v */
    public final int f1575v;

    /* renamed from: w */
    public final int f1576w;

    /* renamed from: x */
    public final int f1577x;

    /* renamed from: y */
    public final int f1578y;

    /* renamed from: z */
    public final int f1579z;

    /* renamed from: androidx.media2.exoplayer.external.Format$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format$a.class */
    public class C0280a implements Parcelable.Creator<Format> {
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
        this.f1554a = parcel.readString();
        this.f1555b = parcel.readString();
        this.f1556c = parcel.readInt();
        this.f1557d = parcel.readInt();
        this.f1558e = parcel.readInt();
        this.f1559f = parcel.readString();
        this.f1560g = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f1561h = parcel.readString();
        this.f1562i = parcel.readString();
        this.f1563j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f1564k = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f1564k.add(parcel.createByteArray());
        }
        this.f1565l = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f1566m = parcel.readLong();
        this.f1567n = parcel.readInt();
        this.f1568o = parcel.readInt();
        this.f1569p = parcel.readFloat();
        this.f1570q = parcel.readInt();
        this.f1571r = parcel.readFloat();
        this.f1573t = C1167d0.m34483a(parcel) ? parcel.createByteArray() : null;
        this.f1572s = parcel.readInt();
        this.f1574u = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f1575v = parcel.readInt();
        this.f1576w = parcel.readInt();
        this.f1577x = parcel.readInt();
        this.f1578y = parcel.readInt();
        this.f1579z = parcel.readInt();
        this.f1551A = parcel.readString();
        this.f1552B = parcel.readInt();
    }

    public Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14) {
        this.f1554a = str;
        this.f1555b = str2;
        this.f1556c = i;
        this.f1557d = i2;
        this.f1558e = i3;
        this.f1559f = str3;
        this.f1560g = metadata;
        this.f1561h = str4;
        this.f1562i = str5;
        this.f1563j = i4;
        this.f1564k = list == null ? Collections.emptyList() : list;
        this.f1565l = drmInitData;
        this.f1566m = j;
        this.f1567n = i5;
        this.f1568o = i6;
        this.f1569p = f;
        this.f1570q = i7 == -1 ? 0 : i7;
        this.f1571r = f2 == -1.0f ? 1.0f : f2;
        this.f1573t = bArr;
        this.f1572s = i8;
        this.f1574u = colorInfo;
        this.f1575v = i9;
        this.f1576w = i10;
        this.f1577x = i11;
        this.f1578y = i12 == -1 ? 0 : i12;
        this.f1579z = i13 == -1 ? 0 : i13;
        this.f1551A = C1167d0.m34435g(str6);
        this.f1552B = i14;
    }

    /* renamed from: a */
    public static Format m38187a(String str, String str2, int i, String str3) {
        return m38186a(str, str2, i, str3, (DrmInitData) null);
    }

    /* renamed from: a */
    public static Format m38186a(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m38179a(str, str2, (String) null, -1, i, str3, -1, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: a */
    public static Format m38185a(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: a */
    public static Format m38184a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m38183a(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, (byte[]) null, -1, (ColorInfo) null, drmInitData);
    }

    /* renamed from: a */
    public static Format m38183a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, Long.MAX_VALUE, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: a */
    public static Format m38182a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1);
    }

    /* renamed from: a */
    public static Format m38181a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m38182a(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, (Metadata) null);
    }

    /* renamed from: a */
    public static Format m38180a(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m38181a(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: a */
    public static Format m38179a(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3);
    }

    /* renamed from: a */
    public static Format m38178a(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData, long j) {
        return m38179a(str, str2, str3, i, i2, str4, -1, drmInitData, j, Collections.emptyList());
    }

    /* renamed from: a */
    public static Format m38177a(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1);
    }

    /* renamed from: a */
    public static Format m38176a(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: a */
    public static Format m38174a(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        return new Format(str, str2, i4, i5, i, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: a */
    public static Format m38173a(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1);
    }

    /* renamed from: a */
    public static Format m38172a(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i4);
    }

    /* renamed from: a */
    public static Format m38171a(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        return new Format(str, str2, i4, i5, i, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, str6, -1);
    }

    /* renamed from: b */
    public static Format m38168b(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return m38172a(str, str2, str3, str4, str5, i, i2, i3, str6, -1);
    }

    /* renamed from: a */
    public int m38195a() {
        int i = this.f1567n;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f1568o;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    /* renamed from: a */
    public Format m38194a(float f) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, this.f1560g, this.f1561h, this.f1562i, this.f1563j, this.f1564k, this.f1565l, this.f1566m, this.f1567n, this.f1568o, f, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* renamed from: a */
    public Format m38193a(int i) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, i, this.f1559f, this.f1560g, this.f1561h, this.f1562i, this.f1563j, this.f1564k, this.f1565l, this.f1566m, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* renamed from: a */
    public Format m38192a(int i, int i2) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, this.f1560g, this.f1561h, this.f1562i, this.f1563j, this.f1564k, this.f1565l, this.f1566m, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, i, i2, this.f1551A, this.f1552B);
    }

    /* renamed from: a */
    public Format m38191a(long j) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, this.f1560g, this.f1561h, this.f1562i, this.f1563j, this.f1564k, this.f1565l, j, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
        if (p012b.p076s.p078b.p079a.p080a1.C1167d0.m34433i(r38).length == 1) goto L_0x0086;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.Format m38190a(androidx.media2.exoplayer.external.Format r33) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.Format.m38190a(androidx.media2.exoplayer.external.Format):androidx.media2.exoplayer.external.Format");
    }

    /* renamed from: a */
    public Format m38189a(DrmInitData drmInitData) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, this.f1560g, this.f1561h, this.f1562i, this.f1563j, this.f1564k, drmInitData, this.f1566m, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* renamed from: a */
    public Format m38188a(Metadata metadata) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, metadata, this.f1561h, this.f1562i, this.f1563j, this.f1564k, this.f1565l, this.f1566m, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* renamed from: a */
    public Format m38175a(String str, String str2, String str3, String str4, Metadata metadata, int i, int i2, int i3, int i4, int i5, String str5) {
        Metadata metadata2 = this.f1560g;
        if (metadata2 != null) {
            metadata = metadata2.m38016a(metadata);
        }
        return new Format(str, str2, i5, this.f1557d, i, str4, metadata, this.f1561h, str3, this.f1563j, this.f1564k, this.f1565l, this.f1566m, i2, i3, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, i4, this.f1576w, this.f1577x, this.f1578y, this.f1579z, str5, this.f1552B);
    }

    /* renamed from: b */
    public Format m38170b(int i) {
        return new Format(this.f1554a, this.f1555b, this.f1556c, this.f1557d, this.f1558e, this.f1559f, this.f1560g, this.f1561h, this.f1562i, i, this.f1564k, this.f1565l, this.f1566m, this.f1567n, this.f1568o, this.f1569p, this.f1570q, this.f1571r, this.f1573t, this.f1572s, this.f1574u, this.f1575v, this.f1576w, this.f1577x, this.f1578y, this.f1579z, this.f1551A, this.f1552B);
    }

    /* renamed from: b */
    public boolean m38169b(Format format) {
        if (this.f1564k.size() != format.f1564k.size()) {
            return false;
        }
        for (int i = 0; i < this.f1564k.size(); i++) {
            if (!Arrays.equals(this.f1564k.get(i), format.f1564k.get(i))) {
                return false;
            }
        }
        return true;
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
        int i2 = this.f1553C;
        if (i2 != 0 && (i = format.f1553C) != 0 && i2 != i) {
            return false;
        }
        if (!(this.f1556c == format.f1556c && this.f1557d == format.f1557d && this.f1558e == format.f1558e && this.f1563j == format.f1563j && this.f1566m == format.f1566m && this.f1567n == format.f1567n && this.f1568o == format.f1568o && this.f1570q == format.f1570q && this.f1572s == format.f1572s && this.f1575v == format.f1575v && this.f1576w == format.f1576w && this.f1577x == format.f1577x && this.f1578y == format.f1578y && this.f1579z == format.f1579z && this.f1552B == format.f1552B && Float.compare(this.f1569p, format.f1569p) == 0 && Float.compare(this.f1571r, format.f1571r) == 0 && C1167d0.m34478a((Object) this.f1554a, (Object) format.f1554a) && C1167d0.m34478a((Object) this.f1555b, (Object) format.f1555b) && C1167d0.m34478a((Object) this.f1559f, (Object) format.f1559f) && C1167d0.m34478a((Object) this.f1561h, (Object) format.f1561h) && C1167d0.m34478a((Object) this.f1562i, (Object) format.f1562i) && C1167d0.m34478a((Object) this.f1551A, (Object) format.f1551A) && Arrays.equals(this.f1573t, format.f1573t) && C1167d0.m34478a(this.f1560g, format.f1560g) && C1167d0.m34478a(this.f1574u, format.f1574u) && C1167d0.m34478a(this.f1565l, format.f1565l) && m38169b(format))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1553C == 0) {
            String str = this.f1554a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f1555b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f1556c;
            int i3 = this.f1557d;
            int i4 = this.f1558e;
            String str3 = this.f1559f;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f1560g;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f1561h;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f1562i;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f1563j;
            int i6 = (int) this.f1566m;
            int i7 = this.f1567n;
            int i8 = this.f1568o;
            int floatToIntBits = Float.floatToIntBits(this.f1569p);
            int i9 = this.f1570q;
            int floatToIntBits2 = Float.floatToIntBits(this.f1571r);
            int i10 = this.f1572s;
            int i11 = this.f1575v;
            int i12 = this.f1576w;
            int i13 = this.f1577x;
            int i14 = this.f1578y;
            int i15 = this.f1579z;
            String str6 = this.f1551A;
            if (str6 != null) {
                i = str6.hashCode();
            }
            this.f1553C = ((((((((((((((((((((((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + floatToIntBits) * 31) + i9) * 31) + floatToIntBits2) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i) * 31) + this.f1552B;
        }
        return this.f1553C;
    }

    public String toString() {
        String str = this.f1554a;
        String str2 = this.f1555b;
        String str3 = this.f1561h;
        String str4 = this.f1562i;
        String str5 = this.f1559f;
        int i = this.f1558e;
        String str6 = this.f1551A;
        int i2 = this.f1567n;
        int i3 = this.f1568o;
        float f = this.f1569p;
        int i4 = this.f1575v;
        int i5 = this.f1576w;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1554a);
        parcel.writeString(this.f1555b);
        parcel.writeInt(this.f1556c);
        parcel.writeInt(this.f1557d);
        parcel.writeInt(this.f1558e);
        parcel.writeString(this.f1559f);
        boolean z = false;
        parcel.writeParcelable(this.f1560g, 0);
        parcel.writeString(this.f1561h);
        parcel.writeString(this.f1562i);
        parcel.writeInt(this.f1563j);
        int size = this.f1564k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f1564k.get(i2));
        }
        parcel.writeParcelable(this.f1565l, 0);
        parcel.writeLong(this.f1566m);
        parcel.writeInt(this.f1567n);
        parcel.writeInt(this.f1568o);
        parcel.writeFloat(this.f1569p);
        parcel.writeInt(this.f1570q);
        parcel.writeFloat(this.f1571r);
        if (this.f1573t != null) {
            z = true;
        }
        C1167d0.m34482a(parcel, z);
        byte[] bArr = this.f1573t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f1572s);
        parcel.writeParcelable(this.f1574u, i);
        parcel.writeInt(this.f1575v);
        parcel.writeInt(this.f1576w);
        parcel.writeInt(this.f1577x);
        parcel.writeInt(this.f1578y);
        parcel.writeInt(this.f1579z);
        parcel.writeString(this.f1551A);
        parcel.writeInt(this.f1552B);
    }
}
