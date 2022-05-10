package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdtd;
/* renamed from: c.d.b.d.g.a.a00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a00.class */
public final class a00 extends zzdtd {

    /* renamed from: a */
    public final String f12053a;

    /* renamed from: b */
    public final boolean f12054b;

    /* renamed from: c */
    public final boolean f12055c;

    public a00(String str, boolean z, boolean z2) {
        this.f12053a = str;
        this.f12054b = z;
        this.f12055c = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtd
    /* renamed from: a */
    public final String mo13213a() {
        return this.f12053a;
    }

    @Override // com.google.android.gms.internal.ads.zzdtd
    /* renamed from: b */
    public final boolean mo13212b() {
        return this.f12054b;
    }

    @Override // com.google.android.gms.internal.ads.zzdtd
    /* renamed from: c */
    public final boolean mo13211c() {
        return this.f12055c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdtd)) {
            return false;
        }
        zzdtd zzdtdVar = (zzdtd) obj;
        return this.f12053a.equals(zzdtdVar.mo13213a()) && this.f12054b == zzdtdVar.mo13212b() && this.f12055c == zzdtdVar.mo13211c();
    }

    public final int hashCode() {
        int hashCode = this.f12053a.hashCode();
        int i = 1231;
        int i2 = this.f12054b ? 1231 : 1237;
        if (!this.f12055c) {
            i = 1237;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f12053a;
        boolean z = this.f12054b;
        boolean z2 = this.f12055c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }
}
