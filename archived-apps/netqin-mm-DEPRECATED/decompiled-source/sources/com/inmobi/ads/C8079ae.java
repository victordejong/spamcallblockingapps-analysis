package com.inmobi.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.moat.analytics.mobile.inm.NativeDisplayTracker;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.ae */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ae.class */
public class C8079ae extends AbstractC8212ca {

    /* renamed from: d */
    public final String f31592d = C8079ae.class.getSimpleName();

    /* renamed from: e */
    public final WeakReference<Activity> f31593e;

    /* renamed from: f */
    public NativeDisplayTracker f31594f;

    /* renamed from: g */
    public Map<String, Object> f31595g;

    /* renamed from: h */
    public AbstractC8213cb f31596h;

    public C8079ae(Activity activity, AbstractC8213cb cbVar, Map<String, Object> map) {
        this.f31593e = new WeakReference<>(activity);
        this.f31596h = cbVar;
        this.f31595g = map;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5945a() {
        return this.f31596h.mo5945a();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        return this.f31596h.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        try {
            if (4 == i) {
                try {
                    this.f31594f.reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType.CLICK);
                    StringBuilder sb = new StringBuilder("Received click event for DisplayTracker(");
                    sb.append(this.f31594f.hashCode());
                    sb.append(")");
                } catch (Exception e) {
                    new StringBuilder("Exception in onAdEvent with message : ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        } finally {
            this.f31596h.mo5944a(i);
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        this.f31596h.mo5943a(context, i);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                View b = this.f31596h.mo5936b();
                if (b != null) {
                    Activity activity = this.f31593e.get();
                    if (this.f31596h.mo5935c().f31992k.f32065i && activity != null && ((Boolean) this.f31595g.get("enabled")).booleanValue()) {
                        if (this.f31594f == null) {
                            Application application = activity.getApplication();
                            String str = (String) this.f31595g.get("partnerCode");
                            HashMap<String, String> a = AbstractC8252i.C8284d.m5993a("moatClientLevel", "moatClientSlicer", (JSONArray) this.f31595g.get("clientLevels"), (JSONArray) this.f31595g.get("clientSlicers"), (JSONObject) this.f31595g.get("zMoatExtras"));
                            a.put("zMoatIID", (String) this.f31595g.get("zMoatIID"));
                            this.f31594f = C8320z.m5909a(application, str, b, a);
                        }
                        b.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.ads.ae.1
                            @Override // android.view.View.OnTouchListener
                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                C8079ae.this.f31594f.reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType.TOUCH);
                                StringBuilder sb = new StringBuilder("Received touch event for DisplayTracker(");
                                sb.append(C8079ae.this.f31594f.hashCode());
                                sb.append(")");
                                return true;
                            }
                        });
                        this.f31594f.startTracking();
                        new StringBuilder("Moat initialized for Native Display for ID : ").append(this.f31595g.get("zMoatIID"));
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31596h.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f31596h.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f31596h.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f31596h.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                if (this.f31594f != null) {
                    this.f31594f.stopTracking();
                    new StringBuilder("Moat stopped tracking for Native Display for ID : ").append(this.f31595g.get("zMoatIID"));
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31596h.mo5934d();
        } catch (Throwable th) {
            this.f31596h.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        this.f31594f = null;
        this.f31593e.clear();
        super.mo5933e();
        this.f31596h.mo5933e();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: f */
    public final AbstractC8213cb.AbstractC8214a mo5932f() {
        return this.f31596h.mo5932f();
    }
}
