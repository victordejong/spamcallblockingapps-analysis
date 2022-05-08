package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ByteArrayFrame.class */
public final class ByteArrayFrame implements Metadata.Entry {
    public static final Parcelable.Creator<ByteArrayFrame> CREATOR = new Parcelable.Creator<ByteArrayFrame>() { // from class: androidx.media2.player.exoplayer.ByteArrayFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame createFromParcel(Parcel parcel) {
            return new ByteArrayFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ByteArrayFrame[] newArray(int i) {
            return new ByteArrayFrame[i];
        }
    };
    public final byte[] mData;
    public final long mTimestamp;

    public ByteArrayFrame(long j, byte[] bArr) {
        this.mTimestamp = j;
        this.mData = bArr;
    }

    public ByteArrayFrame(Parcel parcel) {
        this.mTimestamp = parcel.readLong();
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.mData = bArr;
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
        if (obj == null || ByteArrayFrame.class != obj.getClass()) {
            return false;
        }
        ByteArrayFrame byteArrayFrame = (ByteArrayFrame) obj;
        if (!Util.areEqual(Long.valueOf(this.mTimestamp), Long.valueOf(byteArrayFrame.mTimestamp)) || !Arrays.equals(this.mData, byteArrayFrame.mData)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + ((int) this.mTimestamp)) * 31) + Arrays.hashCode(this.mData);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mTimestamp);
        parcel.writeByteArray(this.mData);
    }
}
