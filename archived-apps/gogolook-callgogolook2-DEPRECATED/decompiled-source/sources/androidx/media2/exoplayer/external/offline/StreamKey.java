package androidx.media2.exoplayer.external.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.session.MediaSessionImplBase;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/StreamKey.class */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new Parcelable.Creator<StreamKey>() { // from class: androidx.media2.exoplayer.external.offline.StreamKey.1
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
    };
    public final int groupIndex;
    public final int periodIndex;
    public final int trackIndex;

    public StreamKey(int i, int i2) {
        this(0, i, i2);
    }

    public StreamKey(int i, int i2, int i3) {
        this.periodIndex = i;
        this.groupIndex = i2;
        this.trackIndex = i3;
    }

    public StreamKey(Parcel parcel) {
        this.periodIndex = parcel.readInt();
        this.groupIndex = parcel.readInt();
        this.trackIndex = parcel.readInt();
    }

    public int compareTo(@NonNull StreamKey streamKey) {
        int i = this.periodIndex - streamKey.periodIndex;
        int i2 = i;
        if (i == 0) {
            int i3 = this.groupIndex - streamKey.groupIndex;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.trackIndex - streamKey.trackIndex;
            }
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (!(this.periodIndex == streamKey.periodIndex && this.groupIndex == streamKey.groupIndex && this.trackIndex == streamKey.trackIndex)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.groupIndex) * 31) + this.trackIndex;
    }

    public String toString() {
        int i = this.periodIndex;
        int i2 = this.groupIndex;
        int i3 = this.trackIndex;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        sb.append(i2);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.periodIndex);
        parcel.writeInt(this.groupIndex);
        parcel.writeInt(this.trackIndex);
    }
}
