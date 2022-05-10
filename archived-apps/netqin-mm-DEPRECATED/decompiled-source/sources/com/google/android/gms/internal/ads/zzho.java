package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.wb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzho.class */
public final class zzho implements Parcelable {
    public static final Parcelable.Creator<zzho> CREATOR = new wb0();

    /* renamed from: A */
    public int f28262A;

    /* renamed from: a */
    public final String f28263a;

    /* renamed from: b */
    public final int f28264b;

    /* renamed from: c */
    public final String f28265c;

    /* renamed from: d */
    public final zzmc f28266d;

    /* renamed from: e */
    public final String f28267e;

    /* renamed from: f */
    public final String f28268f;

    /* renamed from: g */
    public final int f28269g;

    /* renamed from: h */
    public final List<byte[]> f28270h;

    /* renamed from: i */
    public final zzjn f28271i;

    /* renamed from: j */
    public final int f28272j;

    /* renamed from: k */
    public final int f28273k;

    /* renamed from: l */
    public final float f28274l;

    /* renamed from: m */
    public final int f28275m;

    /* renamed from: n */
    public final float f28276n;

    /* renamed from: o */
    public final int f28277o;

    /* renamed from: p */
    public final byte[] f28278p;

    /* renamed from: q */
    public final zzpr f28279q;

    /* renamed from: r */
    public final int f28280r;

    /* renamed from: s */
    public final int f28281s;

    /* renamed from: t */
    public final int f28282t;

    /* renamed from: u */
    public final int f28283u;

    /* renamed from: v */
    public final int f28284v;

    /* renamed from: w */
    public final long f28285w;

    /* renamed from: x */
    public final int f28286x;

    /* renamed from: y */
    public final String f28287y;

    /* renamed from: z */
    public final int f28288z;

