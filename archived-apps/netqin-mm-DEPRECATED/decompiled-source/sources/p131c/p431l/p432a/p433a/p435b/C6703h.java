package p131c.p431l.p432a.p433a.p435b;

import com.library.p518ad.strategy.request.facebook.FacebookInterstitialBaseRequest;
import com.library.p518ad.strategy.request.facebook.FacebookNativeAdBaseRequest;
import com.netqin.p525cm.p526ad.admob.AdMobUnifiedNativeBaseRequest;
import com.netqin.p525cm.p526ad.admob.AdmobAdvanceSplashAdView;
import com.netqin.p525cm.p526ad.admob.OpenAdmobInterstitialBaseRequest;
import com.netqin.p525cm.p526ad.facebook.FacebookNativeAdSplashFullScreenView;
import com.netqin.p525cm.p526ad.mopub.MopubNativeAdView;
import java.util.HashMap;
import java.util.Map;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p406i.AbstractC6556a;
/* renamed from: c.l.a.a.b.h */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/b/h.class */
public final class C6703h extends AbstractC6556a {
    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: a */
    public String mo20031a() {
        return "8";
    }

    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: b */
    public Map<String, Map<Integer, Class<? extends AbstractC6508d<?>>>> mo20030b() {
        HashMap hashMap = new HashMap();
        m20506a(hashMap, "FB", 3, FacebookInterstitialBaseRequest.class);
        m20506a(hashMap, "AM", 3, OpenAdmobInterstitialBaseRequest.class);
        m20506a(hashMap, "FB", 1, FacebookNativeAdBaseRequest.class);
        m20506a(hashMap, "AM", 1, AdMobUnifiedNativeBaseRequest.class);
        return hashMap;
    }

    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: c */
    public Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<?>>> mo20029c() {
        HashMap hashMap = new HashMap();
        hashMap.put("FB", FacebookNativeAdSplashFullScreenView.class);
        hashMap.put("AM", AdmobAdvanceSplashAdView.class);
        hashMap.put("MP", MopubNativeAdView.class);
        return hashMap;
    }
}
