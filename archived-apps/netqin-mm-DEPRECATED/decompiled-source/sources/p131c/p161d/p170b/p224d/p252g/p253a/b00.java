package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdtd;
import com.google.android.gms.internal.ads.zzdtg;
/* renamed from: c.d.b.d.g.a.b00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b00.class */
public final class b00 extends zzdtg {

    /* renamed from: a */
    public String f12320a;

    /* renamed from: b */
    public Boolean f12321b;

    /* renamed from: c */
    public Boolean f12322c;

    @Override // com.google.android.gms.internal.ads.zzdtg
    /* renamed from: a */
    public final zzdtd mo13205a() {
        String str = "";
        if (this.f12320a == null) {
            str = "".concat(" clientVersion");
        }
        String str2 = str;
        if (this.f12321b == null) {
            str2 = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        String str3 = str2;
        if (this.f12322c == null) {
            str3 = String.valueOf(str2).concat(" isGooglePlayServicesAvailable");
        }
        if (str3.isEmpty()) {
            return new a00(this.f12320a, this.f12321b.booleanValue(), this.f12322c.booleanValue());
        }
        String valueOf = String.valueOf(str3);
        throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    /* renamed from: a */
    public final zzdtg mo13204a(String str) {
        if (str != null) {
            this.f12320a = str;
            return this;
        }
        throw new NullPointerException("Null clientVersion");
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    /* renamed from: a */
    public final zzdtg mo13203a(boolean z) {
        this.f12321b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    /* renamed from: b */
    public final zzdtg mo13202b(boolean z) {
        this.f12322c = true;
        return this;
    }
}
