package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzccc;
import com.google.android.gms.internal.ads.zzccm;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdny;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzvs;
/* renamed from: c.d.b.d.g.a.lo */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lo.class */
public final class C3775lo implements zzccm {

    /* renamed from: a */
    public final zzbbx f13988a;

    /* renamed from: b */
    public final zzdzc<zzbnx> f13989b;

    /* renamed from: c */
    public final zzdnv f13990c;

    /* renamed from: d */
    public final zzbgj f13991d;

    /* renamed from: e */
    public final zzdok f13992e;

    public C3775lo(Context context, zzbbx zzbbxVar, zzdzc<zzbnx> zzdzcVar, zzdnv zzdnvVar, zzbgj zzbgjVar, zzdok zzdokVar) {
        this.f13988a = zzbbxVar;
        this.f13989b = zzdzcVar;
        this.f13990c = zzdnvVar;
        this.f13991d = zzbgjVar;
        this.f13992e = zzdokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccm
    /* renamed from: a */
    public final void mo14809a(boolean z, Context context) {
        zzbnx zzbnxVar = (zzbnx) zzdyq.m12983b(this.f13989b);
        this.f13991d.mo15559g(true);
        zzi zziVar = new zzi(true, true, false, 0.0f, -1, z, this.f13990c.f27563J, false);
        zzp.m17970b();
        zzccc j = zzbnxVar.mo15252j();
        zzbgj zzbgjVar = this.f13991d;
        int i = this.f13990c.f27565L;
        if (i == -1) {
            zzvs zzvsVar = this.f13992e.f27648j;
            if (zzvsVar != null) {
                int i2 = zzvsVar.f29057a;
                if (i2 == 1) {
                    zzp.m17967e();
                    i = 7;
                } else if (i2 == 2) {
                    zzp.m17967e();
                    i = 6;
                }
            }
            zzbbq.m15858a("Error setting app open orientation; no targeting orientation available.");
            i = this.f13990c.f27565L;
        }
        zzbbx zzbbxVar = this.f13988a;
        zzdnv zzdnvVar = this.f13990c;
        String str = zzdnvVar.f27554A;
        zzdny zzdnyVar = zzdnvVar.f27602r;
        zzl.m18002a(context, new AdOverlayInfoParcel((zzux) null, j, (zzv) null, zzbgjVar, i, zzbbxVar, str, zziVar, zzdnyVar.f27620b, zzdnyVar.f27619a), true);
    }
}
