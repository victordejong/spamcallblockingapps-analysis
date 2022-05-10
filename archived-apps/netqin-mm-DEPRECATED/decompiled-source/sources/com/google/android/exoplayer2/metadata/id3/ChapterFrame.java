package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame.class */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new C7148a();

    /* renamed from: b */
    public final String f22165b;

    /* renamed from: c */
    public final int f22166c;

    /* renamed from: d */
    public final int f22167d;

    /* renamed from: e */
    public final long f22168e;

    /* renamed from: f */
    public final long f22169f;

    /* renamed from: g */
    public final Id3Frame[] f22170g;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame$a.class */
    public static final class C7148a implements Parcelable.Creator<ChapterFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterFrame[] newArray(int i) {
            return new ChapterFrame[i];
        }
    }

    public ChapterFrame(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22165b = readString;
        this.f22166c = parcel.readInt();
        this.f22167d = parcel.readInt();
        this.f22168e = parcel.readLong();
        this.f22169f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f22170g = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f22170g[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f22165b = str;
        this.f22166c = i;
        this.f22167d = i2;
        this.f22168e = j;
        this.f22169f = j2;
        this.f22170g = id3FrameArr;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterFrame.class != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        if (!(this.f22166c == chapterFrame.f22166c && this.f22167d == chapterFrame.f22167d && this.f22168e == chapterFrame.f22168e && this.f22169f == chapterFrame.f22169f && C2885h0.m28669a((Object) this.f22165b, (Object) chapterFrame.f22165b) && Arrays.equals(this.f22170g, chapterFrame.f22170g))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f22166c;
        int i2 = this.f22167d;
        int i3 = (int) this.f22168e;
        int i4 = (int) this.f22169f;
        String str = this.f22165b;
        return ((((((((527 + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22165b);
        parcel.writeInt(this.f22166c);
        parcel.writeInt(this.f22167d);
        parcel.writeLong(this.f22168e);
        parcel.writeLong(this.f22169f);
        parcel.writeInt(this.f22170g.length);
        for (Id3Frame id3Frame : this.f22170g) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
