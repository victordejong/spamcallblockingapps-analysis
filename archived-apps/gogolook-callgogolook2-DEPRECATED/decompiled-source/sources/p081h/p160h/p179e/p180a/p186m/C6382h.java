package p081h.p160h.p179e.p180a.p186m;

import org.json.JSONObject;
/* renamed from: h.h.e.a.m.h */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/h.class */
public class C6382h {

    /* renamed from: a */
    public int f15879a;

    /* renamed from: b */
    public JSONObject f15880b;

    /* renamed from: c */
    public String f15881c;

    /* renamed from: d */
    public String f15882d;

    /* renamed from: e */
    public String f15883e;

    /* renamed from: f */
    public String f15884f;

    /* renamed from: g */
    public String f15885g;

    /* renamed from: h */
    public String f15886h;

    /* renamed from: i */
    public long f15887i;

    /* renamed from: j */
    public int f15888j;

    public C6382h() {
        this.f15879a = 0;
        this.f15880b = null;
        this.f15881c = null;
        this.f15882d = null;
        this.f15883e = null;
        this.f15884f = null;
        this.f15885g = null;
        this.f15886h = null;
        this.f15887i = 0L;
        this.f15888j = 0;
    }

    public C6382h(int i, JSONObject jSONObject) {
        this.f15879a = 0;
        this.f15880b = null;
        this.f15881c = null;
        this.f15882d = null;
        this.f15883e = null;
        this.f15884f = null;
        this.f15885g = null;
        this.f15886h = null;
        this.f15887i = 0L;
        this.f15888j = 0;
        this.f15879a = i;
        this.f15880b = jSONObject;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("statusCode : " + this.f15879a);
        if (this.f15880b != null) {
            sb.append(", resultObject : " + this.f15880b.toString());
        }
        if (this.f15881c != null) {
            sb.append(", resultString : " + this.f15881c);
        }
        if (this.f15882d != null) {
            sb.append(", etag : " + this.f15882d);
        }
        if (this.f15883e != null) {
            sb.append(", amzId : " + this.f15883e);
        }
        if (this.f15884f != null) {
            sb.append(", requestId : " + this.f15884f);
        }
        if (this.f15885g != null) {
            sb.append(", xCacheStatus : " + this.f15885g);
        }
        if (this.f15886h != null) {
            sb.append(", dataSource : " + this.f15886h);
        }
        sb.append(", expiredTime : " + this.f15887i);
        sb.append(", serverLatency : " + this.f15888j);
        return sb.toString();
    }
}
