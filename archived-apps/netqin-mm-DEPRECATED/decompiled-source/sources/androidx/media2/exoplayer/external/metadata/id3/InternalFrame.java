package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new C0310a();

    /* renamed from: b */
    public final String f1786b;

    /* renamed from: c */
    public final String f1787c;

    /* renamed from: d */
    public final String f1788d;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.InternalFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/InternalFrame$a.class */
    public class C0310a implements Parcelable.Creator<InternalFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    }

    public InternalFrame(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1786b = readString;
        String readString2 = parcel.readString();
        C1167d0.m34479a(readString2);
        this.f1787c = readString2;
        String readString3 = parcel.readString();
        C1167d0.m34479a(readString3);
        this.f1788d = readString3;
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f1786b = str;
        this.f1787c = str2;
        this.f1788d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        if (!C1167d0.m34478a((Object) this.f1787c, (Object) internalFrame.f1787c) || !C1167d0.m34478a((Object) this.f1786b, (Object) internalFrame.f1786b) || !C1167d0.m34478a((Object) this.f1788d, (Object) internalFrame.f1788d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1786b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1787c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1788d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1786b;
        String str3 = this.f1787c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": domain=");
        sb.append(str2);
        sb.append(", description=");
        sb.append(str3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1785a);
        parcel.writeString(this.f1786b);
        parcel.writeString(this.f1788d);
    }
}
