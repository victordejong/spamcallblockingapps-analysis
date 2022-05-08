package com.flurry.sdk;

import android.text.TextUtils;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: com.flurry.sdk.hy */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hy.class */
public class C3257hy implements AbstractC3417kl<C3190gy> {

    /* renamed from: a */
    public static final String f5455a = "hy";

    /* renamed from: a */
    public static EnumC3199hg m32794a(String str) {
        EnumC3199hg hgVar = EnumC3199hg.OFF;
        EnumC3199hg hgVar2 = hgVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                hgVar2 = (EnumC3199hg) Enum.valueOf(EnumC3199hg.class, str);
            }
        } catch (Exception e) {
            hgVar2 = hgVar;
        }
        return hgVar2;
    }

    /* renamed from: a */
    public static void m32796a(C3187gv gvVar, JSONArray jSONArray) {
        String[] strArr;
        if (jSONArray != null) {
            ArrayList arrayList = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                arrayList = arrayList;
                if (optJSONObject != null) {
                    if (optJSONObject.has("string")) {
                        arrayList = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        C3194hb hbVar = new C3194hb();
                        hbVar.f5306a = optJSONObject.optString("string", "");
                        arrayList.add(hbVar);
                    } else {
                        arrayList = arrayList;
                        if (optJSONObject.has("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger")) {
                            ArrayList arrayList2 = arrayList;
                            if (arrayList == null) {
                                arrayList2 = new ArrayList();
                            }
                            JSONObject optJSONObject2 = optJSONObject.optJSONObject("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger");
                            arrayList = arrayList2;
                            if (optJSONObject2 != null) {
                                C3195hc hcVar = new C3195hc();
                                hcVar.f5306a = optJSONObject2.optString("event_name", "");
                                hcVar.f5308c = optJSONObject2.optString("event_parameter_name", "");
                                JSONArray optJSONArray = optJSONObject2.optJSONArray("event_parameter_values");
                                if (optJSONArray != null) {
                                    String[] strArr2 = new String[optJSONArray.length()];
                                    int i2 = 0;
                                    while (true) {
                                        strArr = strArr2;
                                        if (i2 >= optJSONArray.length()) {
                                            break;
                                        }
                                        strArr2[i2] = optJSONArray.optString(i2, "");
                                        i2++;
                                    }
                                } else {
                                    strArr = new String[0];
                                }
                                hcVar.f5309d = strArr;
                                arrayList2.add(hcVar);
                                arrayList = arrayList2;
                            }
                        }
                    }
                }
            }
            gvVar.f5269c = arrayList;
        }
    }

    /* renamed from: a */
    public static void m32795a(C3188gw gwVar, JSONArray jSONArray) throws JSONException {
        JSONObject optJSONObject;
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject2 = jSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    C3187gv gvVar = new C3187gv();
                    gvVar.f5268b = optJSONObject2.optString("partner", "");
                    m32796a(gvVar, optJSONObject2.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY));
                    gvVar.f5270d = m32792b(optJSONObject2.optString("method"));
                    gvVar.f5271e = optJSONObject2.optString("uri_template", "");
                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("body_template");
                    if (optJSONObject3 != null) {
                        String optString = optJSONObject3.optString("string", C14247d.f31851f);
                        if (!optString.equals(C14247d.f31851f)) {
                            gvVar.f5272f = optString;
                        }
                    }
                    gvVar.f5273g = optJSONObject2.optInt("max_redirects", 5);
                    gvVar.f5274h = optJSONObject2.optInt("connect_timeout", 20);
                    gvVar.f5275i = optJSONObject2.optInt("request_timeout", 20);
                    gvVar.f5267a = optJSONObject2.optLong("callback_id", -1L);
                    JSONObject optJSONObject4 = optJSONObject2.optJSONObject("headers");
                    if (!(optJSONObject4 == null || (optJSONObject = optJSONObject4.optJSONObject("map")) == null)) {
                        gvVar.f5276j = C3446lb.m32446a(optJSONObject);
                    }
                    arrayList.add(gvVar);
                }
            }
            gwVar.f5277a = arrayList;
        }
    }

    /* renamed from: b */
    public static C3190gy m32793b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(C3445la.m32464a(inputStream));
        String str2 = f5455a;
        C3356jq.m32615a(5, str2, "Proton response string: " + str);
        C3190gy gyVar = new C3190gy();
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optLong("issued_at", -1L);
            gyVar.f5293b = jSONObject.optLong("refresh_ttl", 3600L);
            gyVar.f5294c = jSONObject.optLong("expiration_ttl", 86400L);
            JSONObject optJSONObject = jSONObject.optJSONObject("global_settings");
            gyVar.f5295d = new C3198hf();
            if (optJSONObject != null) {
                gyVar.f5295d.f5314a = m32794a(optJSONObject.optString("log_level"));
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("pulse");
            C3188gw gwVar = new C3188gw();
            if (optJSONObject2 != null) {
                m32795a(gwVar, optJSONObject2.optJSONArray("callbacks"));
                gwVar.f5278b = optJSONObject2.optInt("max_callback_retries", 3);
                gwVar.f5279c = optJSONObject2.optInt("max_callback_attempts_per_report", 15);
                gwVar.f5280d = optJSONObject2.optInt("max_report_delay_seconds", 600);
                gwVar.f5281e = optJSONObject2.optString("agent_report_url", "");
            }
            gyVar.f5296e = gwVar;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("analytics");
            gyVar.f5297f = new C3201hi();
            if (optJSONObject3 != null) {
                gyVar.f5297f.f5326b = optJSONObject3.optBoolean("analytics_enabled", true);
                gyVar.f5297f.f5325a = optJSONObject3.optInt("max_session_properties", 10);
            }
            return gyVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize: ", e);
        }
    }

    /* renamed from: b */
    public static EnumC3253hv m32792b(String str) {
        EnumC3253hv hvVar = EnumC3253hv.GET;
        EnumC3253hv hvVar2 = hvVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                hvVar2 = (EnumC3253hv) Enum.valueOf(EnumC3253hv.class, str);
            }
        } catch (Exception e) {
            hvVar2 = hvVar;
        }
        return hvVar2;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ C3190gy mo32526a(InputStream inputStream) throws IOException {
        return m32793b(inputStream);
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, C3190gy gyVar) throws IOException {
        throw new IOException("Serialize not supported for response");
    }
}
