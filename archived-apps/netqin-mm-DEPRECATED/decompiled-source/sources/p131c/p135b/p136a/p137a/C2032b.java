package p131c.p135b.p136a.p137a;

import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2429t;
/* renamed from: c.b.a.a.b */
/* loaded from: classes-dex2jar.jar:c/b/a/a/b.class */
public class C2032b {

    /* renamed from: g */
    public static final List<String> f7926g = Arrays.asList("video/mp4", "video/webm", "video/3gpp", "video/x-matroska");

    /* renamed from: a */
    public final C2341l f7927a;

    /* renamed from: c */
    public final JSONObject f7929c;

    /* renamed from: d */
    public final JSONObject f7930d;

    /* renamed from: e */
    public final EnumC7029b f7931e;

    /* renamed from: b */
    public List<C2429t> f7928b = new ArrayList();

    /* renamed from: f */
    public final long f7932f = System.currentTimeMillis();

    public C2032b(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, C2341l lVar) {
        this.f7927a = lVar;
        this.f7929c = jSONObject;
        this.f7930d = jSONObject2;
        this.f7931e = bVar;
    }

    /* renamed from: a */
    public int m31241a() {
        return this.f7928b.size();
    }

    /* renamed from: b */
    public List<C2429t> m31240b() {
        return this.f7928b;
    }

    /* renamed from: c */
    public JSONObject m31239c() {
        return this.f7929c;
    }

    /* renamed from: d */
    public JSONObject m31238d() {
        return this.f7930d;
    }

    /* renamed from: e */
    public EnumC7029b m31237e() {
        return this.f7931e;
    }

    /* renamed from: f */
    public long m31236f() {
        return this.f7932f;
    }

    /* renamed from: g */
    public C2246b m31235g() {
        String b = C2390i.m29913b(this.f7930d, "zone_id", (String) null, this.f7927a);
        return C2246b.m30646a(AppLovinAdSize.fromString(C2390i.m29913b(this.f7930d, "ad_size", (String) null, this.f7927a)), AppLovinAdType.fromString(C2390i.m29913b(this.f7930d, "ad_type", (String) null, this.f7927a)), b, this.f7927a);
    }

    /* renamed from: h */
    public List<String> m31234h() {
        List<String> a = C2386e.m29982a(C2390i.m29913b(this.f7929c, "vast_preferred_video_types", (String) null, (C2341l) null));
        if (a.isEmpty()) {
            a = f7926g;
        }
        return a;
    }

    /* renamed from: i */
    public int m31233i() {
        return AbstractC2426r.m29794a(this.f7929c);
    }
}
