package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.List;
/* renamed from: c.d.b.d.g.a.c4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c4.class */
public final class C3421c4 implements zzdyr<Void> {

    /* renamed from: a */
    public final /* synthetic */ zzdzc f12522a;

    public C3421c4(zzavy zzavyVar, zzdzc zzdzcVar) {
        this.f12522a = zzdzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        List list;
        list = zzavy.f24548n;
        list.remove(this.f12522a);
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(Void r4) {
        List list;
        list = zzavy.f24548n;
        list.remove(this.f12522a);
    }
}
