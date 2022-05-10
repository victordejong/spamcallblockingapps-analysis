package com.moat.analytics.mobile.inm;

import android.app.Activity;
import android.app.Application;
import android.media.MediaPlayer;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.NativeDisplayTracker;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.inm.v */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v.class */
public abstract class AbstractC8580v {

    /* renamed from: com.moat.analytics.mobile.inm.v$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v$a.class */
    public static class C8581a extends MoatAnalytics {
        @Override // com.moat.analytics.mobile.inm.MoatAnalytics
        public void prepareNativeDisplayTracking(String str) {
        }

        @Override // com.moat.analytics.mobile.inm.MoatAnalytics
        public void start(Application application) {
        }

        @Override // com.moat.analytics.mobile.inm.MoatAnalytics
        public void start(MoatOptions moatOptions, Application application) {
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.v$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v$b.class */
    public static class C8582b extends MoatFactory {
        @Override // com.moat.analytics.mobile.inm.MoatFactory
        public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
            return moatPlugin.mo5256b();
        }

        @Override // com.moat.analytics.mobile.inm.MoatFactory
        public NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map) {
            return new C8583c();
        }

        @Override // com.moat.analytics.mobile.inm.MoatFactory
        public NativeVideoTracker createNativeVideoTracker(String str) {
            return new C8584d();
        }

        @Override // com.moat.analytics.mobile.inm.MoatFactory
        public WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
            return new C8585e();
        }

        @Override // com.moat.analytics.mobile.inm.MoatFactory
        public WebAdTracker createWebAdTracker(WebView webView) {
            return new C8585e();
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.v$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v$c.class */
    public static class C8583c implements NativeDisplayTracker {
        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void startTracking() {
        }

        @Override // com.moat.analytics.mobile.inm.NativeDisplayTracker
        public void stopTracking() {
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.v$d */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v$d.class */
    public static class C8584d implements NativeVideoTracker {
        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public void stopTracking() {
        }

        @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
        public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
            return false;
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.v$e */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/v$e.class */
    public static class C8585e implements WebAdTracker {
        @Override // com.moat.analytics.mobile.inm.WebAdTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.inm.WebAdTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.inm.WebAdTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.WebAdTracker
        public void startTracking() {
        }

        @Override // com.moat.analytics.mobile.inm.WebAdTracker
        public void stopTracking() {
        }
    }
}
