package com.google.android.exoplayer2;

import p131c.p161d.p170b.p188c.AbstractC2965r0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/IllegalSeekPositionException.class */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final AbstractC2965r0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(AbstractC2965r0 r0Var, int i, long j) {
        this.timeline = r0Var;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
