package com.library.p518ad.data.net.request;

import android.util.Log;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p354f.C6120h;
import p131c.p161d.p354f.C6125m;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p399f.p400a.AbstractC6523a;
import p131c.p396i.p397a.p399f.p401b.p402f.C6538a;
import p131c.p396i.p397a.p406i.C6557b;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: com.library.ad.data.net.request.AdInfoReq */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/net/request/AdInfoReq.class */
public class AdInfoReq extends C6538a {
    public long appId = C6489a.f20204a;
    public String packageName = C6489a.m20718b().getPackageName();
    public String productId = C6489a.f20205b;
    public String deviceId = C6617d.m20357a();
    public String appVersion = C6617d.m20349c();
    public int appVerCode = C6617d.m20351b();
    public String sdkVersion = C6617d.m20336l();
    public int sdkVerCode = C6617d.m20337k();
    public String phoneVersion = C6617d.m20338j();

    /* renamed from: ua */
    public String f33152ua = C6617d.m20335m();
    public String country = C6617d.m20347d();
    public int userType = !C6618e.m20334a().m20329a("key_is_new_user", true).booleanValue();

    /* renamed from: net  reason: collision with root package name */
    public String f38773net = C6617d.m20345e();
    public C6125m adTypes = m5304a();

    public AdInfoReq() {
        super("adStrategyInfo/", "");
    }

    /* renamed from: a */
    public final C6125m m5304a() {
        C6125m mVar = new C6125m();
        ConcurrentHashMap<String, Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>>> a = C6557b.m20501b().m20505a();
        if (a.isEmpty()) {
            Log.e("GA_AD", "需要先添加配置信息");
        }
        for (Map.Entry<String, Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>>> entry : a.entrySet()) {
            String key = entry.getKey();
            Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> value = entry.getValue();
            C6125m mVar2 = new C6125m();
            for (String str : AbstractC6523a.f20286a) {
                m5303a(mVar2, str, value);
            }
            mVar.m21953a(key, mVar2);
        }
        return mVar;
    }

    /* renamed from: a */
    public final void m5303a(C6125m mVar, String str, Map<String, ?> map) {
        C6120h hVar = new C6120h();
        if (map != null && map.containsKey(str)) {
            hVar.m21962a((Number) 1);
        }
        if ("FB".equals(str) || "AM".equals(str) || "MP".equals(str) || "BM".equals(str)) {
            hVar.m21962a((Number) 2);
            hVar.m21962a((Number) 3);
            hVar.m21962a((Number) 6);
        }
        if (hVar.size() > 0) {
            mVar.m21953a(str, hVar);
        }
    }
}
