package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new C0313a();

    /* renamed from: b */
    public final String f1796b;

    /* renamed from: c */
    public final String f1797c;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/TextInformationFrame$a.class */
    public class C0313a implements Parcelable.Creator<TextInformationFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInformationFrame(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            r0 = r5
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34479a(r0)
            r0 = r3
            r1 = r5
            java.lang.String r1 = (java.lang.String) r1
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f1796b = r1
            r0 = r4
            java.lang.String r0 = r0.readString()
            r4 = r0
            r0 = r4
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34479a(r0)
            r0 = r3
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
            r0.f1797c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame.<init>(android.os.Parcel):void");
    }

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f1796b = str2;
        this.f1797c = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (!this.f1785a.equals(textInformationFrame.f1785a) || !C1167d0.m34478a((Object) this.f1796b, (Object) textInformationFrame.f1796b) || !C1167d0.m34478a((Object) this.f1797c, (Object) textInformationFrame.f1797c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f1785a.hashCode();
        String str = this.f1796b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f1797c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f1785a;
        String str2 = this.f1797c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1785a);
        parcel.writeString(this.f1796b);
        parcel.writeString(this.f1797c);
    }
}
