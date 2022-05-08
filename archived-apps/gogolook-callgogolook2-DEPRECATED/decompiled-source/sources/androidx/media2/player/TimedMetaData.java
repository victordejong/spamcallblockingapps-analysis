package androidx.media2.player;

import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/TimedMetaData.class */
public class TimedMetaData {
    public static final String TAG = "TimedMetaData";
    public byte[] mMetaData;
    public long mTimestampUs;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public TimedMetaData(long j, byte[] bArr) {
        this.mTimestampUs = j;
        this.mMetaData = bArr;
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public TimedMetaData(android.media.TimedMetaData timedMetaData) {
        this.mTimestampUs = timedMetaData.getTimestamp();
        this.mMetaData = timedMetaData.getMetaData();
    }

    public byte[] getMetaData() {
        return this.mMetaData;
    }

    public long getTimestamp() {
        return this.mTimestampUs;
    }
}
