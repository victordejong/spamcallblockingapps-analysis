package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdgu;
/* renamed from: c.d.b.d.g.a.mt */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/mt.class */
public final class C3817mt implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f14198a;

    /* renamed from: b */
    public final String f14199b;

    /* renamed from: c */
    public final Bundle f14200c;

    public C3817mt(String str, String str2, Bundle bundle) {
        this.f14198a = str;
        this.f14199b = str2;
        this.f14200c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f14198a);
        bundle2.putString("fc_consent", this.f14199b);
        bundle2.putBundle("iab_consent_info", this.f14200c);
    }
}