    public zzho(Parcel parcel) {
        this.f28263a = parcel.readString();
        this.f28267e = parcel.readString();
        this.f28268f = parcel.readString();
        this.f28265c = parcel.readString();
        this.f28264b = parcel.readInt();
        this.f28269g = parcel.readInt();
        this.f28272j = parcel.readInt();
        this.f28273k = parcel.readInt();
        this.f28274l = parcel.readFloat();
        this.f28275m = parcel.readInt();
        this.f28276n = parcel.readFloat();
        this.f28278p = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f28277o = parcel.readInt();
        this.f28279q = (zzpr) parcel.readParcelable(zzpr.class.getClassLoader());
        this.f28280r = parcel.readInt();
        this.f28281s = parcel.readInt();
        this.f28282t = parcel.readInt();
        this.f28283u = parcel.readInt();
        this.f28284v = parcel.readInt();
        this.f28286x = parcel.readInt();
        this.f28287y = parcel.readString();
        this.f28288z = parcel.readInt();
        this.f28285w = parcel.readLong();
        int readInt = parcel.readInt();
        this.f28270h = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f28270h.add(parcel.createByteArray());
        }
        this.f28271i = (zzjn) parcel.readParcelable(zzjn.class.getClassLoader());
        this.f28266d = (zzmc) parcel.readParcelable(zzmc.class.getClassLoader());
    }

    public zzho(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzpr zzprVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzjn zzjnVar, zzmc zzmcVar) {
        this.f28263a = str;
        this.f28267e = str2;
        this.f28268f = str3;
        this.f28265c = str4;
        this.f28264b = i;
        this.f28269g = i2;
        this.f28272j = i3;
        this.f28273k = i4;
        this.f28274l = f;
        this.f28275m = i5;
        this.f28276n = f2;
        this.f28278p = bArr;
        this.f28277o = i6;
        this.f28279q = zzprVar;
        this.f28280r = i7;
        this.f28281s = i8;
        this.f28282t = i9;
        this.f28283u = i10;
        this.f28284v = i11;
        this.f28286x = i12;
        this.f28287y = str5;
        this.f28288z = i13;
        this.f28285w = j;
        this.f28270h = list == null ? Collections.emptyList() : list;
        this.f28271i = zzjnVar;
        this.f28266d = zzmcVar;
    }

    /* renamed from: a */
    public static zzho m12032a(String str, String str2, long j) {
        return new zzho(null, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    /* renamed from: a */
    public static zzho m12031a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzpr zzprVar, zzjn zzjnVar) {
        return new zzho(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzprVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzjnVar, null);
    }

    /* renamed from: a */
    public static zzho m12030a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, zzjn zzjnVar, int i6, String str4) {
        return new zzho(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, Long.MAX_VALUE, list, zzjnVar, null);
    }

    /* renamed from: a */
    public static zzho m12029a(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzjn zzjnVar, int i5, String str4) {
        return m12030a(str, str2, null, -1, -1, i3, i4, -1, null, zzjnVar, 0, str4);
    }

    /* renamed from: a */
    public static zzho m12028a(String str, String str2, String str3, int i, int i2, String str4, int i3, zzjn zzjnVar, long j, List<byte[]> list) {
        return new zzho(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzjnVar, null);
    }

    /* renamed from: a */
    public static zzho m12027a(String str, String str2, String str3, int i, int i2, String str4, zzjn zzjnVar) {
        return m12028a(str, str2, null, -1, i2, str4, -1, zzjnVar, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: a */
    public static zzho m12026a(String str, String str2, String str3, int i, zzjn zzjnVar) {
        return new zzho(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, zzjnVar, null);
    }

    /* renamed from: a */
    public static zzho m12025a(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzjn zzjnVar) {
        return new zzho(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzjnVar, null);
    }

    /* renamed from: a */
    public static void m12035a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public final int m12039a() {
        int i;
        int i2 = this.f28272j;
        if (i2 == -1 || (i = this.f28273k) == -1) {
            return -1;
        }
        return i2 * i;
    }

    /* renamed from: a */
    public final zzho m12038a(int i) {
        return new zzho(this.f28263a, this.f28267e, this.f28268f, this.f28265c, this.f28264b, i, this.f28272j, this.f28273k, this.f28274l, this.f28275m, this.f28276n, this.f28278p, this.f28277o, this.f28279q, this.f28280r, this.f28281s, this.f28282t, this.f28283u, this.f28284v, this.f28286x, this.f28287y, this.f28288z, this.f28285w, this.f28270h, this.f28271i, this.f28266d);
    }

    /* renamed from: a */
    public final zzho m12037a(int i, int i2) {
        return new zzho(this.f28263a, this.f28267e, this.f28268f, this.f28265c, this.f28264b, this.f28269g, this.f28272j, this.f28273k, this.f28274l, this.f28275m, this.f28276n, this.f28278p, this.f28277o, this.f28279q, this.f28280r, this.f28281s, this.f28282t, i, i2, this.f28286x, this.f28287y, this.f28288z, this.f28285w, this.f28270h, this.f28271i, this.f28266d);
    }

    /* renamed from: a */
    public final zzho m12036a(long j) {
        return new zzho(this.f28263a, this.f28267e, this.f28268f, this.f28265c, this.f28264b, this.f28269g, this.f28272j, this.f28273k, this.f28274l, this.f28275m, this.f28276n, this.f28278p, this.f28277o, this.f28279q, this.f28280r, this.f28281s, this.f28282t, this.f28283u, this.f28284v, this.f28286x, this.f28287y, this.f28288z, j, this.f28270h, this.f28271i, this.f28266d);
    }

    /* renamed from: a */
    public final zzho m12034a(zzjn zzjnVar) {
        return new zzho(this.f28263a, this.f28267e, this.f28268f, this.f28265c, this.f28264b, this.f28269g, this.f28272j, this.f28273k, this.f28274l, this.f28275m, this.f28276n, this.f28278p, this.f28277o, this.f28279q, this.f28280r, this.f28281s, this.f28282t, this.f28283u, this.f28284v, this.f28286x, this.f28287y, this.f28288z, this.f28285w, this.f28270h, zzjnVar, this.f28266d);
    }

    /* renamed from: a */
    public final zzho m12033a(zzmc zzmcVar) {
        return new zzho(this.f28263a, this.f28267e, this.f28268f, this.f28265c, this.f28264b, this.f28269g, this.f28272j, this.f28273k, this.f28274l, this.f28275m, this.f28276n, this.f28278p, this.f28277o, this.f28279q, this.f28280r, this.f28281s, this.f28282t, this.f28283u, this.f28284v, this.f28286x, this.f28287y, this.f28288z, this.f28285w, this.f28270h, this.f28271i, zzmcVar);
    }

    /* renamed from: b */
    public final MediaFormat m12024b() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f28268f);
        String str = this.f28287y;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m12035a(mediaFormat, "max-input-size", this.f28269g);
        m12035a(mediaFormat, "width", this.f28272j);
        m12035a(mediaFormat, "height", this.f28273k);
        float f = this.f28274l;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m12035a(mediaFormat, "rotation-degrees", this.f28275m);
        m12035a(mediaFormat, "channel-count", this.f28280r);
        m12035a(mediaFormat, "sample-rate", this.f28281s);
        m12035a(mediaFormat, "encoder-delay", this.f28283u);
        m12035a(mediaFormat, "encoder-padding", this.f28284v);
        for (int i = 0; i < this.f28270h.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.f28270h.get(i)));
        }
        zzpr zzprVar = this.f28279q;
        if (zzprVar != null) {
            m12035a(mediaFormat, "color-transfer", zzprVar.f28793c);
            m12035a(mediaFormat, "color-standard", zzprVar.f28791a);
            m12035a(mediaFormat, "color-range", zzprVar.f28792b);
            byte[] bArr = zzprVar.f28794d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzho.class != obj.getClass()) {
            return false;
        }
        zzho zzhoVar = (zzho) obj;
        if (!(this.f28264b == zzhoVar.f28264b && this.f28269g == zzhoVar.f28269g && this.f28272j == zzhoVar.f28272j && this.f28273k == zzhoVar.f28273k && this.f28274l == zzhoVar.f28274l && this.f28275m == zzhoVar.f28275m && this.f28276n == zzhoVar.f28276n && this.f28277o == zzhoVar.f28277o && this.f28280r == zzhoVar.f28280r && this.f28281s == zzhoVar.f28281s && this.f28282t == zzhoVar.f28282t && this.f28283u == zzhoVar.f28283u && this.f28284v == zzhoVar.f28284v && this.f28285w == zzhoVar.f28285w && this.f28286x == zzhoVar.f28286x && zzpq.m11624a(this.f28263a, zzhoVar.f28263a) && zzpq.m11624a(this.f28287y, zzhoVar.f28287y) && this.f28288z == zzhoVar.f28288z && zzpq.m11624a(this.f28267e, zzhoVar.f28267e) && zzpq.m11624a(this.f28268f, zzhoVar.f28268f) && zzpq.m11624a(this.f28265c, zzhoVar.f28265c) && zzpq.m11624a(this.f28271i, zzhoVar.f28271i) && zzpq.m11624a(this.f28266d, zzhoVar.f28266d) && zzpq.m11624a(this.f28279q, zzhoVar.f28279q) && Arrays.equals(this.f28278p, zzhoVar.f28278p) && this.f28270h.size() == zzhoVar.f28270h.size())) {
            return false;
        }
        for (int i = 0; i < this.f28270h.size(); i++) {
            if (!Arrays.equals(this.f28270h.get(i), zzhoVar.f28270h.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (this.f28262A == 0) {
            String str = this.f28263a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f28267e;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.f28268f;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.f28265c;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i2 = this.f28264b;
            int i3 = this.f28272j;
            int i4 = this.f28273k;
            int i5 = this.f28280r;
            int i6 = this.f28281s;
            String str5 = this.f28287y;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i7 = this.f28288z;
            zzjn zzjnVar = this.f28271i;
            int hashCode6 = zzjnVar == null ? 0 : zzjnVar.hashCode();
            zzmc zzmcVar = this.f28266d;
            if (zzmcVar != null) {
                i = zzmcVar.hashCode();
            }
            this.f28262A = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode5) * 31) + i7) * 31) + hashCode6) * 31) + i;
        }
        return this.f28262A;
    }

    public final String toString() {
        String str = this.f28263a;
        String str2 = this.f28267e;
        String str3 = this.f28268f;
        int i = this.f28264b;
        String str4 = this.f28287y;
        int i2 = this.f28272j;
        int i3 = this.f28273k;
        float f = this.f28274l;
        int i4 = this.f28280r;
        int i5 = this.f28281s;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str4);
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
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f28263a);
        parcel.writeString(this.f28267e);
        parcel.writeString(this.f28268f);
        parcel.writeString(this.f28265c);
        parcel.writeInt(this.f28264b);
        parcel.writeInt(this.f28269g);
        parcel.writeInt(this.f28272j);
        parcel.writeInt(this.f28273k);
        parcel.writeFloat(this.f28274l);
        parcel.writeInt(this.f28275m);
        parcel.writeFloat(this.f28276n);
        parcel.writeInt(this.f28278p != null ? 1 : 0);
        byte[] bArr = this.f28278p;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f28277o);
        parcel.writeParcelable(this.f28279q, i);
        parcel.writeInt(this.f28280r);
        parcel.writeInt(this.f28281s);
        parcel.writeInt(this.f28282t);
        parcel.writeInt(this.f28283u);
        parcel.writeInt(this.f28284v);
        parcel.writeInt(this.f28286x);
        parcel.writeString(this.f28287y);
        parcel.writeInt(this.f28288z);
        parcel.writeLong(this.f28285w);
        int size = this.f28270h.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f28270h.get(i2));
        }
        parcel.writeParcelable(this.f28271i, 0);
        parcel.writeParcelable(this.f28266d, 0);
    }
}
