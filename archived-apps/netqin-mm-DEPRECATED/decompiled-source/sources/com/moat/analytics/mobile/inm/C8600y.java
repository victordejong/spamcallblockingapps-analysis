package com.moat.analytics.mobile.inm;

import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.inm.y */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/y.class */
public class C8600y extends AbstractC8538c implements ReactiveVideoTracker {

    /* renamed from: l */
    public Integer f33395l;

    public C8600y(String str) {
        super(str);
        C8571p.m5104a(3, "ReactiveVideoTracker", this, "Initializing.");
        C8571p.m5099a("[SUCCESS] ", mo5037a() + " created");
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public String mo5037a() {
        return "ReactiveVideoTracker";
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    /* renamed from: a */
    public JSONObject mo5036a(MoatAdEvent moatAdEvent) {
        if (moatAdEvent.f33200d == MoatAdEventType.AD_EVT_COMPLETE && !moatAdEvent.f33198b.equals(MoatAdEvent.f33196a) && !m5219a(moatAdEvent.f33198b, this.f33395l)) {
            moatAdEvent.f33200d = MoatAdEventType.AD_EVT_STOPPED;
        }
        return super.mo5036a(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c, com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public void mo5035a(List<String> list) {
        if (this.f33395l.intValue() >= 1000) {
            super.mo5035a(list);
            return;
        }
        throw new C8562m(String.format(Locale.ROOT, "Invalid duration = %d. Please make sure duration is in milliseconds.", this.f33395l));
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    /* renamed from: i */
    public Map<String, Object> mo5034i() {
        Integer num;
        Integer num2;
        HashMap hashMap = new HashMap();
        View view = ((AbstractC8538c) this).f33231k.get();
        if (view != null) {
            num = Integer.valueOf(view.getWidth());
            num2 = Integer.valueOf(view.getHeight());
        } else {
            num = 0;
            num2 = 0;
        }
        hashMap.put(VastIconXmlManager.DURATION, this.f33395l);
        hashMap.put("width", num);
        hashMap.put("height", num2);
        return hashMap;
    }

    @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
    public boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
        try {
            m5232c();
            m5231d();
            this.f33395l = num;
            return super.mo5198a(map, view);
        } catch (Exception e) {
            m5233a("trackVideoAd", e);
            return false;
        }
    }
}
