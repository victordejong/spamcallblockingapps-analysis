package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new C0308a();

    /* renamed from: b */
    public final String f1778b;

    /* renamed from: c */
    public final String f1779c;

    /* renamed from: d */
    public final String f1780d;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.CommentFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/CommentFrame$a.class */
    public class C0308a implements Parcelable.Creator<CommentFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    }

    public CommentFrame(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1778b = readString;
        String readString2 = parcel.readString();
        C1167d0.m34479a(readString2);
        this.f1779c = readString2;
        String readString3 = parcel.readString();
        C1167d0.m34479a(readString3);
        this.f1780d = readString3;
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f1778b = str;
        this.f1779c = str2;
        this.f1780d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        if (!C1167d0.m34478a((Object) this.f1779c, (Object) commentFrame.f1779c) || !C1167d0.m34478a((Object) this.f1778b, (Object) commentFrame.f1778b) || !C1167d0.m34478a((Object) this.f1780d, (Object) commentFrame.f1780d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1778b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1779c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1780d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1778b;
        String str3 = this.f1779c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": language=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1785a);
        parcel.writeString(this.f1778b);
        parcel.writeString(this.f1780d);
    }
}
