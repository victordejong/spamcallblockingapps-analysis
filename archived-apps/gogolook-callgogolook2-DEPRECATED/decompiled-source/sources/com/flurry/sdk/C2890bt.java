package com.flurry.sdk;

import android.content.Context;
import android.media.AudioManager;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.flurry.sdk.AbstractC3469lr;
import com.flurry.sdk.AbstractC3472lt;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.bt */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bt.class */
public class C2890bt implements AbstractC3469lr {

    /* renamed from: z */
    public static final String f4323z = "bt";

    /* renamed from: B */
    public String f4324B;

    /* renamed from: D */
    public AbstractC3518x f4325D;

    /* renamed from: J */
    public C3459lk f4326J;

    /* renamed from: M */
    public String f4327M;

    /* renamed from: Q */
    public String f4328Q;

    /* renamed from: a */
    public C2861bc f4329a;

    /* renamed from: b */
    public int f4330b;

    /* renamed from: c */
    public String f4331c;

    /* renamed from: d */
    public String f4332d;

    /* renamed from: e */
    public String f4333e;

    /* renamed from: f */
    public String f4334f;

    /* renamed from: g */
    public String f4335g;

    /* renamed from: h */
    public String f4336h;

    /* renamed from: i */
    public C3462ln f4337i;

    /* renamed from: j */
    public String f4338j;

    /* renamed from: k */
    public List<String> f4339k;

    /* renamed from: l */
    public C2887bq f4340l;

    /* renamed from: m */
    public C2887bq f4341m;

    /* renamed from: n */
    public C2887bq f4342n;

    /* renamed from: o */
    public C2887bq f4343o;

    /* renamed from: p */
    public C2887bq f4344p;

    /* renamed from: q */
    public C2887bq f4345q;

    /* renamed from: r */
    public String f4346r;

    /* renamed from: s */
    public String f4347s;

    /* renamed from: t */
    public URL f4348t;

    /* renamed from: u */
    public int f4349u;

    /* renamed from: v */
    public C2893b f4350v;

    /* renamed from: w */
    public AbstractC3469lr.AbstractC3470a f4351w;

    /* renamed from: x */
    public AbstractC3460ll f4352x;

    /* renamed from: y */
    public int f4353y;

    /* renamed from: com.flurry.sdk.bt$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bt$a.class */
    public static final class C2892a implements AbstractC3469lr.AbstractC3470a {
        public C2892a(String str, String str2) {
        }

        public C2892a(String str, String str2, String str3) {
        }
    }

    /* renamed from: com.flurry.sdk.bt$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bt$b.class */
    public static final class C2893b {
        public C2893b(URL url, int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, boolean z, int i3, int i4, URL url2, String str7, String str8, String[] strArr) {
        }
    }

