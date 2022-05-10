package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p152q.C2368f;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/PostbackServiceImpl.class */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a */
    public final C2341l f21790a;

    public PostbackServiceImpl(C2341l lVar) {
        this.f21790a = lVar;
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        C2368f.C2369a b = C2368f.m30109b(this.f21790a);
        b.m30087d(str);
        b.m30089c(false);
        dispatchPostbackRequest(b.mo30106a(), appLovinPostbackListener);
    }

    public void dispatchPostbackRequest(C2368f fVar, C7048s.EnumC7049a aVar, AppLovinPostbackListener appLovinPostbackListener) {
        this.f21790a.m30249j().m18826a(new C2270g.C2310r(fVar, aVar, this.f21790a, appLovinPostbackListener), aVar);
    }

    public void dispatchPostbackRequest(C2368f fVar, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(fVar, C7048s.EnumC7049a.POSTBACKS, appLovinPostbackListener);
    }

    public String toString() {
        return "PostbackService{}";
    }
}
