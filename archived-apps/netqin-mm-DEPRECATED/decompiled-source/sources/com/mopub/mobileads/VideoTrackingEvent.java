package com.mopub.mobileads;

import p573f.p576c0.C9925q;
import p573f.p590w.p592c.C10057o;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent.class */
public enum VideoTrackingEvent {
    START("start"),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE("complete"),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");
    
    public static final Companion Companion = new Companion(null);
    public final String value;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final VideoTrackingEvent fromString(String str) {
            VideoTrackingEvent videoTrackingEvent;
            VideoTrackingEvent[] values = VideoTrackingEvent.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    videoTrackingEvent = null;
                    break;
                }
                VideoTrackingEvent videoTrackingEvent2 = values[i];
                if (C9925q.m1781a(videoTrackingEvent2.getValue(), str, true)) {
                    videoTrackingEvent = videoTrackingEvent2;
                    break;
                }
                i++;
            }
            if (videoTrackingEvent == null) {
                videoTrackingEvent = VideoTrackingEvent.UNKNOWN;
            }
            return videoTrackingEvent;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoTrackingEvent$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 1;
            $EnumSwitchMapping$0[VideoTrackingEvent.MIDPOINT.ordinal()] = 2;
            $EnumSwitchMapping$0[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 3;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPLETE.ordinal()] = 4;
        }
    }

    VideoTrackingEvent(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    public final float toFloat() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? 0.0f : 1.0f : 0.75f : 0.5f : 0.25f;
    }
}
