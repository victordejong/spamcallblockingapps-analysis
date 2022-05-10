package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.sdk.AppLovinEventTypes;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8197c;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.moat.analytics.mobile.inm.MoatAdEvent;
import com.moat.analytics.mobile.inm.MoatAdEventType;
import com.moat.analytics.mobile.inm.ReactiveVideoTracker;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.af */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/af.class */
public class C8081af extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f31598d = "af";

    /* renamed from: e */
    public final WeakReference<Activity> f31599e;

    /* renamed from: f */
    public ReactiveVideoTracker f31600f;

    /* renamed from: g */
    public Map<String, Object> f31601g;

    /* renamed from: h */
    public AbstractC8213cb f31602h;

    /* renamed from: i */
    public boolean f31603i = false;

    public C8081af(Activity activity, AbstractC8213cb cbVar, C8148bd bdVar, Map<String, Object> map) {
        super(bdVar);
        this.f31599e = new WeakReference<>(activity);
        this.f31602h = cbVar;
        this.f31601g = map;
        this.f31600f = (ReactiveVideoTracker) map.get("moatTracker");
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return this.f31602h.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        try {
            try {
                if (this.f31600f != null) {
                    StringBuilder sb = new StringBuilder("Received event : ");
                    sb.append(i);
                    sb.append(" for VideoTracker(");
                    sb.append(this.f31600f.hashCode());
                    sb.append(")");
                    switch (i) {
                        case 1:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_ENTER_FULLSCREEN));
                            break;
                        case 2:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_EXIT_FULLSCREEN));
                            break;
                        case 3:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_STOPPED));
                            break;
                        case 5:
                        case 16:
                            NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) this.f32074a.getVideoContainerView();
                            if (!(nativeVideoWrapper == null || this.f31600f == null)) {
                                NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                                if (!this.f31603i) {
                                    this.f31600f.changeTargetView(nativeVideoWrapper);
                                    break;
                                } else {
                                    ReactiveVideoTracker reactiveVideoTracker = this.f31600f;
                                    HashMap<String, String> a = AbstractC8252i.C8284d.m5993a(AppLovinEventTypes.USER_COMPLETED_LEVEL, "slicer", (JSONArray) this.f31601g.get("clientLevels"), (JSONArray) this.f31601g.get("clientSlicers"), (JSONObject) this.f31601g.get("zMoatExtras"));
                                    a.put("zMoatVASTIDs", (String) this.f31601g.get("zMoatVASTIDs"));
                                    reactiveVideoTracker.trackVideoAd(a, Integer.valueOf(videoView.getDuration()), nativeVideoWrapper);
                                    this.f31603i = false;
                                    break;
                                }
                            }
                            break;
                        case 6:
                            NativeVideoWrapper nativeVideoWrapper2 = (NativeVideoWrapper) this.f32074a.getVideoContainerView();
                            if (nativeVideoWrapper2 != null) {
                                this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_START, Integer.valueOf(nativeVideoWrapper2.getVideoView().getMediaPlayer().getCurrentPosition())));
                                break;
                            }
                            break;
                        case 7:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_PAUSED));
                            break;
                        case 8:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_PLAYING));
                            break;
                        case 9:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_FIRST_QUARTILE));
                            break;
                        case 10:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_MID_POINT));
                            break;
                        case 11:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_THIRD_QUARTILE));
                            break;
                        case 12:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
                            break;
                        case 13:
                            this.f31600f.setPlayerVolume(MoatAdEvent.VOLUME_MUTED);
                            break;
                        case 14:
                            this.f31600f.setPlayerVolume(MoatAdEvent.VOLUME_UNMUTED);
                            break;
                        case 15:
                            this.f31600f.dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_SKIPPED));
                            break;
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in onAdEvent with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31602h.mo5944a(i);
        } catch (Throwable th) {
            this.f31602h.mo5944a(i);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        this.f31602h.mo5943a(context, i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                Activity activity = this.f31599e.get();
                C8197c.C8209l lVar = this.f31602h.mo5935c().f31992k;
                if (activity != null && (this.f32074a instanceof C8148bd) && lVar.f32065i && ((Boolean) this.f31601g.get("enabled")).booleanValue() && this.f31600f == null) {
                    ReactiveVideoTracker a = C8320z.m5910a(activity.getApplication(), (String) this.f31601g.get("partnerCode"));
                    this.f31600f = a;
                    this.f31601g.put("moatTracker", a);
                    this.f31603i = true;
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31602h.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f31602h.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f31602h.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f31602h.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                if (!((C8148bd) this.f32074a).mo6320i() && this.f31600f != null) {
                    this.f31600f.stopTracking();
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31602h.mo5934d();
        } catch (Throwable th) {
            this.f31602h.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        this.f31600f = null;
        this.f31599e.clear();
        super.mo5933e();
        this.f31602h.mo5933e();
    }
}
