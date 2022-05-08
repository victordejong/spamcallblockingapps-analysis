package com.taiwanmobile.p055pt.adp.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMNativeAd */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMNativeAd.class */
public class TWMNativeAd implements TWMAd {
    public static final String BODY = "BODY";
    public static final String ICONRECTANGLE = "ICONRECTANGLE";
    public static final String ICONSQUARE = "ICONSQUARE";
    public static final String IMAGE1200X627 = "IMAGE1200X627";
    public static final String IMAGE1280X720 = "IMAGE1280X720";
    public static final String IMAGE960X640 = "IMAGE960X640";
    public static final String LONGSUBJECT = "LONGSUBJECT";
    public static final String SHORTSUBJECT = "SHORTSUBJECT";
    public static final String VIDEO = "VIDEO";

    /* renamed from: a */
    public final AbstractC4126b f9798a;

    /* renamed from: b */
    public WeakReference<Context> f9799b;

    /* renamed from: c */
    public String f9800c;

    /* renamed from: d */
    public C4116a f9801d;

    /* renamed from: e */
    public String f9802e;

    /* renamed from: f */
    public TWMAdViewListener f9803f;

    /* renamed from: g */
    public TWMAdRequest f9804g;

    /* renamed from: h */
    public boolean f9805h;

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMNativeAd$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMNativeAd$a.class */
    public class C4116a extends AbstractC4140c {
        public C4116a(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                if (!(TWMNativeAd.this.f9802e == null || C4117a.m29671b().m29673a(TWMNativeAd.this.f9802e) == null)) {
                    C10831c.m10518c("TWMNativeAd", "Remove ad info in hashmap, key = " + TWMNativeAd.this.f9802e);
                    C4117a.m29671b().m29669c(TWMNativeAd.this.f9802e);
                }
                TWMNativeAd.this.f9805h = true;
                C4117a b = C4117a.m29671b();
                b.getClass();
                C4117a.C4123f fVar = new C4117a.C4123f(TWMNativeAd.this.f9800c);
                fVar.m29658a("_context", this.f9873b.get());
                fVar.m29658a("adListener", TWMNativeAd.this.f9803f);
                fVar.m29658a("adRequest", TWMNativeAd.this.f9804g);
                fVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMNativeAd.this);
                fVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                fVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                fVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(m29569j()));
                fVar.m29658a("clickUrl", m29574e());
                fVar.m29658a("cvt", m29570i());
                fVar.m29658a("targetUrl", m29568k());
                fVar.m29658a("nad_content", m29564o());
                fVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                TWMNativeAd.this.f9802e = m29566m();
                fVar.m29658a("_deviceId", (String) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMNativeAd.this.f9802e)).m29659a("_deviceId"));
                C4117a.m29671b().m29672a(TWMNativeAd.this.f9802e, fVar);
                TWMNativeAd.this.m29679b();
            }
        }
    }

    @Deprecated
    public TWMNativeAd(Activity activity, String str) {
        this((Context) activity, str);
    }

    public TWMNativeAd(Context context, String str) {
        this.f9798a = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMNativeAd.1
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
            /* renamed from: a */
            public void mo29382a(String str2, TWMAdRequest.ErrorCode errorCode) {
                C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
                TWMNativeAd.this.m29684a(errorCode);
            }
        };
        this.f9799b = null;
        this.f9800c = null;
        this.f9801d = null;
        this.f9802e = null;
        this.f9803f = null;
        this.f9804g = null;
        this.f9805h = false;
        this.f9799b = new WeakReference<>(context);
        this.f9800c = str;
        this.f9801d = new C4116a(this.f9799b.get(), this.f9798a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29684a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.f9803f;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        } else {
            C10831c.m10518c("TWMNativeAd", "adListener is null");
        }
    }

    /* renamed from: a */
    private boolean m29685a() {
        return this.f9805h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29679b() {
        C10831c.m10518c("TWMNativeAd", "popAdReceive!!");
        TWMAdViewListener tWMAdViewListener = this.f9803f;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onReceiveAd(this);
        }
    }

    public void destroy() {
        if (!(this.f9802e == null || C4117a.m29671b().m29673a(this.f9802e) == null)) {
            C10831c.m10518c("TWMNativeAd", "Remove ad info in hashmap, key = " + this.f9802e);
            C4117a.m29671b().m29669c(this.f9802e);
        }
        this.f9802e = null;
        this.f9803f = null;
        this.f9801d = null;
        this.f9800c = null;
    }

    public TWMAdViewListener getAdListener() {
        return this.f9803f;
    }

    public String getAdUnitId() {
        return this.f9800c;
    }

    public JSONObject getNativeAdContent() {
        C4117a.C4123f fVar = C4117a.m29671b().m29673a(this.f9802e) != null ? (C4117a.C4123f) C4117a.m29671b().m29673a(this.f9802e) : null;
        if (fVar != null) {
            return (JSONObject) fVar.m29659a("nad_content");
        }
        return null;
    }

    public void handleClick() {
        WeakReference<Context> weakReference;
        C4117a.AbstractC4119b bVar;
        C10831c.m10518c("TWMNativeAd", "handleClick invoked!!");
        if (this.f9802e != null && (weakReference = this.f9799b) != null && weakReference.get() != null && (bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f9802e)) != null && bVar.m29659a("targetUrl") != null && bVar.m29659a("isOpenChrome") != null) {
            String str = (String) bVar.m29659a("clickUrl");
            String str2 = (String) bVar.m29659a("targetUrl");
            boolean booleanValue = ((Boolean) bVar.m29659a("isOpenChrome")).booleanValue();
            C10831c.m10518c("TWMNativeAd", "targetUrl : " + str2);
            C4127a.m29648a(this.f9799b.get(), str, this.f9802e, (String) null, (String) null);
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str2));
            if (booleanValue) {
                intent.setPackage(CustomTabsHelper.STABLE_PACKAGE);
            }
            try {
                this.f9799b.get().startActivity(intent);
            } catch (ActivityNotFoundException e) {
                C10831c.m10520b("TWMNativeAd", "openTargetUrl ActivityNotFoundException: Device has no Chrome !!");
                intent.setPackage(null);
                this.f9799b.get().startActivity(intent);
            } catch (Exception e2) {
                C10831c.m10520b("TWMNativeAd", "openTargetUrl Exception: " + e2.getMessage());
                intent.setPackage(null);
                this.f9799b.get().startActivity(intent);
            }
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    @Deprecated
    public boolean isReady() {
        WeakReference<Context> weakReference = this.f9799b;
        return (weakReference == null || weakReference.get() == null || this.f9800c == null) ? false : true;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c("TWMNativeAd", "loadAd invoked!!");
        WeakReference<Context> weakReference = this.f9799b;
        if (weakReference != null && weakReference.get() != null && C10832d.m10483f(this.f9799b.get()) && C4127a.m29638b(this.f9799b.get())) {
            C4117a.m29671b().m29672a("TWMAd", this);
            C10831c.m10518c("TWMNativeAd", "isAdLoading ? " + m29685a());
            this.f9804g = tWMAdRequest;
            if (!m29685a()) {
                C4127a.m29652a(this.f9799b.get(), this.f9800c, null, tWMAdRequest, this.f9801d, true, "N");
            }
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void setAdListener(TWMAdViewListener tWMAdViewListener) {
        this.f9803f = tWMAdViewListener;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void stopLoading() {
        this.f9805h = false;
    }
}
