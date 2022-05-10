package com.mopub.mobileads;

import com.mopub.common.Constants;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker.class */
public class VideoViewabilityTracker extends VastTracker {
    @AbstractC6134c(Constants.VAST_TRACKER_PERCENT_VIEWABLE)
    @AbstractC6132a
    public final int mPercentViewable;
    @AbstractC6134c(Constants.VAST_TRACKER_PLAYTIME_MS)
    @AbstractC6132a
    public final int mViewablePlaytimeMS;

    public VideoViewabilityTracker(int i, int i2, String str) {
        super(str);
        this.mViewablePlaytimeMS = i;
        this.mPercentViewable = i2;
    }

    public int getPercentViewable() {
        return this.mPercentViewable;
    }

    public int getViewablePlaytimeMS() {
        return this.mViewablePlaytimeMS;
    }
}
