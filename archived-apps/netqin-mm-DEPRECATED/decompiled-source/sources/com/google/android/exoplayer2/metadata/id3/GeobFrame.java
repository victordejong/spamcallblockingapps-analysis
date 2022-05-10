package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame.class */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new C7151a();

    /* renamed from: b */
    public final String f22179b;

    /* renamed from: c */
    public final String f22180c;

    /* renamed from: d */
    public final String f22181d;

    /* renamed from: e */
    public final byte[] f22182e;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.GeobFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame$a.class */
    public static final class C7151a implements Parcelable.Creator<GeobFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    }

    public GeobFrame(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22179b = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22180c = readString2;
        String readString3 = parcel.readString();
        C2885h0.m28670a(readString3);
        this.f22181d = readString3;
        byte[] createByteArray = parcel.createByteArray();
        C2885h0.m28670a(createByteArray);
        this.f22182e = createByteArray;
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f22179b = str;
        this.f22180c = str2;
        this.f22181d = str3;
        this.f22182e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        if (!C2885h0.m28669a((Object) this.f22179b, (Object) geobFrame.f22179b) || !C2885h0.m28669a((Object) this.f22180c, (Object) geobFrame.f22180c) || !C2885h0.m28669a((Object) this.f22181d, (Object) geobFrame.f22181d) || !Arrays.equals(this.f22182e, geobFrame.f22182e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22179b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22180c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f22181d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((527 + hashCode) * 31) + hashCode2) * 31) + i) * 31) + Arrays.hashCode(this.f22182e);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": mimeType=" + this.f22179b + ", filename=" + this.f22180c + ", description=" + this.f22181d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22179b);
        parcel.writeString(this.f22180c);
        parcel.writeString(this.f22181d);
        parcel.writeByteArray(this.f22182e);
    }
}
