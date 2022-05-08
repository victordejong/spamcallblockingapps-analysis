package gogolook.callgogolook2.gson;

import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/gson/IapRegularPricing;", "", "region", "", "price", "(Ljava/lang/String;Ljava/lang/String;)V", "getPrice", "()Ljava/lang/String;", "getRegion", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/IapRegularPricing.class */
public final class IapRegularPricing {
    @AbstractC10120c("price")
    public final String price;
    @AbstractC10120c("region")
    public final String region;

    public IapRegularPricing() {
        this(null, null, 3, null);
    }

    public IapRegularPricing(String str, String str2) {
        this.region = str;
        this.price = str2;
    }

    public /* synthetic */ IapRegularPricing(String str, String str2, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IapRegularPricing)) {
            return false;
        }
        IapRegularPricing iapRegularPricing = (IapRegularPricing) obj;
        return C15149k.m384a((Object) this.region, (Object) iapRegularPricing.region) && C15149k.m384a((Object) this.price, (Object) iapRegularPricing.price);
    }

    public int hashCode() {
        String str = this.region;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.price;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "IapRegularPricing(region=" + this.region + ", price=" + this.price + ")";
    }
}
