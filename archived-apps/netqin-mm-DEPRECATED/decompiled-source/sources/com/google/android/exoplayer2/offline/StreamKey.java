package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C7169a();

    /* renamed from: a */
    public final int f22253a;

    /* renamed from: b */
    public final int f22254b;

    /* renamed from: c */
    public final int f22255c;

    /* renamed from: com.google.android.exoplayer2.offline.StreamKey$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/StreamKey$a.class */
    public static final class C7169a implements Parcelable.Creator<StreamKey> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StreamKey[] newArray(int i) {
            return new StreamKey[i];
        }
    }

    public StreamKey(Parcel parcel) {
        this.f22253a = parcel.readInt();
        this.f22254b = parcel.readInt();
        this.f22255c = parcel.readInt();
    }

    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i = this.f22253a - streamKey.f22253a;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f22254b - streamKey.f22254b;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f22255c - streamKey.f22255c;
            }
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (!(this.f22253a == streamKey.f22253a && this.f22254b == streamKey.f22254b && this.f22255c == streamKey.f22255c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f22253a * 31) + this.f22254b) * 31) + this.f22255c;
    }

    public String toString() {
        return this.f22253a + "." + this.f22254b + "." + this.f22255c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22253a);
        parcel.writeInt(this.f22254b);
        parcel.writeInt(this.f22255c);
    }
}
