package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy.class */
public interface LoadErrorHandlingPolicy {
    long getBlacklistDurationMsFor(int i, long j, IOException iOException, int i2);

    int getMinimumLoadableRetryCount(int i);

    long getRetryDelayMsFor(int i, long j, IOException iOException, int i2);
}
