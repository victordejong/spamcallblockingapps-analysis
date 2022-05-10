package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame.class */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new C7154a();

    /* renamed from: b */
    public final String f22192b;

    /* renamed from: c */
    public final byte[] f22193c;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.PrivFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame$a.class */
    public static final class C7154a implements Parcelable.Creator<PrivFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    }

    public PrivFrame(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22192b = readString;
        byte[] createByteArray = parcel.createByteArray();
        C2885h0.m28670a(createByteArray);
        this.f22193c = createByteArray;
    }

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f22192b = str;
        this.f22193c = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        if (!C2885h0.m28669a((Object) this.f22192b, (Object) privFrame.f22192b) || !Arrays.equals(this.f22193c, privFrame.f22193c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22192b;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f22193c);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": owner=" + this.f22192b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22192b);
        parcel.writeByteArray(this.f22193c);
    }
}
