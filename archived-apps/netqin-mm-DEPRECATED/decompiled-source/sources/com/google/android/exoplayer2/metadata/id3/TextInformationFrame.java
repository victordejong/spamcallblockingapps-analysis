package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new C7155a();

    /* renamed from: b */
    public final String f22194b;

    /* renamed from: c */
    public final String f22195c;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.TextInformationFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame$a.class */
    public static final class C7155a implements Parcelable.Creator<TextInformationFrame> {
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
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28670a(r0)
            r0 = r3
            r1 = r5
            java.lang.String r1 = (java.lang.String) r1
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f22194b = r1
            r0 = r4
            java.lang.String r0 = r0.readString()
            r4 = r0
            r0 = r4
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28670a(r0)
            r0 = r3
            r1 = r4
            java.lang.String r1 = (java.lang.String) r1
            r0.f22195c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.<init>(android.os.Parcel):void");
    }

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f22194b = str2;
        this.f22195c = str3;
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
        if (!this.f22183a.equals(textInformationFrame.f22183a) || !C2885h0.m28669a((Object) this.f22194b, (Object) textInformationFrame.f22194b) || !C2885h0.m28669a((Object) this.f22195c, (Object) textInformationFrame.f22195c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22183a.hashCode();
        String str = this.f22194b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f22195c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": description=" + this.f22194b + ": value=" + this.f22195c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22183a);
        parcel.writeString(this.f22194b);
        parcel.writeString(this.f22195c);
    }
}
