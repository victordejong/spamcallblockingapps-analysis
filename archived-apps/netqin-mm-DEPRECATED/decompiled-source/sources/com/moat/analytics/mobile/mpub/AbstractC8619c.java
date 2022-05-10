package com.moat.analytics.mobile.mpub;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.moat.analytics.mobile.mpub.C8624g;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.c */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/c.class */
public abstract class AbstractC8619c extends AbstractC8618b {

    /* renamed from: g */
    public static final MoatAdEventType[] f33444g = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};

    /* renamed from: h */
    public final Map<MoatAdEventType, Integer> f33445h;

    /* renamed from: i */
    public final Handler f33446i;

    /* renamed from: j */
    public Map<String, String> f33447j;

    /* renamed from: k */
    public WeakReference<View> f33448k;

    /* renamed from: l */
    public final Set<MoatAdEventType> f33449l;

    /* renamed from: m */
    public VideoTrackerListener f33450m;

    /* renamed from: n */
    public boolean f33451n;

    /* renamed from: o */
    public Double f33452o;

    /* renamed from: p */
    public final C8624g f33453p;

    /* renamed from: q */
    public final String f33454q;

    public AbstractC8619c(String str) {
        super(null, false, true);
        C8652p.m4848a(3, "BaseVideoTracker", this, "Initializing.");
        this.f33454q = str;
        C8624g gVar = new C8624g(C8612a.m4997a(), C8624g.EnumC8629a.VIDEO);
        this.f33453p = gVar;
        super.m4978a(gVar.f33459b);
        try {
            super.m4979a(this.f33453p.f33458a);
        } catch (C8643m e) {
            this.f33433a = e;
        }
        this.f33445h = new HashMap();
        this.f33449l = new HashSet();
        this.f33446i = new Handler();
        this.f33451n = false;
        this.f33452o = Double.valueOf(1.0d);
    }

    /* renamed from: a */
    public static boolean m4966a(MoatAdEventType moatAdEventType) {
        return moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED;
    }

    /* renamed from: b */
    private void m4961b(MoatAdEvent moatAdEvent) {
        C8636j jVar;
        JSONObject a = mo4780a(moatAdEvent);
        C8652p.m4848a(3, "BaseVideoTracker", this, String.format("Received event: %s", a.toString()));
        C8652p.m4843a("[SUCCESS] ", mo4781a() + String.format(" Received event: %s", a.toString()));
        if (m4974e() && (jVar = this.f33435c) != null) {
            jVar.m4920a(this.f33453p.f33460c, a);
            if (!this.f33449l.contains(moatAdEvent.f33417d)) {
                this.f33449l.add(moatAdEvent.f33417d);
                VideoTrackerListener videoTrackerListener = this.f33450m;
                if (videoTrackerListener != null) {
                    videoTrackerListener.onVideoEventReported(moatAdEvent.f33417d);
                }
            }
        }
        MoatAdEventType moatAdEventType = moatAdEvent.f33417d;
        if (m4966a(moatAdEventType)) {
            this.f33445h.put(moatAdEventType, 1);
            C8636j jVar2 = this.f33435c;
            if (jVar2 != null) {
                jVar2.m4913c(this);
            }
            m4958l();
        }
    }

    /* renamed from: a */
    public JSONObject mo4780a(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.f33416c.doubleValue())) {
            moatAdEvent.f33416c = this.f33452o;
        }
        return new JSONObject(moatAdEvent.m5003a());
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public void mo4779a(List<String> list) {
        if (this.f33447j == null) {
            list.add("Null adIds object");
        }
        if (list.isEmpty()) {
            super.mo4779a(list);
            return;
        }
        throw new C8643m(TextUtils.join(" and ", list));
    }

    /* renamed from: a */
    public boolean m4963a(Integer num, Integer num2) {
        int abs = Math.abs(num2.intValue() - num.intValue());
        double intValue = num2.intValue();
        Double.isNaN(intValue);
        return ((double) abs) <= Math.min(750.0d, intValue * 0.05d);
    }

    /* renamed from: a */
    public boolean mo4942a(Map<String, String> map, View view) {
        try {
            m4976c();
            m4975d();
            if (view == null) {
                C8652p.m4848a(3, "BaseVideoTracker", this, "trackVideoAd received null video view instance");
            }
            this.f33447j = map;
            this.f33448k = new WeakReference<>(view);
            mo4962b();
            String format = String.format("trackVideoAd tracking ids: %s | view: %s", new JSONObject(map).toString(), C8652p.m4847a(view));
            C8652p.m4848a(3, "BaseVideoTracker", this, format);
            C8652p.m4843a("[SUCCESS] ", mo4781a() + " " + format);
            if (this.f33436d == null) {
                return true;
            }
            this.f33436d.onTrackingStarted(m4972g());
            return true;
        } catch (Exception e) {
            m4977a("trackVideoAd", e);
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: b */
    public void mo4962b() {
        super.changeTargetView(this.f33448k.get());
        super.mo4962b();
        Map<String, Object> i = mo4778i();
        Integer num = (Integer) i.get("width");
        Integer num2 = (Integer) i.get("height");
        Integer num3 = (Integer) i.get(VastIconXmlManager.DURATION);
        C8652p.m4848a(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.f33453p.m4947a(this.f33454q, this.f33447j, num, num2, num3);
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    public void changeTargetView(View view) {
        C8652p.m4848a(3, "BaseVideoTracker", this, "changing view to " + C8652p.m4847a(view));
        this.f33448k = new WeakReference<>(view);
        try {
            super.changeTargetView(view);
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            m4961b(moatAdEvent);
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: i */
    public abstract Map<String, Object> mo4778i();

    /* renamed from: j */
    public Double m4960j() {
        return Double.valueOf(m4959k().doubleValue() * C8655s.m4838a());
    }

    /* renamed from: k */
    public Double m4959k() {
        return this.f33452o;
    }

    /* renamed from: l */
    public void m4958l() {
        if (!this.f33451n) {
            this.f33451n = true;
            this.f33446i.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.mpub.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C8652p.m4848a(3, "BaseVideoTracker", this, "Shutting down.");
                        AbstractC8619c.this.f33453p.m4952a();
                        AbstractC8619c.this.f33450m = null;
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                    }
                }
            }, 500L);
        }
    }

    /* renamed from: m */
    public boolean m4957m() {
        return this.f33445h.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.f33445h.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.f33445h.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    public void removeVideoListener() {
        this.f33450m = null;
    }

    public void setPlayerVolume(Double d) {
        Double j = m4960j();
        if (!d.equals(this.f33452o)) {
            C8652p.m4848a(3, "BaseVideoTracker", this, String.format(Locale.ROOT, "player volume changed to %f ", d));
            this.f33452o = d;
            if (!j.equals(m4960j())) {
                dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_VOLUME_CHANGE, MoatAdEvent.f33413a, this.f33452o));
            }
        }
    }

    public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        this.f33450m = videoTrackerListener;
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    public void stopTracking() {
        try {
            super.stopTracking();
            m4958l();
            if (this.f33450m != null) {
                this.f33450m = null;
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }
}
