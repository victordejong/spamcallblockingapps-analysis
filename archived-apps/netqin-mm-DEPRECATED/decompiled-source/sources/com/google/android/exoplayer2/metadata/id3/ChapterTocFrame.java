package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame.class */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new C7149a();

    /* renamed from: b */
    public final String f22171b;

    /* renamed from: c */
    public final boolean f22172c;

    /* renamed from: d */
    public final boolean f22173d;

    /* renamed from: e */
    public final String[] f22174e;

    /* renamed from: f */
    public final Id3Frame[] f22175f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterTocFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame$a.class */
    public static final class C7149a implements Parcelable.Creator<ChapterTocFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame[] newArray(int i) {
            return new ChapterTocFrame[i];
        }
    }

    public ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22171b = readString;
        boolean z = true;
        this.f22172c = parcel.readByte() != 0;
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.f22173d = z;
        String[] createStringArray = parcel.createStringArray();
        C2885h0.m28670a(createStringArray);
        this.f22174e = createStringArray;
        int readInt = parcel.readInt();
        this.f22175f = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f22175f[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f22171b = str;
        this.f22172c = z;
        this.f22173d = z2;
        this.f22174e = strArr;
        this.f22175f = id3FrameArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        if (this.f22172c != chapterTocFrame.f22172c || this.f22173d != chapterTocFrame.f22173d || !C2885h0.m28669a((Object) this.f22171b, (Object) chapterTocFrame.f22171b) || !Arrays.equals(this.f22174e, chapterTocFrame.f22174e) || !Arrays.equals(this.f22175f, chapterTocFrame.f22175f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        boolean z = this.f22172c;
        boolean z2 = this.f22173d;
        String str = this.f22171b;
        return ((((527 + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22171b);
        parcel.writeByte(this.f22172c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f22173d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f22174e);
        parcel.writeInt(this.f22175f.length);
        for (Id3Frame id3Frame : this.f22175f) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
