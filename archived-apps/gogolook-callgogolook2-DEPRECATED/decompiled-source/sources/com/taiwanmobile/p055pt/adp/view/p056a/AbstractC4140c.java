package com.taiwanmobile.p055pt.adp.view.p056a;

import android.content.Context;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.appsflyer.share.Constants;
import com.mopub.common.FullAdType;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.c */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/c.class */
public abstract class AbstractC4140c implements AbstractC15238d<ResponseBody> {

    /* renamed from: a */
    public static final String f9859a = "c";

    /* renamed from: b */
    public WeakReference<Context> f9873b;

    /* renamed from: c */
    public AbstractC4126b f9874c;

    /* renamed from: d */
    public String f9875d;

    /* renamed from: e */
    public boolean f9876e = false;

    /* renamed from: f */
    public boolean f9877f = false;

    /* renamed from: g */
    public String f9878g = null;

    /* renamed from: h */
    public int f9879h = 0;

    /* renamed from: i */
    public int f9880i = 0;

    /* renamed from: j */
    public String f9881j = null;

    /* renamed from: k */
    public String f9882k = null;

    /* renamed from: l */
    public String f9883l = null;

    /* renamed from: m */
    public boolean f9884m = false;

    /* renamed from: n */
    public String f9885n = "";

    /* renamed from: o */
    public int f9886o = 0;

    /* renamed from: p */
    public String f9887p = null;

    /* renamed from: q */
    public String f9888q = null;

    /* renamed from: r */
    public String f9889r = null;

    /* renamed from: s */
    public String f9890s = null;

    /* renamed from: t */
    public boolean f9891t = false;

    /* renamed from: u */
    public int f9892u = 0;

    /* renamed from: v */
    public JSONObject f9893v = null;

    /* renamed from: w */
    public boolean f9894w = false;

    /* renamed from: x */
    public int f9895x = 0;

    /* renamed from: y */
    public int f9896y = 0;

    /* renamed from: z */
    public int f9897z = 0;

    /* renamed from: A */
    public JSONArray f9860A = null;

    /* renamed from: B */
    public JSONObject f9861B = null;

    /* renamed from: C */
    public String f9862C = null;

    /* renamed from: D */
    public double f9863D = 0.0d;

    /* renamed from: E */
    public String f9864E = null;

    /* renamed from: F */
    public String f9865F = null;

    /* renamed from: G */
    public long f9866G = 0;

    /* renamed from: H */
    public boolean f9867H = false;

    /* renamed from: I */
    public JSONObject f9868I = null;

    /* renamed from: J */
    public String f9869J = null;

    /* renamed from: K */
    public String f9870K = null;

    /* renamed from: L */
    public JSONObject f9871L = null;

    /* renamed from: M */
    public JSONArray f9872M = null;

    public AbstractC4140c(Context context, AbstractC4126b bVar) {
        this.f9873b = null;
        this.f9874c = bVar;
        this.f9873b = new WeakReference<>(context);
    }

    /* renamed from: a */
    private TWMAdRequest.ErrorCode m29579a(int i) {
        TWMAdRequest.ErrorCode errorCode;
        TWMAdRequest.ErrorCode errorCode2 = TWMAdRequest.ErrorCode.INTERNAL_ERROR;
        if (i < 400 || i >= 500) {
            errorCode = errorCode2;
            if (i >= 500) {
                errorCode = errorCode2;
                if (i < 600) {
                    errorCode = TWMAdRequest.ErrorCode.INTERNAL_ERROR;
                }
            }
        } else {
            errorCode = TWMAdRequest.ErrorCode.NETWORK_ERROR;
        }
        return errorCode;
    }

