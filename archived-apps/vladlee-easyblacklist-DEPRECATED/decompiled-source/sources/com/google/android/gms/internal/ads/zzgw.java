package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgw.class */
public final class zzgw implements Parcelable {
    public static final Parcelable.Creator<zzgw> CREATOR = new amj();

    /* renamed from: a */
    private final String f14823a;

    /* renamed from: b */
    private final zzle f14824b;

    /* renamed from: c */
    private final String f14825c;

    /* renamed from: d */
    private final int f14826d;

    /* renamed from: e */
    private final byte[] f14827e;

    /* renamed from: f */
    private final zzor f14828f;

    /* renamed from: g */
    private final int f14829g;

    /* renamed from: h */
    private final int f14830h;
    public final int height;

    /* renamed from: i */
    private final int f14831i;

    /* renamed from: j */
    private int f14832j;
    public final int width;
    public final int zzafa;
    public final String zzafb;
    public final String zzafe;
    public final int zzaff;
    public final List<byte[]> zzafg;
    public final zziv zzafh;
    public final float zzafi;
    public final int zzafj;
    public final float zzafk;
    public final int zzafo;
    public final int zzafp;
    public final int zzafq;
    public final long zzaft;
    public final int zzafu;
    public final String zzafv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgw(Parcel parcel) {
        this.f14823a = parcel.readString();
        this.f14825c = parcel.readString();
        this.zzafe = parcel.readString();
        this.zzafb = parcel.readString();
        this.zzafa = parcel.readInt();
        this.zzaff = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.zzafi = parcel.readFloat();
        this.zzafj = parcel.readInt();
        this.zzafk = parcel.readFloat();
        this.f14827e = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f14826d = parcel.readInt();
        this.f14828f = (zzor) parcel.readParcelable(zzor.class.getClassLoader());
        this.zzafo = parcel.readInt();
        this.zzafp = parcel.readInt();
        this.zzafq = parcel.readInt();
        this.f14829g = parcel.readInt();
        this.f14830h = parcel.readInt();
        this.zzafu = parcel.readInt();
        this.zzafv = parcel.readString();
        this.f14831i = parcel.readInt();
        this.zzaft = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzafg = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.zzafg.add(parcel.createByteArray());
        }
        this.zzafh = (zziv) parcel.readParcelable(zziv.class.getClassLoader());
        this.f14824b = (zzle) parcel.readParcelable(zzle.class.getClassLoader());
    }

    private zzgw(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzor zzorVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zziv zzivVar, zzle zzleVar) {
        this.f14823a = str;
        this.f14825c = str2;
        this.zzafe = str3;
        this.zzafb = str4;
        this.zzafa = i;
        this.zzaff = i2;
        this.width = i3;
        this.height = i4;
        this.zzafi = f;
        this.zzafj = i5;
        this.zzafk = f2;
        this.f14827e = bArr;
        this.f14826d = i6;
        this.f14828f = zzorVar;
        this.zzafo = i7;
        this.zzafp = i8;
        this.zzafq = i9;
        this.f14829g = i10;
        this.f14830h = i11;
        this.zzafu = i12;
        this.zzafv = str5;
        this.f14831i = i13;
        this.zzaft = j;
        this.zzafg = list == null ? Collections.emptyList() : list;
        this.zzafh = zzivVar;
        this.f14824b = zzleVar;
    }

    /* renamed from: a */
    private static void m3249a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static zzgw zza(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzor zzorVar, zziv zzivVar) {
        return new zzgw(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzorVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzivVar, null);
    }

    public static zzgw zza(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, zziv zzivVar, int i6, String str4) {
        return new zzgw(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, Long.MAX_VALUE, list, zzivVar, null);
    }

    public static zzgw zza(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zziv zzivVar, int i5, String str4) {
        return zza(str, str2, null, -1, -1, i3, i4, -1, null, zzivVar, 0, str4);
    }

    public static zzgw zza(String str, String str2, String str3, int i, int i2, String str4, int i3, zziv zzivVar, long j, List<byte[]> list) {
        return new zzgw(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzivVar, null);
    }

    public static zzgw zza(String str, String str2, String str3, int i, int i2, String str4, zziv zzivVar) {
        return zza(str, str2, null, -1, i2, str4, -1, zzivVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzgw zza(String str, String str2, String str3, int i, zziv zzivVar) {
        return new zzgw(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    public static zzgw zza(String str, String str2, String str3, int i, List<byte[]> list, String str4, zziv zzivVar) {
        return new zzgw(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzivVar, null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzgw zzgwVar = (zzgw) obj;
        if (!(this.zzafa == zzgwVar.zzafa && this.zzaff == zzgwVar.zzaff && this.width == zzgwVar.width && this.height == zzgwVar.height && this.zzafi == zzgwVar.zzafi && this.zzafj == zzgwVar.zzafj && this.zzafk == zzgwVar.zzafk && this.f14826d == zzgwVar.f14826d && this.zzafo == zzgwVar.zzafo && this.zzafp == zzgwVar.zzafp && this.zzafq == zzgwVar.zzafq && this.f14829g == zzgwVar.f14829g && this.f14830h == zzgwVar.f14830h && this.zzaft == zzgwVar.zzaft && this.zzafu == zzgwVar.zzafu && zzoq.zza(this.f14823a, zzgwVar.f14823a) && zzoq.zza(this.zzafv, zzgwVar.zzafv) && this.f14831i == zzgwVar.f14831i && zzoq.zza(this.f14825c, zzgwVar.f14825c) && zzoq.zza(this.zzafe, zzgwVar.zzafe) && zzoq.zza(this.zzafb, zzgwVar.zzafb) && zzoq.zza(this.zzafh, zzgwVar.zzafh) && zzoq.zza(this.f14824b, zzgwVar.f14824b) && zzoq.zza(this.f14828f, zzgwVar.f14828f) && Arrays.equals(this.f14827e, zzgwVar.f14827e) && this.zzafg.size() == zzgwVar.zzafg.size())) {
            return false;
        }
        for (int i = 0; i < this.zzafg.size(); i++) {
            if (!Arrays.equals(this.zzafg.get(i), zzgwVar.zzafg.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (this.f14832j == 0) {
            String str = this.f14823a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f14825c;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.zzafe;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.zzafb;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i2 = this.zzafa;
            int i3 = this.width;
            int i4 = this.height;
            int i5 = this.zzafo;
            int i6 = this.zzafp;
            String str5 = this.zzafv;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i7 = this.f14831i;
            zziv zzivVar = this.zzafh;
            int hashCode6 = zzivVar == null ? 0 : zzivVar.hashCode();
            zzle zzleVar = this.f14824b;
            if (zzleVar != null) {
                i = zzleVar.hashCode();
            }
            this.f14832j = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode5) * 31) + i7) * 31) + hashCode6) * 31) + i;
        }
        return this.f14832j;
    }

    public final String toString() {
        String str = this.f14823a;
        String str2 = this.f14825c;
        String str3 = this.zzafe;
        int i = this.zzafa;
        String str4 = this.zzafv;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.zzafi;
        int i4 = this.zzafo;
        int i5 = this.zzafp;
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
        parcel.writeString(this.f14823a);
        parcel.writeString(this.f14825c);
        parcel.writeString(this.zzafe);
        parcel.writeString(this.zzafb);
        parcel.writeInt(this.zzafa);
        parcel.writeInt(this.zzaff);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.zzafi);
        parcel.writeInt(this.zzafj);
        parcel.writeFloat(this.zzafk);
        parcel.writeInt(this.f14827e != null ? 1 : 0);
        byte[] bArr = this.f14827e;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f14826d);
        parcel.writeParcelable(this.f14828f, i);
        parcel.writeInt(this.zzafo);
        parcel.writeInt(this.zzafp);
        parcel.writeInt(this.zzafq);
        parcel.writeInt(this.f14829g);
        parcel.writeInt(this.f14830h);
        parcel.writeInt(this.zzafu);
        parcel.writeString(this.zzafv);
        parcel.writeInt(this.f14831i);
        parcel.writeLong(this.zzaft);
        int size = this.zzafg.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.zzafg.get(i2));
        }
        parcel.writeParcelable(this.zzafh, 0);
        parcel.writeParcelable(this.f14824b, 0);
    }

    public final zzgw zza(zzle zzleVar) {
        return new zzgw(this.f14823a, this.f14825c, this.zzafe, this.zzafb, this.zzafa, this.zzaff, this.width, this.height, this.zzafi, this.zzafj, this.zzafk, this.f14827e, this.f14826d, this.f14828f, this.zzafo, this.zzafp, this.zzafq, this.f14829g, this.f14830h, this.zzafu, this.zzafv, this.f14831i, this.zzaft, this.zzafg, this.zzafh, zzleVar);
    }

    public final zzgw zzb(int i, int i2) {
        return new zzgw(this.f14823a, this.f14825c, this.zzafe, this.zzafb, this.zzafa, this.zzaff, this.width, this.height, this.zzafi, this.zzafj, this.zzafk, this.f14827e, this.f14826d, this.f14828f, this.zzafo, this.zzafp, this.zzafq, i, i2, this.zzafu, this.zzafv, this.f14831i, this.zzaft, this.zzafg, this.zzafh, this.f14824b);
    }

    public final zzgw zzds(long j) {
        return new zzgw(this.f14823a, this.f14825c, this.zzafe, this.zzafb, this.zzafa, this.zzaff, this.width, this.height, this.zzafi, this.zzafj, this.zzafk, this.f14827e, this.f14826d, this.f14828f, this.zzafo, this.zzafp, this.zzafq, this.f14829g, this.f14830h, this.zzafu, this.zzafv, this.f14831i, j, this.zzafg, this.zzafh, this.f14824b);
    }

    public final int zzep() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final MediaFormat zzeq() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.zzafe);
        String str = this.zzafv;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m3249a(mediaFormat, "max-input-size", this.zzaff);
        m3249a(mediaFormat, "width", this.width);
        m3249a(mediaFormat, "height", this.height);
        float f = this.zzafi;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m3249a(mediaFormat, "rotation-degrees", this.zzafj);
        m3249a(mediaFormat, "channel-count", this.zzafo);
        m3249a(mediaFormat, "sample-rate", this.zzafp);
        m3249a(mediaFormat, "encoder-delay", this.f14829g);
        m3249a(mediaFormat, "encoder-padding", this.f14830h);
        for (int i = 0; i < this.zzafg.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.zzafg.get(i)));
        }
        zzor zzorVar = this.f14828f;
        if (zzorVar != null) {
            m3249a(mediaFormat, "color-transfer", zzorVar.zzaqa);
            m3249a(mediaFormat, "color-standard", zzorVar.zzapz);
            m3249a(mediaFormat, "color-range", zzorVar.zzaqb);
            byte[] bArr = zzorVar.zzbha;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final zzgw zzp(int i) {
        return new zzgw(this.f14823a, this.f14825c, this.zzafe, this.zzafb, this.zzafa, i, this.width, this.height, this.zzafi, this.zzafj, this.zzafk, this.f14827e, this.f14826d, this.f14828f, this.zzafo, this.zzafp, this.zzafq, this.f14829g, this.f14830h, this.zzafu, this.zzafv, this.f14831i, this.zzaft, this.zzafg, this.zzafh, this.f14824b);
    }
}
