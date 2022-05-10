package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame.class */
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new C7153a();

    /* renamed from: b */
    public final int f22187b;

    /* renamed from: c */
    public final int f22188c;

    /* renamed from: d */
    public final int f22189d;

    /* renamed from: e */
    public final int[] f22190e;

    /* renamed from: f */
    public final int[] f22191f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.MlltFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/MlltFrame$a.class */
    public static final class C7153a implements Parcelable.Creator<MlltFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MlltFrame[] newArray(int i) {
            return new MlltFrame[i];
        }
    }

    public MlltFrame(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f22187b = i;
        this.f22188c = i2;
        this.f22189d = i3;
        this.f22190e = iArr;
        this.f22191f = iArr2;
    }

    public MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f22187b = parcel.readInt();
        this.f22188c = parcel.readInt();
        this.f22189d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        C2885h0.m28670a(createIntArray);
        this.f22190e = createIntArray;
        int[] createIntArray2 = parcel.createIntArray();
        C2885h0.m28670a(createIntArray2);
        this.f22191f = createIntArray2;
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
        if (obj == null || MlltFrame.class != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        if (!(this.f22187b == mlltFrame.f22187b && this.f22188c == mlltFrame.f22188c && this.f22189d == mlltFrame.f22189d && Arrays.equals(this.f22190e, mlltFrame.f22190e) && Arrays.equals(this.f22191f, mlltFrame.f22191f))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((527 + this.f22187b) * 31) + this.f22188c) * 31) + this.f22189d) * 31) + Arrays.hashCode(this.f22190e)) * 31) + Arrays.hashCode(this.f22191f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22187b);
        parcel.writeInt(this.f22188c);
        parcel.writeInt(this.f22189d);
        parcel.writeIntArray(this.f22190e);
        parcel.writeIntArray(this.f22191f);
    }
}
