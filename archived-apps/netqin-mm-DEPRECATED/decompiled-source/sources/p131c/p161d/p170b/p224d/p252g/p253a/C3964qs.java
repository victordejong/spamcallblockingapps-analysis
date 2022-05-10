package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdgu;
import com.google.android.gms.internal.ads.zzdgx;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: c.d.b.d.g.a.qs */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qs.class */
public final class C3964qs implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final Set<String> f14840a;

    public C3964qs(Set<String> set) {
        this.f14840a = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.f14840a) {
            arrayList.add(str);
        }
        return zzdyq.m12988a(new zzdgu(arrayList) { // from class: c.d.b.d.g.a.ps

            /* renamed from: a */
            public final ArrayList f14562a;

            {
                this.f14562a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f14562a);
            }
        });
    }
}
