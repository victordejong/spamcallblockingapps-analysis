package com.inmobi.ads;

import android.text.TextUtils;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.p508a.C8326a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.be */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/be.class */
public final class C8152be extends C8103ak {

    /* renamed from: A */
    public boolean f31846A;

    /* renamed from: B */
    public boolean f31847B;

    /* renamed from: C */
    public boolean f31848C;

    /* renamed from: D */
    public boolean f31849D;

    /* renamed from: E */
    public int f31850E;

    /* renamed from: F */
    public int f31851F;

    /* renamed from: G */
    public Map<String, Object> f31852G;

    /* renamed from: H */
    public boolean f31853H;

    /* renamed from: z */
    public List<C8103ak> f31854z = new ArrayList();

    /* renamed from: com.inmobi.ads.be$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/be$a.class */
    public static final class C8153a extends C8104al {
        public C8153a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, C8144ba baVar) {
            super(i, i2, i3, i4, i5, i6, i7, i8, "none", "straight", "#ff000000", "#00000000", baVar);
        }
    }

    public C8152be(String str, String str2, C8104al alVar, AbstractC8196bz bzVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, List<NativeTracker> list, JSONObject jSONObject, boolean z6) {
        super(str, str2, "VIDEO", alVar);
        this.f31680e = bzVar;
        this.f31684i = 2;
        this.f31846A = z;
        this.f31847B = z2;
        this.f31848C = z3;
        this.f31849D = z4;
        this.f31853H = z6;
        if (bzVar != null) {
            this.f31693r = bzVar.mo6206a();
            List<NativeTracker> d = bzVar.mo6202d();
            Map<String, String> map = null;
            Map<String, String> map2 = null;
            if (list != null) {
                Iterator<NativeTracker> it = list.iterator();
                while (true) {
                    map = map2;
                    if (!it.hasNext()) {
                        break;
                    }
                    NativeTracker next = it.next();
                    if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS == next.f31407b) {
                        Map<String, String> map3 = next.f31408c;
                        map2 = map3;
                        if (!TextUtils.isEmpty(next.f31406a)) {
                            d.add(next);
                            map2 = map3;
                        }
                    } else {
                        d.add(next);
                    }
                }
            }
            for (NativeTracker nativeTracker : d) {
                if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS == nativeTracker.f31407b) {
                    nativeTracker.f31408c = map;
                }
            }
            if (!d.isEmpty()) {
                m6449a(d);
            }
        }
        if (jSONObject != null) {
            this.f31681f = jSONObject;
        }
        this.f31697v.put("placementType", AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE);
        this.f31697v.put("lastVisibleTimestamp", Integer.MIN_VALUE);
        this.f31697v.put("visible", false);
        this.f31697v.put("seekPosition", 0);
        this.f31697v.put("didStartPlaying", false);
        this.f31697v.put("didPause", false);
        this.f31697v.put("didCompleteQ1", false);
        this.f31697v.put("didCompleteQ2", false);
        this.f31697v.put("didCompleteQ3", false);
        this.f31697v.put("didCompleteQ4", false);
        this.f31697v.put("didRequestFullScreen", false);
        this.f31697v.put("isFullScreen", false);
        this.f31697v.put("didImpressionFire", false);
        this.f31697v.put("mapViewabilityParams", new HashMap());
        this.f31697v.put("didSignalVideoCompleted", false);
        this.f31697v.put("shouldAutoPlay", Boolean.valueOf(z5));
        this.f31697v.put("lastMediaVolume", 0);
        this.f31697v.put("currentMediaVolume", 0);
        this.f31697v.put("didQ4Fire", false);
    }

    /* renamed from: a */
    public final void m6312a(C8152be beVar) {
        this.f31697v.putAll(beVar.f31697v);
        this.f31852G.putAll(beVar.f31852G);
        this.f31696u = beVar.f31696u;
    }

    /* renamed from: a */
    public final boolean m6313a() {
        return this.f31853H ? this.f31846A && !C8326a.m5886d() : this.f31846A;
    }

    /* renamed from: b */
    public final AbstractC8196bz m6311b() {
        Object obj = this.f31680e;
        if (obj == null) {
            return null;
        }
        return (AbstractC8196bz) obj;
    }
}
