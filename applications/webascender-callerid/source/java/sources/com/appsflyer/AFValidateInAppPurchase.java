package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.C0655af;
import com.appsflyer.internal.RunnableC0692w;
import com.appsflyer.internal.model.event.Purchase;
import com.appsflyer.internal.model.event.SdkServices;
import com.appsflyer.internal.model.event.Validate;
import com.appsflyer.internal.referrer.Payload;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFValidateInAppPurchase.class */
public class AFValidateInAppPurchase implements Runnable {

    /* renamed from: ı */
    private static String f2889;

    /* renamed from: Ι */
    private static String f2890 = "https://%ssdk-services.%s/validate-android-signature";

    /* renamed from: Ɩ */
    private String f2891;

    /* renamed from: ǃ */
    private WeakReference<Context> f2892;

    /* renamed from: ɨ */
    private Map<String, String> f2893;

    /* renamed from: ɩ */
    private String f2894;

    /* renamed from: ɹ */
    private String f2895;

    /* renamed from: ι */
    private final Intent f2896;

    /* renamed from: І */
    private String f2897;

    /* renamed from: і */
    private String f2898;

    /* renamed from: Ӏ */
    private String f2899;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(AppsFlyerLibCore.ι);
        sb.append("/androidevent?buildnumber=6.0.0&app_id=");
        f2889 = sb.toString();
    }

    AFValidateInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, Intent intent) {
        this.f2892 = new WeakReference<>(context);
        this.f2894 = str;
        this.f2898 = str2;
        this.f2899 = str4;
        this.f2895 = str5;
        this.f2897 = str6;
        this.f2893 = map;
        this.f2891 = str3;
        this.f2896 = intent;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            int hashCode = key.hashCode();
            if (hashCode != -1421272810) {
                if (hashCode == 454162577 && key.equals("sdk-services")) {
                    z = false;
                }
            } else if (key.equals("validate")) {
                z = true;
            }
            if (!z) {
                f2890 = value;
            } else if (z) {
                f2889 = value;
            }
        }
    }

    /* renamed from: ı */
    private static void m4118(boolean z, String str, String str2, String str3, String str4) {
        if (AppsFlyerLibCore.Ι != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            sb.append(" ");
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AppsFlyerLibCore.Ι.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLibCore.Ι;
            String str5 = str4;
            if (str4 == null) {
                str5 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str5);
        }
    }

    /* renamed from: ι */
    private static HttpURLConnection m4115(Purchase purchase) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(purchase.urlString());
        AFLogger.afDebugLog(sb.toString());
        return new RunnableC0692w(purchase.trackingStopped(AppsFlyerLib.getInstance().isStopped())).m4014();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ι */
    static /* synthetic */ void m4116(AFValidateInAppPurchase aFValidateInAppPurchase, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f2889));
            sb.append(((Context) weakReference.get()).getPackageName());
            String obj = sb.toString();
            String string = AppsFlyerLibCore.getSharedPreferences((Context) weakReference.get()).getString(Payload.RFR, "");
            Validate key = new Validate((Context) weakReference.get()).key(aFValidateInAppPurchase.f2894);
            key.f2848 = string;
            key.f2835 = aFValidateInAppPurchase.f2896;
            Validate validate = key;
            Map<String, ?> map3 = AppsFlyerLibCore.getInstance().ι(validate);
            map3.put("price", aFValidateInAppPurchase.f2895);
            map3.put("currency", aFValidateInAppPurchase.f2897);
            map3.put("receipt_data", map);
            if (map2 != null) {
                map3.put("extra_prms", map2);
            }
            C0655af.m4065().m4072("server_request", obj, new JSONObject(map3).toString());
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection m4115 = m4115(validate.params(map3).urlString(obj));
                int i = -1;
                if (m4115 != null) {
                    i = m4115.getResponseCode();
                }
                String str = AppsFlyerLibCore.getInstance().ǃ(m4115);
                C0655af.m4065().m4072("server_response", obj, String.valueOf(i), str);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(i);
                sb2.append(": ");
                sb2.append(new JSONObject(str).toString());
                httpURLConnection = m4115;
                AFLogger.afInfoLog(sb2.toString());
                if (m4115 == null) {
                    return;
                }
                m4115.disconnect();
            } catch (Throwable th) {
                try {
                    AFLogger.afErrorLog(th.getMessage(), th);
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (Throwable th2) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = this.f2894;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isStopped()) {
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            Context context = this.f2892.get();
            if (context == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("public-key", this.f2898);
            hashMap.put("sig-data", this.f2899);
            hashMap.put("signature", this.f2891);
            final HashMap hashMap2 = new HashMap(hashMap);
            new Thread(new Runnable() { // from class: com.appsflyer.AFValidateInAppPurchase.5
                @Override // java.lang.Runnable
                public final void run() {
                    AFValidateInAppPurchase aFValidateInAppPurchase = AFValidateInAppPurchase.this;
                    AFValidateInAppPurchase.m4116(aFValidateInAppPurchase, hashMap2, aFValidateInAppPurchase.f2893, AFValidateInAppPurchase.this.f2892);
                }
            }).start();
            hashMap.put("dev_key", this.f2894);
            hashMap.put("app_id", context.getPackageName());
            hashMap.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            hashMap.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
            String jSONObject = new JSONObject(hashMap).toString();
            String url = ServerConfigHandler.getUrl(f2890);
            C0655af.m4065().m4072("server_request", url, jSONObject);
            HttpURLConnection m4115 = m4115(new SdkServices().params(hashMap).urlString(url));
            int i = -1;
            if (m4115 != null) {
                i = m4115.getResponseCode();
            }
            String str2 = AppsFlyerLibCore.getInstance().ǃ(m4115);
            C0655af.m4065().m4072("server_response", url, String.valueOf(i), str2);
            JSONObject jSONObject2 = new JSONObject(str2);
            jSONObject2.put("code", i);
            if (i == 200) {
                StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                sb.append(jSONObject2.toString());
                AFLogger.afInfoLog(sb.toString());
                m4118(jSONObject2.optBoolean("result"), this.f2899, this.f2895, this.f2897, jSONObject2.toString());
            } else {
                AFLogger.afInfoLog("Failed Validate request");
                m4118(false, this.f2899, this.f2895, this.f2897, jSONObject2.toString());
            }
            if (m4115 == null) {
                return;
            }
            m4115.disconnect();
        } catch (Throwable th) {
            try {
                if (AppsFlyerLibCore.Ι != null) {
                    AFLogger.afErrorLog("Failed Validate request + ex", th);
                    m4118(false, this.f2899, this.f2895, this.f2897, th.getMessage());
                }
                AFLogger.afErrorLog(th.getMessage(), th);
                if (0 == 0) {
                    return;
                }
                httpURLConnection.disconnect();
            } catch (Throwable th2) {
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                throw th2;
            }
        }
    }
}
