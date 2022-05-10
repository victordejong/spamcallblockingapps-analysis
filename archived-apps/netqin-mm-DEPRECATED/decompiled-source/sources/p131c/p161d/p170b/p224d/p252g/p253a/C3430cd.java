package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbqu;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzdyr;
/* renamed from: c.d.b.d.g.a.cd */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cd.class */
public final class C3430cd implements zzdyr<zzbqu> {

    /* renamed from: a */
    public final /* synthetic */ zzdyr f12548a;

    /* renamed from: b */
    public final /* synthetic */ zzbqv f12549b;

    public C3430cd(zzbqv zzbqvVar, zzdyr zzdyrVar) {
        this.f12549b = zzbqvVar;
        this.f12548a = zzdyrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        this.f12548a.mo12980a(th);
        this.f12549b.m15146b();
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzbqu zzbquVar) {
        this.f12549b.m15147a(zzbquVar.f25389a, this.f12548a);
    }
}
