package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdnp;
/* renamed from: c.d.b.d.g.a.by */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/by.class */
public final class C3413by implements zzdag<zzcjg> {

    /* renamed from: a */
    public final /* synthetic */ zzdnp f12504a;

    public C3413by(zzdnp zzdnpVar) {
        this.f12504a = zzdnpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    /* renamed from: a */
    public final void mo13703a() {
        synchronized (this.f12504a) {
            this.f12504a.f27542d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    public final /* synthetic */ void onSuccess(zzcjg zzcjgVar) {
        zzcjg zzcjgVar2;
        zzcjg zzcjgVar3 = zzcjgVar;
        synchronized (this.f12504a) {
            this.f12504a.f27542d = zzcjgVar3;
            zzcjgVar2 = this.f12504a.f27542d;
            zzcjgVar2.mo14749b();
        }
    }
}
