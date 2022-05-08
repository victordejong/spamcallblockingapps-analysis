package com.criteo.publisher.p028u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.C1929q;
/* renamed from: com.criteo.publisher.u.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/u/d.class */
public class C2155d implements AbstractC2154c {
    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public void mo35589a(@NonNull Object obj, @Nullable AdUnit adUnit, @NonNull C2052w wVar) {
        if (mo35590a(obj)) {
            StringBuilder sb = new StringBuilder();
            Object a = C1929q.m36000a(obj, "getKeywords", new Object[0]);
            if (a != null) {
                sb.append(a);
                sb.append(",");
            }
            sb.append("crt_cpm");
            sb.append(":");
            sb.append(wVar.m35801a());
            sb.append(",");
            sb.append("crt_displayUrl");
            sb.append(":");
            sb.append(wVar.m35796c());
            if (adUnit instanceof BannerAdUnit) {
                sb.append(",");
                sb.append("crt_size");
                sb.append(":");
                sb.append(wVar.m35790i());
                sb.append("x");
                sb.append(wVar.m35795d());
            }
            C1929q.m36000a(obj, "setKeywords", sb.toString());
        }
    }

    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public boolean mo35590a(@NonNull Object obj) {
        return obj.getClass().getName().equals("com.mopub.mobileads.MoPubView") || obj.getClass().getName().equals("com.mopub.mobileads.MoPubInterstitial");
    }
}
