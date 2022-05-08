package com.taiwanmobile.p055pt.adp.view.p056a.p058b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import androidx.media2.session.MediaSessionImplBase;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mopub.nativeads.Utils;
import com.taiwanmobile.p055pt.adp.view.TWMAd;
import com.taiwanmobile.p055pt.adp.view.TWMAdActivity;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdSize;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.C4143f;
import com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6797f;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.b.a */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/a.class */
public class C4127a {

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.a$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/a$a.class */
    public static class C4129a implements AbstractC15238d<ResponseBody> {

        /* renamed from: a */
        public String f9823a;

        public C4129a(String str) {
            this.f9823a = null;
            this.f9823a = str;
        }

        @Override // p655o.AbstractC15238d
        public void onFailure(AbstractC15235b<ResponseBody> bVar, Throwable th) {
            C10831c.m10518c("EmptyRetrofitListener", "onErrorResponse(" + this.f9823a + "/" + th.getMessage() + ") invoked!!");
        }

        @Override // p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            try {
                C10831c.m10518c("EmptyRetrofitListener", "onResponse  invoked --> " + rVar.m95a().string());
            } catch (IOException e) {
                C10831c.m10520b("EmptyRetrofitListener", "onResponse IOException, Parse Error: " + e.getMessage());
            } catch (Exception e2) {
                C10831c.m10520b("EmptyRetrofitListener", "onResponse Exception: " + e2.getMessage());
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.a$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/a$b.class */
    public class AsyncTaskC4130b extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: b */
        public C4131c f9825b;

        /* renamed from: c */
        public String f9826c = null;

        /* renamed from: d */
        public boolean f9827d = false;

        public AsyncTaskC4130b(C4131c cVar) {
            this.f9825b = cVar;
        }

        /* renamed from: a */
        public Boolean doInBackground(Void... voidArr) {
            C10831c.m10518c("NewFireAdRequestTask", "doInBackground invoked!!");
            C4131c cVar = this.f9825b;
            if (cVar == null) {
                C10831c.m10520b("NewFireAdRequestTask", "Request Parameters is null.");
                return null;
            }
            Context a = cVar.m29627a();
            if (a != null) {
                this.f9826c = C10832d.m10495c(a);
                this.f9827d = C10832d.m10491d(a);
            }
            if (!this.f9825b.m29615h()) {
                return Boolean.FALSE;
            }
            String str = this.f9826c;
            if (str != null && !"".equals(str)) {
                return Boolean.TRUE;
            }
            AdvertisingIdClient.Info a2 = C4127a.m29655a(a);
            if (!(a2 == null || a2.getId() == null || "".equals(a2.getId()))) {
                this.f9826c = a2.getId();
                this.f9827d = a2.isLimitAdTrackingEnabled();
                C10832d.m10500b(a, this.f9826c);
                C10832d.m10508a(a, this.f9827d);
            }
            return Boolean.FALSE;
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            C10831c.m10518c("NewFireAdRequestTask", "onPostExecute invoked!!");
            super.onPostExecute(bool);
            if (this.f9825b == null) {
                C10831c.m10520b("NewFireAdRequestTask", "Request Parameters is null.");
                return;
            }
            C10831c.m10518c("NewFireAdRequestTask", ">>>>> result as " + bool.booleanValue());
            C10831c.m10518c("NewFireAdRequestTask", ">>>>> adid is : " + this.f9826c);
            C10831c.m10518c("NewFireAdRequestTask", ">>>>> isLimitAdTrackingEnabled ? " + this.f9827d);
            Context a = this.f9825b.m29627a();
            if (bool.booleanValue() && a != null) {
                new AsyncTaskC4132d(this.f9825b.m29627a()).execute(new Void[0]);
            }
            String str = this.f9826c;
            if (str == null || "".equals(str)) {
                C4127a.m29635b(this.f9825b);
            } else {
                C4127a.m29642a(this.f9825b, this.f9826c, this.f9827d);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.a$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/a$c.class */
    public static class C4131c {

        /* renamed from: a */
        public Context f9828a;

        /* renamed from: b */
        public TWMAdRequest f9829b;

        /* renamed from: c */
        public TWMAdSize f9830c;

        /* renamed from: d */
        public String f9831d;

        /* renamed from: e */
        public String f9832e;

        /* renamed from: g */
        public String f9834g;

        /* renamed from: f */
        public AbstractC4140c f9833f = null;

        /* renamed from: h */
        public boolean f9835h = true;

        /* renamed from: i */
        public Boolean f9836i = null;

        public C4131c(Context context, String str, TWMAdRequest tWMAdRequest, String str2) {
            this.f9828a = context;
            this.f9831d = str;
            this.f9829b = tWMAdRequest;
            this.f9834g = str2;
        }

        /* renamed from: a */
        public Context m29627a() {
            return this.f9828a;
        }

        /* renamed from: a */
        public void m29626a(TWMAdSize tWMAdSize) {
            this.f9830c = tWMAdSize;
        }

        /* renamed from: a */
        public void m29625a(AbstractC4140c cVar) {
            this.f9833f = cVar;
        }

        /* renamed from: a */
        public void m29624a(String str) {
            this.f9832e = str;
        }

        /* renamed from: a */
        public void m29623a(boolean z) {
            this.f9835h = z;
        }

        /* renamed from: b */
        public TWMAdRequest m29622b() {
            return this.f9829b;
        }

        /* renamed from: b */
        public void m29621b(boolean z) {
            this.f9836i = Boolean.valueOf(z);
        }

        /* renamed from: c */
        public TWMAdSize m29620c() {
            return this.f9830c;
        }

        /* renamed from: d */
        public String m29619d() {
            return this.f9831d;
        }

        /* renamed from: e */
        public String m29618e() {
            return this.f9832e;
        }

        /* renamed from: f */
        public AbstractC4140c m29617f() {
            return this.f9833f;
        }

        /* renamed from: g */
        public String m29616g() {
            return this.f9834g;
        }

        /* renamed from: h */
        public boolean m29615h() {
            return this.f9835h;
        }

        /* renamed from: i */
        public Boolean m29614i() {
            return this.f9836i;
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.a$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/a$d.class */
    public static class AsyncTaskC4132d extends AsyncTask<Void, Void, AdvertisingIdClient.Info> {

        /* renamed from: a */
        public Context f9837a;

        public AsyncTaskC4132d(Context context) {
            this.f9837a = null;
            this.f9837a = context;
        }

        /* renamed from: a */
        public AdvertisingIdClient.Info doInBackground(Void... voidArr) {
            C10831c.m10518c("UpdateAdIdTask", "doInBackground invoked!!");
            return C4127a.m29655a(this.f9837a);
        }

        /* renamed from: a */
        public void onPostExecute(AdvertisingIdClient.Info info) {
            C10831c.m10518c("UpdateAdIdTask", "onPostExecute invoked!!");
            super.onPostExecute(info);
            if (info != null && info.getId() != null && !"".equals(info.getId())) {
                C10832d.m10500b(this.f9837a, info.getId());
                C10832d.m10508a(this.f9837a, info.isLimitAdTrackingEnabled());
            }
        }
    }

    /* renamed from: a */
    public static AdvertisingIdClient.Info m29655a(Context context) {
        AdvertisingIdClient.Info info;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (C6795e e) {
            C10831c.m10520b("AdUtility", "getGoogleAdInfo GooglePlayServicesNotAvailableException:" + e.getMessage());
            info = null;
            return info;
        } catch (C6797f e2) {
            C10831c.m10520b("AdUtility", "getGoogleAdInfo GooglePlayServicesRepairableException:" + e2.getMessage());
            info = null;
            return info;
        } catch (IOException e3) {
            C10831c.m10520b("AdUtility", "getGoogleAdInfo IOException:" + e3.getMessage());
            info = null;
            return info;
        } catch (IllegalStateException e4) {
            C10831c.m10520b("AdUtility", "getGoogleAdInfo IllegalStateException:" + e4.getMessage());
            info = null;
            return info;
        } catch (Exception e5) {
            C10831c.m10520b("AdUtility", "getGoogleAdInfo Exception:" + e5.getMessage());
            info = null;
            return info;
        }
        return info;
    }

    /* renamed from: a */
    public static String m29657a() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.TAIWAN).format(new Date(System.currentTimeMillis()));
    }

    /* renamed from: a */
    public static String m29654a(Context context, TWMAdRequest tWMAdRequest) {
        String propertyByKey = tWMAdRequest.getPropertyByKey("reserved_feature_1");
        return (propertyByKey == null || !propertyByKey.equals("0")) ? C10832d.m10462o(context) : "";
    }

    /* renamed from: a */
    public static String m29647a(TWMAdRequest tWMAdRequest) {
        return tWMAdRequest.getBirthdayStr();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x026e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m29650a(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.m29650a(android.content.Context, java.lang.String, java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: a */
    public static void m29653a(Context context, String str) {
        AbstractC15235b<ResponseBody> b = C4143f.m29549c().m29542b(m29650a(context, str, null, null));
        b.mo140a(new C4129a(b.request().url().url().toString()));
    }

    /* renamed from: a */
    public static void m29652a(Context context, String str, TWMAdSize tWMAdSize, TWMAdRequest tWMAdRequest, AbstractC4140c cVar, boolean z, String str2) {
        C4131c cVar2 = new C4131c(context, str, tWMAdRequest, str2);
        cVar2.m29625a(cVar);
        cVar2.m29626a(tWMAdSize);
        cVar2.m29623a(z);
        m29643a(cVar2);
    }

    /* renamed from: a */
    public static final void m29651a(Context context, String str, String str2) {
        C10831c.m10518c("AdUtility", "putQuestion(" + str + "/" + str2 + ") invoked!!");
        if (str == null || str.equals(FavoriteGroupRealmObject.PARENDID_DELETED)) {
            C10831c.m10518c("AdUtility", "RESETQID!!!!!");
            C10832d.m10473i(context);
            return;
        }
        String j = C10832d.m10471j(context);
        C10831c.m10518c("AdUtility", "currentQid--> : " + j);
        C10831c.m10518c("AdUtility", "last --> " + C10832d.m10476h(context));
        C10832d.m10479g(context);
        if (j == null || j.equals("")) {
            C10832d.m10510a(context, str, str2);
        } else if (!j.equals(str)) {
            C10832d.m10510a(context, str, str2);
        }
    }

    /* renamed from: a */
    public static void m29649a(Context context, String str, String str2, String str3, int i) {
        AbstractC15235b<ResponseBody> c = C4143f.m29549c().m29540c(m29636b(context, str, str2, str3, i));
        c.mo140a(new C4129a(c.request().url().url().toString()));
    }

    /* renamed from: a */
    public static void m29648a(Context context, String str, String str2, String str3, String str4) {
        C4143f.m29549c().m29543b(str, m29650a(context, str2, str3, str4)).mo140a(new C4129a(str));
    }

    /* renamed from: a */
    public static void m29646a(C4124a aVar) {
        try {
            aVar.m29664b();
        } catch (Exception e) {
            C10831c.m10520b("AdUtility", "triggerImpressionOccurred error: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m29645a(C4124a aVar, Context context, String str, WebView webView, View[] viewArr) {
        try {
            if (!(!C4124a.m29667a(context) || str == null || C4117a.m29671b().m29673a(str) == null)) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
                String str2 = (String) bVar.m29659a("PartnerName");
                String str3 = (String) bVar.m29659a("PartnerVersion");
                JSONObject jSONObject = (JSONObject) bVar.m29659a("PartnerCustomData");
                if (((Boolean) bVar.m29659a("isVideoAd")).booleanValue()) {
                    aVar.m29662b(webView, str2, str3, jSONObject.toString());
                } else {
                    aVar.m29665a(webView, str2, str3, jSONObject.toString());
                }
                if (viewArr != null) {
                    for (View view : viewArr) {
                        aVar.m29666a(view);
                    }
                }
                aVar.m29663b(webView);
            }
        } catch (Exception e) {
            C10831c.m10520b("AdUtility", "activeOmManager error: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m29644a(C4124a aVar, final C4124a.AbstractC4125a aVar2) {
        try {
            aVar.m29668a();
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.a.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    C4124a.AbstractC4125a aVar3 = C4124a.AbstractC4125a.this;
                    if (aVar3 != null) {
                        aVar3.mo29430a();
                    }
                }
            }, 1000L);
        } catch (Exception e) {
            C10831c.m10520b("AdUtility", "finishOmManager error: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static void m29643a(C4131c cVar) {
        C10831c.m10518c("AdUtility", "requestAd invoked!!");
        new AsyncTaskC4130b(cVar).execute(new Void[0]);
    }

    /* renamed from: a */
    public static void m29642a(C4131c cVar, String str, boolean z) {
        C10831c.m10518c("AdUtility", "fireAdRequestWithAdId invoked!!");
        if (cVar != null) {
            AbstractC15235b<ResponseBody> a = C4143f.m29549c().m29545a(m29634b(cVar, str, z));
            a.mo140a(cVar.m29617f());
            C10831c.m10518c("AdUtility", a.request().url().url().toString());
        }
    }

    /* renamed from: a */
    public static void m29641a(String str, Context context, String str2, String str3, String str4, int i) {
        AbstractC15235b<ResponseBody> c = C4143f.m29549c().m29541c(str, m29636b(context, str2, str3, str4, i));
        c.mo140a(new C4129a(c.request().url().url().toString()));
    }

    /* renamed from: a */
    public static void m29640a(String str, TWMAdRequest.ErrorCode errorCode) {
        C10831c.m10518c("AdUtility", "popFailReceiveAd(" + str + "/" + errorCode + ") invoked!!");
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        if (bVar != null) {
            TWMAdViewListener tWMAdViewListener = (TWMAdViewListener) bVar.m29659a("adListener");
            TWMAd tWMAd = (TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
            if (tWMAdViewListener != null && tWMAd != null) {
                tWMAdViewListener.onFailedToReceiveAd(tWMAd, errorCode);
            }
        }
    }

    /* renamed from: a */
    public static boolean m29656a(int i, int i2, String str) {
        if ((i & i2) != 0) {
            return true;
        }
        C10831c.m10520b(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA, "The android:configChanges value of the com.taiwanmobile.pt.adp.view.TWMAdActivity must include " + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        return false;
    }

    /* renamed from: b */
    public static String m29639b() {
        return "Android " + Build.VERSION.RELEASE;
    }

    /* renamed from: b */
    public static String m29637b(Context context, String str) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        String str2 = bVar != null ? (String) bVar.m29659a("userAgent") : null;
        C10831c.m10518c("AdUtility", "userAgent : " + str2);
        return (str2 == null || "".equals(str2)) ? C10832d.m10513a(context) : str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x025e  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m29636b(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.m29636b(android.content.Context, java.lang.String, java.lang.String, java.lang.String, int):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0353  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m29634b(com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.C4131c r5, java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.m29634b(com.taiwanmobile.pt.adp.view.a.b.a$c, java.lang.String, boolean):java.util.Map");
    }

    /* renamed from: b */
    public static void m29635b(C4131c cVar) {
        C10831c.m10518c("AdUtility", "fireAdRequest invoked!!");
        if (cVar != null) {
            C4143f.m29549c().m29545a(m29631c(cVar)).mo140a(cVar.m29617f());
        }
    }

    /* renamed from: b */
    public static boolean m29638b(Context context) {
        ActivityInfo activityInfo;
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent(context, TWMAdActivity.class), 65536);
        Boolean bool = true;
        bool = false;
        if (resolveActivity == null || (activityInfo = resolveActivity.activityInfo) == null) {
            C10831c.m10520b(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA, "Could not find com.taiwanmobile.pt.adp.view.TWMAdActivity, please make sure it is registered in AndroidManifest.xml.");
        } else {
            if (!m29656a(activityInfo.configChanges, 16, "keyboard")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 32, "keyboardHidden")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 64, NotificationCompat.CATEGORY_NAVIGATION)) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 128, "orientation")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 256, "screenLayout")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 512, "uiMode")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 1024, "screenSize")) {
                bool = bool;
            }
            if (!m29656a(resolveActivity.activityInfo.configChanges, 2048, "smallestScreenSize")) {
                bool = bool;
            }
            if (resolveActivity.activityInfo.theme != 16973839) {
                C10831c.m10520b(Utils.AD_NETWORK_SOURCE_NAME_TAMEDIA, "The android:theme value of the com.taiwanmobile.pt.adp.view.TWMAdActivity must include @android:style/Theme.Translucent .");
            }
        }
        return bool.booleanValue();
    }

    /* renamed from: c */
    public static String m29633c() {
        return Build.MANUFACTURER;
    }

    /* renamed from: c */
    public static String m29632c(Context context) {
        String j;
        if (System.currentTimeMillis() - C10832d.m10476h(context) > AdUtils.ONE_DAY || (j = C10832d.m10471j(context)) == null || j.equals("")) {
            return "";
        }
        C10831c.m10518c("AdUtility", "qid ==> " + j);
        String e = C10832d.m10486e(context, j);
        if (e == null || e.equals("") || e.equals(FavoriteGroupRealmObject.PARENDID_DELETED)) {
            return "";
        }
        C10831c.m10518c("AdUtility", "qt ==> " + e);
        String[] split = e.split("\\|");
        C10831c.m10518c("AdUtility", "qtArray.length : " + split.length);
        if (split == null || split.length < 2) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < split.length - 1; i++) {
            if (C10832d.m10512a(context, split[i])) {
                sb.append("1");
            } else {
                sb.append("0");
            }
            sb.append("|");
        }
        sb.append("X");
        C10831c.m10518c("AdUtility", "qans : " + sb.toString());
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0358  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m29631c(com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.C4131c r5) {
        /*
            Method dump skipped, instructions count: 979
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a.m29631c(com.taiwanmobile.pt.adp.view.a.b.a$c):java.util.Map");
    }

    /* renamed from: d */
    public static String m29630d() {
        return Build.MODEL;
    }
}
