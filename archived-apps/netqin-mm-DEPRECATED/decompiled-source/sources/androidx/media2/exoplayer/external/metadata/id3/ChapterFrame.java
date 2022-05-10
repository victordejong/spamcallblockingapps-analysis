package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterFrame.class */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new C0306a();

    /* renamed from: b */
    public final String f1767b;

    /* renamed from: c */
    public final int f1768c;

    /* renamed from: d */
    public final int f1769d;

    /* renamed from: e */
    public final long f1770e;

    /* renamed from: f */
    public final long f1771f;

    /* renamed from: g */
    public final Id3Frame[] f1772g;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.ChapterFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterFrame$a.class */
    public class C0306a implements Parcelable.Creator<ChapterFrame> {
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
        C1167d0.m34479a(readString);
        this.f1767b = readString;
        this.f1768c = parcel.readInt();
        this.f1769d = parcel.readInt();
        this.f1770e = parcel.readLong();
        this.f1771f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f1772g = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f1772g[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f1767b = str;
        this.f1768c = i;
        this.f1769d = i2;
        this.f1770e = j;
        this.f1771f = j2;
        this.f1772g = id3FrameArr;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame, android.os.Parcelable
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
        if (!(this.f1768c == chapterFrame.f1768c && this.f1769d == chapterFrame.f1769d && this.f1770e == chapterFrame.f1770e && this.f1771f == chapterFrame.f1771f && C1167d0.m34478a((Object) this.f1767b, (Object) chapterFrame.f1767b) && Arrays.equals(this.f1772g, chapterFrame.f1772g))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f1768c;
        int i2 = this.f1769d;
        int i3 = (int) this.f1770e;
        int i4 = (int) this.f1771f;
        String str = this.f1767b;
        return ((((((((527 + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1767b);
        parcel.writeInt(this.f1768c);
        parcel.writeInt(this.f1769d);
        parcel.writeLong(this.f1770e);
        parcel.writeLong(this.f1771f);
        parcel.writeInt(this.f1772g.length);
        for (Id3Frame id3Frame : this.f1772g) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
