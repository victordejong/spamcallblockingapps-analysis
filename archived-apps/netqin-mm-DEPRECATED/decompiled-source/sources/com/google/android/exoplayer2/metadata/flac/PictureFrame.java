package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame.class */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new C7142a();

    /* renamed from: a */
    public final int f22141a;

    /* renamed from: b */
    public final String f22142b;

    /* renamed from: c */
    public final String f22143c;

    /* renamed from: d */
    public final int f22144d;

    /* renamed from: e */
    public final int f22145e;

    /* renamed from: f */
    public final int f22146f;

    /* renamed from: g */
    public final int f22147g;

    /* renamed from: h */
    public final byte[] f22148h;

    /* renamed from: com.google.android.exoplayer2.metadata.flac.PictureFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/flac/PictureFrame$a.class */
    public static final class C7142a implements Parcelable.Creator<PictureFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureFrame[] newArray(int i) {
            return new PictureFrame[i];
        }
    }

    public PictureFrame(Parcel parcel) {
        this.f22141a = parcel.readInt();
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22142b = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22143c = readString2;
        this.f22144d = parcel.readInt();
        this.f22145e = parcel.readInt();
        this.f22146f = parcel.readInt();
        this.f22147g = parcel.readInt();
        byte[] createByteArray = parcel.createByteArray();
        C2885h0.m28670a(createByteArray);
        this.f22148h = createByteArray;
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
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        if (!(this.f22141a == pictureFrame.f22141a && this.f22142b.equals(pictureFrame.f22142b) && this.f22143c.equals(pictureFrame.f22143c) && this.f22144d == pictureFrame.f22144d && this.f22145e == pictureFrame.f22145e && this.f22146f == pictureFrame.f22146f && this.f22147g == pictureFrame.f22147g && Arrays.equals(this.f22148h, pictureFrame.f22148h))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f22141a) * 31) + this.f22142b.hashCode()) * 31) + this.f22143c.hashCode()) * 31) + this.f22144d) * 31) + this.f22145e) * 31) + this.f22146f) * 31) + this.f22147g) * 31) + Arrays.hashCode(this.f22148h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f22142b + ", description=" + this.f22143c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22141a);
        parcel.writeString(this.f22142b);
        parcel.writeString(this.f22143c);
        parcel.writeInt(this.f22144d);
        parcel.writeInt(this.f22145e);
        parcel.writeInt(this.f22146f);
        parcel.writeInt(this.f22147g);
        parcel.writeByteArray(this.f22148h);
    }
}
