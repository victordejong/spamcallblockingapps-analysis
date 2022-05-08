package gogolook.callgogolook2.p074ad;

import kotlin.Metadata;
import p626l.p629c0.AbstractC14902e;
import p626l.p641z.p643d.AbstractC15151m;
import p626l.p641z.p643d.C15131a0;
@Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdActivity$onStop$1 */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdActivity$onStop$1.class */
public final class AdActivity$onStop$1 extends AbstractC15151m {
    @Override // p626l.p629c0.AbstractC14909j
    public Object get() {
        return AdActivity.m28873a((AdActivity) this.receiver);
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public String getName() {
        return "adUnit";
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public AbstractC14902e getOwner() {
        return C15131a0.m419a(AdActivity.class);
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public String getSignature() {
        return "getAdUnit()Lgogolook/callgogolook2/ad/AdUnit;";
    }
}
