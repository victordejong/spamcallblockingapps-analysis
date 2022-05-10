package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzbvo;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzcte;
import com.google.android.gms.internal.ads.zzcxv;
import com.google.android.gms.internal.ads.zzdpg;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.pq */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/pq.class */
public final class C3925pq implements zzbvo {

    /* renamed from: a */
    public boolean f14558a = false;

    /* renamed from: b */
    public final /* synthetic */ zzctc f14559b;

    /* renamed from: c */
    public final /* synthetic */ zzbcg f14560c;

    public C3925pq(zzcxv zzcxvVar, zzctc zzctcVar, zzbcg zzbcgVar) {
        this.f14559b = zzctcVar;
        this.f14560c = zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    /* renamed from: a */
    public final void mo15018a(int i) {
        if (!this.f14558a) {
            m26540b(new zzva(i, zzcxv.m13800a(this.f14559b.f26496a, i), "undefined", null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    /* renamed from: a */
    public final void mo15017a(int i, String str) {
        synchronized (this) {
            if (!this.f14558a) {
                this.f14558a = true;
                String str2 = str;
                if (str == null) {
                    str2 = zzcxv.m13800a(this.f14559b.f26496a, i);
                }
                m26540b(new zzva(i, str2, "undefined", null, null));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    /* renamed from: a */
    public final void mo15016a(zzva zzvaVar) {
        synchronized (this) {
            this.f14558a = true;
            m26540b(zzvaVar);
        }
    }

    /* renamed from: b */
    public final void m26540b(zzva zzvaVar) {
        zzdpg zzdpgVar = zzdpg.INTERNAL_ERROR;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23661C2)).booleanValue()) {
            zzdpgVar = zzdpg.NO_FILL;
        }
        this.f14560c.m15834a((Throwable) new zzcte(zzdpgVar, zzvaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    /* renamed from: x */
    public final void mo15015x() {
        synchronized (this) {
            this.f14560c.m15835a((zzbcg) null);
        }
    }
}
