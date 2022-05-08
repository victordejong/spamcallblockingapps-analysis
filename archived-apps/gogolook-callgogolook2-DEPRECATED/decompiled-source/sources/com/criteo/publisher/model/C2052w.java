package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.CreateOneLinkHttpTask;
import com.criteo.publisher.AbstractC1966c;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import com.mopub.network.ImpressionData;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.criteo.publisher.model.w */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/w.class */
public class C2052w {

    /* renamed from: l */
    public static final String f2268l = "w";
    @Nullable

    /* renamed from: a */
    public final String f2269a;

    /* renamed from: b */
    public String f2270b;

    /* renamed from: c */
    public String f2271c;

    /* renamed from: d */
    public int f2272d;

    /* renamed from: e */
    public int f2273e;

    /* renamed from: f */
    public String f2274f;

    /* renamed from: g */
    public String f2275g;

    /* renamed from: h */
    public int f2276h;

    /* renamed from: i */
    public long f2277i;

    /* renamed from: j */
    public double f2278j;

    /* renamed from: k */
    public AbstractC2075n f2279k;

    public C2052w(JSONObject jSONObject) {
        this.f2269a = jSONObject.optString("impId", null);
        this.f2274f = jSONObject.optString("placementId", null);
        if (jSONObject.has("cpm")) {
            try {
                this.f2270b = jSONObject.getString("cpm");
            } catch (JSONException e) {
                String str = "Unable to parse CPM " + e.getMessage();
                this.f2270b = String.valueOf(jSONObject.optDouble("cpm", 0.0d));
            }
        } else {
            this.f2270b = "0.0";
        }
        this.f2271c = jSONObject.optString(ImpressionData.CURRENCY, null);
        this.f2272d = jSONObject.optInt("width", 0);
        this.f2273e = jSONObject.optInt("height", 0);
        this.f2275g = jSONObject.optString("displayUrl", null);
        this.f2276h = jSONObject.optInt(CreateOneLinkHttpTask.TRACKING_LINK_LIVE_TIME_KEY, 0);
        if (m35797b() == null) {
            this.f2278j = 0.0d;
        }
        this.f2279k = null;
        if (jSONObject.has("native")) {
            try {
                this.f2279k = AbstractC2075n.m35756a(jSONObject.getJSONObject("native"));
            } catch (Exception e2) {
                String str2 = "exception when parsing json" + e2.getLocalizedMessage();
            }
        }
    }

    /* renamed from: a */
    public String m35801a() {
        return this.f2270b;
    }

    /* renamed from: a */
    public void m35800a(int i) {
        this.f2276h = i;
    }

    /* renamed from: a */
    public void m35799a(long j) {
        this.f2277i = j;
    }

    /* renamed from: a */
    public boolean m35798a(@NonNull AbstractC1966c cVar) {
        return ((long) (this.f2276h * 1000)) + this.f2277i <= cVar.mo35877a();
    }

    /* renamed from: b */
    public Double m35797b() {
        try {
            double parseDouble = Double.parseDouble(m35801a());
            this.f2278j = parseDouble;
            return Double.valueOf(parseDouble);
        } catch (Exception e) {
            String str = "CPM is not a valid double " + e.getMessage();
            return null;
        }
    }

    /* renamed from: c */
    public String m35796c() {
        return this.f2275g;
    }

    /* renamed from: d */
    public int m35795d() {
        return this.f2273e;
    }

    @Nullable
    /* renamed from: e */
    public String m35794e() {
        return this.f2269a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
        if (r0.equals(r0) != false) goto L_0x0053;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0070, code lost:
        if (r0.equals(r0) != false) goto L_0x0073;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
        if (r0.equals(r0) != false) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d7, code lost:
        if (r0.equals(r0) != false) goto L_0x00da;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        if (r0.equals(r0) != false) goto L_0x0033;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.C2052w.equals(java.lang.Object):boolean");
    }

    @Nullable
    /* renamed from: f */
    public AbstractC2075n m35793f() {
        return this.f2279k;
    }

    /* renamed from: g */
    public String m35792g() {
        return this.f2274f;
    }

    /* renamed from: h */
    public int m35791h() {
        return this.f2276h;
    }

    /* renamed from: i */
    public int m35790i() {
        return this.f2272d;
    }

    /* renamed from: j */
    public boolean m35789j() {
        return this.f2279k != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (com.criteo.publisher.p020a0.C1933u.m35989c(r5.f2275g) != false) goto L_0x002e;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m35788k() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Double r0 = r0.m35797b()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0030
            r0 = r6
            double r0 = r0.doubleValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001b
            r0 = r7
            r8 = r0
            goto L_0x0030
        L_0x001b:
            r0 = r5
            boolean r0 = r0.m35789j()
            if (r0 != 0) goto L_0x002e
            r0 = r7
            r8 = r0
            r0 = r5
            java.lang.String r0 = r0.f2275g
            boolean r0 = com.criteo.publisher.p020a0.C1933u.m35989c(r0)
            if (r0 == 0) goto L_0x0030
        L_0x002e:
            r0 = 1
            r8 = r0
        L_0x0030:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.C2052w.m35788k():boolean");
    }

    @NonNull
    public String toString() {
        return "Slot{impressionId='" + this.f2269a + "', cpm='" + this.f2270b + "', currency='" + this.f2271c + "', width=" + this.f2272d + ", height=" + this.f2273e + ", placementId='" + this.f2274f + "', displayUrl='" + this.f2275g + "', ttl=" + this.f2276h + ", timeOfDownload=" + this.f2277i + ", cpmValue=" + this.f2278j + ", nativeAssets=" + this.f2279k + '}';
    }
}
