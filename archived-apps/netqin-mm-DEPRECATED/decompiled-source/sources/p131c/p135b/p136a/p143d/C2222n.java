package p131c.p135b.p136a.p143d;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
/* renamed from: c.b.a.d.n */
/* loaded from: classes-dex2jar.jar:c/b/a/d/n.class */
public class C2222n implements MaxAd {

    /* renamed from: a */
    public final String f8376a;

    /* renamed from: b */
    public final MaxAdFormat f8377b;

    /* renamed from: c */
    public final String f8378c;

    public C2222n(String str, MaxAdFormat maxAdFormat, String str2) {
        this.f8376a = str;
        this.f8377b = maxAdFormat;
        this.f8378c = str2;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdUnitId() {
        return this.f8376a;
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return this.f8377b;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return this.f8378c;
    }

    public String toString() {
        return "MaxAd{adUnitId=" + this.f8376a + ", format=" + this.f8377b + ", networkName=" + this.f8378c + "}";
    }
}
