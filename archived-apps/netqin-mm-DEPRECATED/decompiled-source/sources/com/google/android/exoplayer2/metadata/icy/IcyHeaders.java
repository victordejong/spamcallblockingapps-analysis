package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders.class */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new C7144a();

    /* renamed from: a */
    public final int f22151a;

    /* renamed from: b */
    public final String f22152b;

    /* renamed from: c */
    public final String f22153c;

    /* renamed from: d */
    public final String f22154d;

    /* renamed from: e */
    public final boolean f22155e;

    /* renamed from: f */
    public final int f22156f;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyHeaders$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders$a.class */
    public static final class C7144a implements Parcelable.Creator<IcyHeaders> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        C2877e.m28734a(i2 == -1 || i2 > 0);
        this.f22151a = i;
        this.f22152b = str;
        this.f22153c = str2;
        this.f22154d = str3;
        this.f22155e = z;
        this.f22156f = i2;
    }

    public IcyHeaders(Parcel parcel) {
        this.f22151a = parcel.readInt();
        this.f22152b = parcel.readString();
        this.f22153c = parcel.readString();
        this.f22154d = parcel.readString();
        this.f22155e = C2885h0.m28675a(parcel);
        this.f22156f = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders m18517a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.m18517a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
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
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.f22151a != icyHeaders.f22151a || !C2885h0.m28669a((Object) this.f22152b, (Object) icyHeaders.f22152b) || !C2885h0.m28669a((Object) this.f22153c, (Object) icyHeaders.f22153c) || !C2885h0.m28669a((Object) this.f22154d, (Object) icyHeaders.f22154d) || this.f22155e != icyHeaders.f22155e || this.f22156f != icyHeaders.f22156f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f22151a;
        String str = this.f22152b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22153c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f22154d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((527 + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f22155e ? 1 : 0)) * 31) + this.f22156f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f22153c + "\", genre=\"" + this.f22152b + "\", bitrate=" + this.f22151a + ", metadataInterval=" + this.f22156f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22151a);
        parcel.writeString(this.f22152b);
        parcel.writeString(this.f22153c);
        parcel.writeString(this.f22154d);
        C2885h0.m28674a(parcel, this.f22155e);
        parcel.writeInt(this.f22156f);
    }
}
