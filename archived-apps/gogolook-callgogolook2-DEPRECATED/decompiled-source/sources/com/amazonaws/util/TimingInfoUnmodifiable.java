package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfoUnmodifiable.class */
public final class TimingInfoUnmodifiable extends TimingInfo {
    public TimingInfoUnmodifiable(Long l, long j, Long l2) {
        super(l, j, l2);
    }

    @Override // com.amazonaws.util.TimingInfo
    public TimingInfo endTiming() {
        throw new UnsupportedOperationException();
    }
}
