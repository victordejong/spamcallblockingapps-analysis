package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzdnp;
import com.google.android.gms.internal.ads.zzxj;
/* renamed from: c.d.b.d.g.a.cy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cy.class */
public final class C3451cy extends AdMetadataListener {

    /* renamed from: a */
    public final /* synthetic */ zzxj f12587a;

    /* renamed from: b */
    public final /* synthetic */ zzdnp f12588b;

    public C3451cy(zzdnp zzdnpVar, zzxj zzxjVar) {
        this.f12588b = zzdnpVar;
        this.f12587a = zzxjVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    /* renamed from: a */
    public final void mo13510a() {
        zzcjg zzcjgVar;
        zzcjgVar = this.f12588b.f27542d;
        if (zzcjgVar != null) {
            try {
                this.f12587a.mo11142O();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }
}
