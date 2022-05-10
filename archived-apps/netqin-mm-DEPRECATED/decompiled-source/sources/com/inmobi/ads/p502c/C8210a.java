package com.inmobi.ads.p502c;

import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8047a;
import com.inmobi.ads.C8223d;
import com.inmobi.ads.C8247h;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.p501b.C8143b;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
/* renamed from: com.inmobi.ads.c.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c/a.class */
public final class C8210a {

    /* renamed from: a */
    public AbstractC8252i f32068a;

    /* renamed from: b */
    public String f32069b;

    /* renamed from: c */
    public long f32070c;

    /* renamed from: d */
    public C8211b f32071d;

    public C8210a(AbstractC8252i iVar, String str) {
        this.f32068a = iVar;
        this.f32069b = str;
    }

    /* renamed from: a */
    public final byte[] m6188a() throws C8143b {
        this.f32068a.m6050d("AdCacheImpressionRequested");
        this.f32068a.m6041i();
        C8247h.m6123a();
        C8247h i = this.f32068a.m6041i();
        AbstractC8252i iVar = this.f32068a;
        long j = iVar.f32196d;
        iVar.mo5975b();
        String c = this.f32068a.mo5972c();
        InMobiAdRequest.MonetizationContext l = this.f32068a.mo6036l();
        String str = this.f32069b;
        C8247h.m6107c();
        List<C8047a> d = i.f32165d.f32020e ? i.f32163b.m6152d(j, c, l, str) : i.f32163b.m6155c(j, c, l, str);
        C8047a aVar = d.size() == 0 ? null : d.get(0);
        this.f32071d = new C8211b(this.f32068a.m6057b(true), aVar == null ? null : Collections.singletonList(aVar));
        if (aVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("impId", aVar.f31479g);
            this.f32068a.m6052c("AdCacheImpressionOffered", hashMap);
        }
        if (aVar != null) {
            C8247h i2 = this.f32068a.m6041i();
            String str2 = aVar.f31479g;
            C8223d dVar = i2.f32163b;
            C8223d.m6158b(str2);
        }
        this.f32068a.m6041i().m6121a(this.f32068a.m6057b(true));
        this.f32070c = System.currentTimeMillis();
        try {
            return this.f32071d.m6187a();
        } catch (JSONException e) {
            return null;
        }
    }
}
