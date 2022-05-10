package androidx.media2.exoplayer.external.offline;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new C0323a();

    /* renamed from: a */
    public final int f1835a;

    /* renamed from: b */
    public final int f1836b;

    /* renamed from: c */
    public final int f1837c;

    /* renamed from: androidx.media2.exoplayer.external.offline.StreamKey$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey$a.class */
    public class C0323a implements Parcelable.Creator<StreamKey> {
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
        this.f1835a = parcel.readInt();
        this.f1836b = parcel.readInt();
        this.f1837c = parcel.readInt();
    }

    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i = this.f1835a - streamKey.f1835a;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f1836b - streamKey.f1836b;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.f1837c - streamKey.f1837c;
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
        if (!(this.f1835a == streamKey.f1835a && this.f1836b == streamKey.f1836b && this.f1837c == streamKey.f1837c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f1835a * 31) + this.f1836b) * 31) + this.f1837c;
    }

    public String toString() {
        int i = this.f1835a;
        int i2 = this.f1836b;
        int i3 = this.f1837c;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1835a);
        parcel.writeInt(this.f1836b);
        parcel.writeInt(this.f1837c);
    }
}