    /* renamed from: a */
    private void m29578a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("OMSDK");
            this.f9868I = jSONObject2;
            this.f9869J = jSONObject2.getString("PartnerName");
            this.f9870K = jSONObject2.getString("PartnerVersion");
            this.f9871L = jSONObject2.getJSONObject("PartnerCustomData");
            this.f9872M = jSONObject2.getJSONArray("MProviders");
        } catch (Exception e) {
            String str = f9859a;
            C10831c.m10520b(str, "parseOpenMeasurementInfo failed:" + e.getMessage());
        }
    }

    /* renamed from: A */
    public boolean m29587A() {
        return m29553z() > 0;
    }

    /* renamed from: B */
    public boolean m29586B() {
        JSONArray jSONArray = this.f9872M;
        boolean z = false;
        if (jSONArray != null) {
            z = false;
            if (jSONArray.length() > 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: C */
    public boolean m29585C() {
        return this.f9867H;
    }

    /* renamed from: D */
    public JSONObject m29584D() {
        return this.f9868I;
    }

    /* renamed from: E */
    public String m29583E() {
        return this.f9869J;
    }

    /* renamed from: F */
    public String m29582F() {
        return this.f9870K;
    }

    /* renamed from: G */
    public JSONObject m29581G() {
        return this.f9871L;
    }

    /* renamed from: a */
    public String m29580a() {
        return this.f9875d;
    }

    /* renamed from: b */
    public boolean m29577b() {
        return this.f9876e;
    }

    /* renamed from: c */
    public int m29576c() {
        return this.f9879h;
    }

    /* renamed from: d */
    public int m29575d() {
        return this.f9880i * 1000;
    }

    /* renamed from: e */
    public String m29574e() {
        return this.f9881j;
    }

    /* renamed from: f */
    public String m29573f() {
        return this.f9882k;
    }

    /* renamed from: g */
    public String m29572g() {
        return this.f9883l;
    }

    /* renamed from: h */
    public boolean m29571h() {
        return this.f9884m;
    }

    /* renamed from: i */
    public String m29570i() {
        return this.f9885n;
    }

    /* renamed from: j */
    public int m29569j() {
        return this.f9886o;
    }

    /* renamed from: k */
    public String m29568k() {
        return this.f9887p;
    }

    /* renamed from: l */
    public String m29567l() {
        return this.f9889r;
    }

    /* renamed from: m */
    public String m29566m() {
        return this.f9890s;
    }

    /* renamed from: n */
    public boolean m29565n() {
        if (this.f9888q == null || !m29571h() || !this.f9891t) {
            return false;
        }
        return "0".equals(this.f9888q.length() > 0 ? String.valueOf(this.f9888q.charAt(0)) : "");
    }

    /* renamed from: o */
    public JSONObject m29564o() {
        return this.f9893v;
    }

    @Override // p655o.AbstractC15238d
    public void onFailure(AbstractC15235b<ResponseBody> bVar, Throwable th) {
        String str = f9859a;
        C10831c.m10520b(str, "Exception: " + th.getClass().getName());
        this.f9874c.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NETWORK_ERROR);
    }

    @Override // p655o.AbstractC15238d
    public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
        JSONObject jSONObject;
        if (rVar == null || !rVar.m90d()) {
            this.f9874c.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, m29579a(rVar.m92b()));
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(rVar.m95a().string());
            C10831c.m10518c(f9859a, "onResponse invoked!!");
            String str = f9859a;
            C10831c.m10518c(str, "response : " + jSONObject2);
            this.f9888q = jSONObject2.getString("responseCode");
            String str2 = f9859a;
            C10831c.m10518c(str2, "responseCode : " + this.f9888q);
            String str3 = "";
            String valueOf = this.f9888q.length() > 0 ? String.valueOf(this.f9888q.charAt(0)) : "";
            if ("0".equals(valueOf)) {
                if (!(this.f9873b == null || this.f9873b.get() == null)) {
                    C10832d.m10494c(this.f9873b.get(), jSONObject2.getString("sid"));
                }
                this.f9881j = jSONObject2.getString("curl");
                this.f9885n = jSONObject2.getString("cvt");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("slot");
                if (jSONObject3 != null) {
                    this.f9884m = jSONObject3.getString("flag").equals("1");
                    if (this.f9884m) {
                        this.f9879h = jSONObject3.getInt("times");
                        this.f9880i = jSONObject3.getInt("sec");
                        String str4 = f9859a;
                        C10831c.m10518c(str4, "scheduleTime : " + this.f9880i);
                        this.f9889r = jSONObject2.getString(Constants.URL_MEDIA_SOURCE);
                        this.f9890s = jSONObject2.getString("TxID");
                        try {
                            this.f9893v = jSONObject2.getJSONObject("nad");
                        } catch (Exception e) {
                            C10831c.m10520b(f9859a, "Cannot parse nad");
                        }
                        JSONObject jSONObject4 = jSONObject2.getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
                        String str5 = null;
                        String string = jSONObject4.has("qid") ? jSONObject4.getString("qid") : null;
                        if (jSONObject4.has("qt")) {
                            str5 = jSONObject4.getString("qt");
                        }
                        if (!(this.f9873b == null || this.f9873b.get() == null)) {
                            C4127a.m29651a(this.f9873b.get(), string, str5);
                        }
                        this.f9887p = jSONObject4.getString("turl");
                        String str6 = f9859a;
                        C10831c.m10518c(str6, "targetUrl : " + this.f9887p);
                        this.f9882k = jSONObject4.getString("b");
                        this.f9886o = jSONObject4.getInt("type");
                        this.f9876e = !jSONObject4.isNull("rwd") && jSONObject4.getInt("rwd") == 1;
                        String str7 = f9859a;
                        C10831c.m10518c(str7, "isRwd" + this.f9876e);
                        if (this.f9886o == 8) {
                            this.f9883l = jSONObject4.getString("b2");
                        }
                        if (this.f9886o == 128) {
                            if (!jSONObject4.isNull("floatType")) {
                                str3 = jSONObject4.getString("floatType");
                            }
                            this.f9875d = str3;
                        }
                        try {
                            this.f9894w = 1 == jSONObject2.getInt("oc");
                        } catch (Exception e2) {
                            C10831c.m10520b(f9859a, "Cannot parse oc");
                        }
                        try {
                            this.f9895x = jSONObject4.getInt("subType");
                        } catch (Exception e3) {
                            C10831c.m10520b(f9859a, "Cannot parse subType");
                        }
                        try {
                            this.f9896y = jSONObject4.getInt("sw");
                            this.f9897z = jSONObject4.getInt("sh");
                        } catch (Exception e4) {
                            C10831c.m10520b(f9859a, "Cannot parse sw, sh");
                        }
                        if (jSONObject2.has("trackingUrl")) {
                            this.f9860A = jSONObject2.getJSONArray("trackingUrl");
                        }
                        if (this.f9886o == 256 && (jSONObject = jSONObject2.getJSONObject("inr")) != null) {
                            this.f9862C = jSONObject.getString("impUrl");
                            this.f9863D = jSONObject.getDouble("impPercent");
                            try {
                                this.f9861B = jSONObject.getJSONObject(FullAdType.VAST);
                            } catch (Exception e5) {
                                C10831c.m10520b(f9859a, "Cannot parse vast");
                            }
                        }
                        if (jSONObject4.has("mraidUrl")) {
                            this.f9864E = jSONObject4.getString("mraidUrl");
                        }
                        if (jSONObject4.has("dcm")) {
                            this.f9867H = 1 == jSONObject4.getInt("dcm");
                        }
                        if (jSONObject4.has("videoReportUrl")) {
                            this.f9865F = jSONObject4.getString("videoReportUrl");
                        }
                        if (jSONObject4.has("duration")) {
                            this.f9866G = jSONObject4.getLong("duration");
                        }
                        if (jSONObject2.has("track")) {
                            m29578a(jSONObject2.getJSONObject("track"));
                        }
                        this.f9891t = true;
                        return;
                    }
                    this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.NO_FILL);
                }
            } else if ("1".equals(valueOf)) {
                this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.NO_FILL);
            } else if ("2".equals(valueOf)) {
                this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.NO_FILL);
            } else if ("4".equals(valueOf)) {
                this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            } else if ("9".equals(valueOf)) {
                this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.INTERNAL_ERROR);
            } else {
                this.f9874c.mo29382a(this.f9888q, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } catch (Exception e6) {
            String str8 = f9859a;
            C10831c.m10521a(str8, "onResponse Parse Exception: " + e6.getMessage(), e6);
            this.f9874c.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.INVALID_REQUEST);
        }
    }

    /* renamed from: p */
    public boolean m29563p() {
        return this.f9894w;
    }

    /* renamed from: q */
    public int m29562q() {
        return this.f9895x;
    }

    /* renamed from: r */
    public int m29561r() {
        return this.f9896y;
    }

    /* renamed from: s */
    public int m29560s() {
        return this.f9897z;
    }

    /* renamed from: t */
    public JSONArray m29559t() {
        return this.f9860A;
    }

    /* renamed from: u */
    public JSONObject m29558u() {
        return this.f9861B;
    }

    /* renamed from: v */
    public String m29557v() {
        return this.f9862C;
    }

    /* renamed from: w */
    public double m29556w() {
        return this.f9863D;
    }

    /* renamed from: x */
    public String m29555x() {
        return this.f9864E;
    }

    /* renamed from: y */
    public String m29554y() {
        return this.f9865F;
    }

    /* renamed from: z */
    public long m29553z() {
        return this.f9866G;
    }
}
