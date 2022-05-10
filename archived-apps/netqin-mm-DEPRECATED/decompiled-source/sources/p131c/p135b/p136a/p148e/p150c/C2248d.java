package p131c.p135b.p136a.p148e.p150c;

import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.c.d */
/* loaded from: classes-dex2jar.jar:c/b/a/e/c/d.class */
public final class C2248d extends AppLovinAdBase {

    /* renamed from: e */
    public AppLovinAd f8451e;

    /* renamed from: f */
    public final C2246b f8452f;

    public C2248d(C2246b bVar, C2341l lVar) {
        super(new JSONObject(), new JSONObject(), EnumC7029b.UNKNOWN, lVar);
        this.f8452f = bVar;
    }

    /* renamed from: a */
    public AppLovinAd m30612a() {
        return this.f8451e;
    }

    /* renamed from: a */
    public void m30611a(AppLovinAd appLovinAd) {
        this.f8451e = appLovinAd;
    }

    /* renamed from: b */
    public AppLovinAd m30610b() {
        AppLovinAd appLovinAd = this.f8451e;
        if (appLovinAd == null) {
            appLovinAd = m30609c();
        }
        return appLovinAd;
    }

    /* renamed from: c */
    public final AppLovinAd m30609c() {
        return (AppLovinAd) this.sdk.m30241r().m30019c(this.f8452f);
    }

    /* renamed from: d */
    public final String m30608d() {
        C2246b adZone = getAdZone();
        return (adZone == null || adZone.m30625j()) ? null : adZone.m30650a();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2248d.class != obj.getClass()) {
            return false;
        }
        AppLovinAd b = m30610b();
        return b != null ? b.equals(obj) : super.equals(obj);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        AppLovinAd b = m30610b();
        return b != null ? b.getAdIdNumber() : 0L;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public C2246b getAdZone() {
        AppLovinAdBase appLovinAdBase = (AppLovinAdBase) m30610b();
        return appLovinAdBase != null ? appLovinAdBase.getAdZone() : this.f8452f;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        AppLovinAd b = m30610b();
        return b instanceof AppLovinAdBase ? ((AppLovinAdBase) b).getCreatedAtMillis() : 0L;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return getAdZone().m30638c();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public EnumC7029b getSource() {
        AppLovinAdBase appLovinAdBase = (AppLovinAdBase) m30610b();
        return appLovinAdBase != null ? appLovinAdBase.getSource() : EnumC7029b.UNKNOWN;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return getAdZone().m30636d();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public String getZoneId() {
        return this.f8452f.m30625j() ? null : this.f8452f.m30650a();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public int hashCode() {
        AppLovinAd b = m30610b();
        return b != null ? b.hashCode() : super.hashCode();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public boolean isVideoAd() {
        AppLovinAd b = m30610b();
        return b != null && b.isVideoAd();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public String toString() {
        return "AppLovinAd{ #" + getAdIdNumber() + ", adType=" + getType() + ", adSize=" + getSize() + ", zoneId='" + m30608d() + "'}";
    }
}
