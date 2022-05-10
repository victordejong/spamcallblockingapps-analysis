package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/BinaryFrame.class */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new C0305a();

    /* renamed from: b */
    public final byte[] f1766b;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.BinaryFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/BinaryFrame$a.class */
    public class C0305a implements Parcelable.Creator<BinaryFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinaryFrame[] newArray(int i) {
            return new BinaryFrame[i];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BinaryFrame(android.os.Parcel r4) {
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
            r0 = r4
            byte[] r0 = r0.createByteArray()
            r4 = r0
            r0 = r4
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34479a(r0)
            r0 = r3
            r1 = r4
            byte[] r1 = (byte[]) r1
            r0.f1766b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.BinaryFrame.<init>(android.os.Parcel):void");
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f1766b = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        if (!this.f1785a.equals(binaryFrame.f1785a) || !Arrays.equals(this.f1766b, binaryFrame.f1766b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f1785a.hashCode()) * 31) + Arrays.hashCode(this.f1766b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1785a);
        parcel.writeByteArray(this.f1766b);
    }
}
