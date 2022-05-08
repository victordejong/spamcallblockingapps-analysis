package androidx.media2.common;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.versionedparcelable.VersionedParcelable;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleData.class */
public final class SubtitleData implements VersionedParcelable {
    public static final String MIMETYPE_TEXT_CEA_608 = "text/cea-608";
    public static final String MIMETYPE_TEXT_CEA_708 = "text/cea-708";
    public static final String MIMETYPE_TEXT_VTT = "text/vtt";
    public static final String TAG = "SubtitleData";
    public byte[] mData;
    public long mDurationUs;
    public long mStartTimeUs;

    public SubtitleData() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SubtitleData(long j, long j2, @NonNull byte[] bArr) {
        this.mStartTimeUs = j;
        this.mDurationUs = j2;
        this.mData = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || SubtitleData.class != obj.getClass()) {
            return false;
        }
        SubtitleData subtitleData = (SubtitleData) obj;
        if (!(this.mStartTimeUs == subtitleData.mStartTimeUs && this.mDurationUs == subtitleData.mDurationUs && Arrays.equals(this.mData, subtitleData.mData))) {
            z = false;
        }
        return z;
    }

    @NonNull
    public byte[] getData() {
        return this.mData;
    }

    public long getDurationUs() {
        return this.mDurationUs;
    }

    public long getStartTimeUs() {
        return this.mStartTimeUs;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Long.valueOf(this.mStartTimeUs), Long.valueOf(this.mDurationUs), Integer.valueOf(Arrays.hashCode(this.mData)));
    }
}