    public C2890bt(C2861bc bcVar, AbstractC3518x xVar, String str) {
        JSONObject jSONObject;
        UUID.randomUUID().toString();
        new WeakReference(null);
        new AbstractC3107fp() { // from class: com.flurry.sdk.bt.1
            @Override // com.flurry.sdk.AbstractC3107fp
            /* renamed from: a */
            public final void mo32301a() {
                C2890bt.m33460a(C2890bt.this);
            }
        };
        if (bcVar != null) {
            this.f4329a = bcVar;
            this.f4325D = xVar;
            this.f4324B = str;
            AbstractC3472lt ltVar = C3461lm.m32419a().f5954a;
            if (ltVar != null) {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put(AbstractC3472lt.EnumC3473a.SDK_NAME.f5974q, ltVar.m32384a());
                hashMap.put(AbstractC3472lt.EnumC3473a.SDK_VERSION.f5974q, ltVar.m32383b());
                hashMap.put(AbstractC3472lt.EnumC3473a.API_KEY.f5974q, ltVar.m32382c());
                hashMap.put(AbstractC3472lt.EnumC3473a.APP_ID.f5974q, ltVar.m32381d());
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_TYPE.f5974q, m33461a());
                hashMap.put(AbstractC3472lt.EnumC3473a.ADUNIT_ID.f5974q, this.f4324B);
                try {
                    jSONObject = new JSONObject(mo32407c());
                } catch (JSONException e) {
                    String str2 = f4323z;
                    C3356jq.m32615a(4, str2, "Error parsing JSON: " + e);
                    jSONObject = new JSONObject();
                }
                String optString = jSONObject.optString("displayType", null);
                jSONObject.optString("layoutType", null);
                int a = C3461lm.m32418a(optString);
                C3461lm.m32417b();
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_UNIT_DISPLAY_TYPE.f5974q, Integer.valueOf(a));
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_INVENTORY_SOURCE_ID.f5974q, jSONObject.optString("inventorySourceId", null));
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_TEMPLATE.f5974q, 0);
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_ID.f5974q, jSONObject.optString("id", null));
                hashMap.put(AbstractC3472lt.EnumC3473a.AD_MEDIA_TYPE.f5974q, Integer.valueOf(mo32411a("videoUrl") != null ? 102 : mo32411a("secHqImage") != null ? 100 : 101));
                this.f4325D.mo32279k().f4111b.f4155j = hashMap;
            }
            AudioManager audioManager = (AudioManager) this.f4325D.mo32282e().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            this.f4326J = new C3459lk();
            this.f4326J.put("FEEDBACK_STATE", 0);
            SystemClock.elapsedRealtime();
            return;
        }
        throw new IllegalArgumentException("AdUnit is null while creating internal adUnit.");
    }

    /* renamed from: a */
    public static /* synthetic */ void m33460a(C2890bt btVar) {
        AbstractC3518x xVar = btVar.f4325D;
        if (xVar instanceof C2788ab) {
            C2788ab abVar = (C2788ab) xVar;
            Boolean bool = abVar.f3929w.get(btVar.m33459n());
            if (!(bool == null ? false : bool.booleanValue())) {
                C2861bc bcVar = btVar.f4325D.mo32279k().f4111b;
                String str = f4323z;
                C3356jq.m32615a(4, str, "Fire partial viewability for AdUnitId: " + bcVar.f4146a + "for AdUnit: " + bcVar.toString());
                EnumC2874bi biVar = EnumC2874bi.EV_PARTIAL_VIEWED;
                Map emptyMap = Collections.emptyMap();
                String str2 = f4323z;
                C3356jq.m32615a(4, str2, "Sending EventType:" + biVar + " for AdUnitId:" + btVar.f4329a.f4146a + " for AdUnitSection:" + btVar.f4324B);
                Map map = emptyMap;
                if (emptyMap == null) {
                    map = new HashMap();
                }
                btVar.f4325D.mo32279k().m33534a(btVar.f4324B, btVar.f4329a.f4146a);
                Context e = btVar.f4325D.mo32282e();
                AbstractC3518x xVar2 = btVar.f4325D;
                C3007du.m33321a(biVar, map, e, xVar2, xVar2.mo32279k(), 0);
                abVar.f3929w.put(btVar.m33459n(), true);
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: a */
    public final C3466lp mo32411a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (C2921cr crVar : this.f4329a.m33504b()) {
            if (crVar.f4515a.equals(str)) {
                return new C3466lp(crVar);
            }
        }
        return null;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: a */
    public final AbstractC3469lr mo32413a(double d) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: a */
    public final AbstractC3469lr mo32412a(int i) {
        return this;
    }

    /* renamed from: a */
    public final String m33461a() {
        return this.f4329a.f4147b.f4439e;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: b */
    public final int mo32410b() {
        return this.f4330b;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: b */
    public final AbstractC3469lr mo32409b(int i) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: b */
    public final AbstractC3469lr mo32408b(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: c */
    public final AbstractC3469lr mo32406c(int i) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: c */
    public final AbstractC3469lr mo32405c(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: c */
    public final String mo32407c() {
        return this.f4329a.f4147b.f4460z.f4512e;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: d */
    public final long mo32404d() {
        return this.f4329a.f4147b.f4448n;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: d */
    public final AbstractC3469lr mo32403d(int i) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: d */
    public final AbstractC3469lr mo32402d(String str) {
        this.f4332d = str;
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: e */
    public final int mo32401e() {
        return this.f4329a.f4147b.f4449o;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: e */
    public final AbstractC3469lr mo32400e(int i) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: e */
    public final AbstractC3469lr mo32399e(String str) {
        this.f4328Q = str;
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: f */
    public final AbstractC3469lr mo32397f(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: f */
    public final String mo32398f() {
        return this.f4331c;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: g */
    public final AbstractC3469lr mo32395g(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: g */
    public final String mo32396g() {
        return this.f4327M;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: h */
    public final AbstractC3469lr mo32393h(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: h */
    public final String mo32394h() {
        return this.f4334f;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: i */
    public final AbstractC3469lr mo32391i(String str) {
        return this;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: i */
    public final String mo32392i() {
        return this.f4336h;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: j */
    public final String mo32390j() {
        return this.f4335g;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: k */
    public final String mo32389k() {
        return this.f4346r;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: l */
    public final String mo32388l() {
        return this.f4328Q;
    }

    @Override // com.flurry.sdk.AbstractC3469lr
    /* renamed from: m */
    public final AbstractC3469lr mo32387m() {
        return this;
    }

    /* renamed from: n */
    public final String m33459n() {
        return this.f4353y == 2 ? this.f4324B : this.f4329a.toString();
    }

    public String toString() {
        return "{Ad[type=" + m33461a() + "]}";
    }
}
