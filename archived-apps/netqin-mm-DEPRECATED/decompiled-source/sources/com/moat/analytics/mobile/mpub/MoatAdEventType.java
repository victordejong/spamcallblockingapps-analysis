package com.moat.analytics.mobile.mpub;

import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/MoatAdEventType.class */
public enum MoatAdEventType {
    AD_EVT_FIRST_QUARTILE(AvidVideoPlaybackListenerImpl.AD_VIDEO_FIRST_QUARTILE),
    AD_EVT_MID_POINT(AvidVideoPlaybackListenerImpl.AD_VIDEO_MIDPOINT),
    AD_EVT_THIRD_QUARTILE(AvidVideoPlaybackListenerImpl.AD_VIDEO_THIRD_QUARTILE),
    AD_EVT_COMPLETE(AvidVideoPlaybackListenerImpl.AD_VIDEO_COMPLETE),
    AD_EVT_PAUSED(AvidVideoPlaybackListenerImpl.AD_PAUSED),
    AD_EVT_PLAYING(AvidVideoPlaybackListenerImpl.AD_PLAYING),
    AD_EVT_START(AvidVideoPlaybackListenerImpl.AD_VIDEO_START),
    AD_EVT_STOPPED(AvidVideoPlaybackListenerImpl.AD_STOPPED),
    AD_EVT_SKIPPED(AvidVideoPlaybackListenerImpl.AD_SKIPPED),
    AD_EVT_VOLUME_CHANGE(AvidVideoPlaybackListenerImpl.AD_VOLUME_CHANGE),
    AD_EVT_ENTER_FULLSCREEN("fullScreen"),
    AD_EVT_EXIT_FULLSCREEN("exitFullscreen");
    

    /* renamed from: a */
    public final String f33421a;

    MoatAdEventType(String str) {
        this.f33421a = str;
    }

    public static MoatAdEventType fromString(String str) {
        MoatAdEventType[] values;
        if (str == null) {
            return null;
        }
        for (MoatAdEventType moatAdEventType : values()) {
            if (str.equalsIgnoreCase(moatAdEventType.toString())) {
                return moatAdEventType;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f33421a;
    }
}
