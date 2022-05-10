package androidx.media2.exoplayer.external.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray.class */
public final class TrackGroupArray implements Parcelable {

    /* renamed from: a */
    public final int f1859a;

    /* renamed from: b */
    public final TrackGroup[] f1860b;

    /* renamed from: c */
    public int f1861c;

    /* renamed from: d */
    public static final TrackGroupArray f1858d = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new C0326a();

    /* renamed from: androidx.media2.exoplayer.external.source.TrackGroupArray$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/TrackGroupArray$a.class */
    public class C0326a implements Parcelable.Creator<TrackGroupArray> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackGroupArray[] newArray(int i) {
            return new TrackGroupArray[i];
        }
    }

    public TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1859a = readInt;
        this.f1860b = new TrackGroup[readInt];
        for (int i = 0; i < this.f1859a; i++) {
            this.f1860b[i] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f1860b = trackGroupArr;
        this.f1859a = trackGroupArr.length;
    }

    /* renamed from: a */
    public int m37989a(TrackGroup trackGroup) {
        for (int i = 0; i < this.f1859a; i++) {
            if (this.f1860b[i] == trackGroup) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public TrackGroup m37990a(int i) {
        return this.f1860b[i];
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
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        if (this.f1859a != trackGroupArray.f1859a || !Arrays.equals(this.f1860b, trackGroupArray.f1860b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f1861c == 0) {
            this.f1861c = Arrays.hashCode(this.f1860b);
        }
        return this.f1861c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1859a);
        for (int i2 = 0; i2 < this.f1859a; i2++) {
            parcel.writeParcelable(this.f1860b[i2], 0);
        }
    }
}
