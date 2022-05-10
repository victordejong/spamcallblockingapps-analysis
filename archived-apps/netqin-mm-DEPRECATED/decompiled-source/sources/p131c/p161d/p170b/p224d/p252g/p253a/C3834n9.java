package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzdyr;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.n9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/n9.class */
public final class C3834n9 implements zzdyr<Map<String, String>> {

    /* renamed from: a */
    public final /* synthetic */ List f14221a;

    /* renamed from: b */
    public final /* synthetic */ String f14222b;

    /* renamed from: c */
    public final /* synthetic */ zzbgi f14223c;

    public C3834n9(zzbgi zzbgiVar, List list, String str) {
        this.f14223c = zzbgiVar;
        this.f14221a = list;
        this.f14222b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(Map<String, String> map) {
        this.f14223c.m15626a(map, this.f14221a, this.f14222b);
    }
}
