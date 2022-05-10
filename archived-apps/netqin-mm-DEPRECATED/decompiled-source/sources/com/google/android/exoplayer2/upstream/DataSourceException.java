package com.google.android.exoplayer2.upstream;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DataSourceException.class */
public final class DataSourceException extends IOException {
    public static final int POSITION_OUT_OF_RANGE = 0;
    public final int reason;

    public DataSourceException(int i) {
        this.reason = i;
    }
}
