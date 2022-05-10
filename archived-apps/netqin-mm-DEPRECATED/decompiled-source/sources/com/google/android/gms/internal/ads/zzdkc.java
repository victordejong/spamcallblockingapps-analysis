package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.internal.ads.zzsg;
import com.google.android.gms.internal.ads.zzsh;
import com.google.android.gms.internal.ads.zzva;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p252g.p253a.C3370aw;
import p131c.p161d.p170b.p224d.p252g.p253a.C3411bw;
import p131c.p161d.p170b.p224d.p252g.p253a.C3449cw;
import p131c.p161d.p170b.p224d.p252g.p253a.C3486dw;
import p131c.p161d.p170b.p224d.p252g.p253a.C4266yv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkc.class */
public final class zzdkc implements zzp, zzbui, zzbwb, zzdls {

    /* renamed from: a */
    public final zzdpw f27444a;

    /* renamed from: b */
    public final AtomicReference<zzsh> f27445b = new AtomicReference<>();

    /* renamed from: c */
    public final AtomicReference<zzsm> f27446c = new AtomicReference<>();

    /* renamed from: d */
    public final AtomicReference<zzsq> f27447d = new AtomicReference<>();

    /* renamed from: e */
    public final AtomicReference<zzbwb> f27448e = new AtomicReference<>();

    /* renamed from: f */
    public final AtomicReference<zzp> f27449f = new AtomicReference<>();

    /* renamed from: g */
    public zzdkc f27450g = null;

    public zzdkc(zzdpw zzdpwVar) {
        this.f27444a = zzdpwVar;
    }

    /* renamed from: a */
    public static zzdkc m13543a(zzdkc zzdkcVar) {
        zzdkc zzdkcVar2 = new zzdkc(zzdkcVar.f27444a);
        zzdkcVar2.mo13502a((zzdls) zzdkcVar);
        return zzdkcVar2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        zzdkc zzdkcVar = this;
        while (true) {
            zzdkc zzdkcVar2 = zzdkcVar.f27450g;
            if (zzdkcVar2 != null) {
                zzdkcVar = zzdkcVar2;
            } else {
                zzdll.m13521a(zzdkcVar.f27449f, C3449cw.f12585a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwb
    /* renamed from: T0 */
    public final void mo13535T0() {
        zzdkc zzdkcVar = this;
        while (true) {
            zzdkc zzdkcVar2 = zzdkcVar.f27450g;
            if (zzdkcVar2 != null) {
                zzdkcVar = zzdkcVar2;
            } else {
                zzdll.m13521a(zzdkcVar.f27448e, C3370aw.f12315a);
                zzdll.m13521a(zzdkcVar.f27447d, C3486dw.f12778a);
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m13546a() {
        zzdkc zzdkcVar = this;
        while (true) {
            zzdkc zzdkcVar2 = zzdkcVar.f27450g;
            if (zzdkcVar2 != null) {
                zzdkcVar = zzdkcVar2;
            } else {
                zzdkcVar.f27444a.m13322a();
                zzdll.m13521a(zzdkcVar.f27446c, C4266yv.f16236a);
                zzdll.m13521a(zzdkcVar.f27447d, C3411bw.f12502a);
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m13545a(zzp zzpVar) {
        this.f27449f.set(zzpVar);
    }

    /* renamed from: a */
    public final void m13544a(zzbwb zzbwbVar) {
        this.f27448e.set(zzbwbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdls
    /* renamed from: a */
    public final void mo13502a(zzdls zzdlsVar) {
        this.f27450g = (zzdkc) zzdlsVar;
    }

    /* renamed from: a */
    public final void m13542a(final zzsg zzsgVar) {
        zzdkc zzdkcVar = this;
        while (true) {
            zzdkc zzdkcVar2 = zzdkcVar.f27450g;
            if (zzdkcVar2 != null) {
                zzdkcVar = zzdkcVar2;
            } else {
                zzdll.m13521a(zzdkcVar.f27445b, new zzdlk(zzsgVar) { // from class: c.d.b.d.g.a.xv

                    /* renamed from: a */
                    public final zzsg f16068a;

                    {
                        this.f16068a = zzsgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzsh) obj).mo11473a(this.f16068a);
                    }
                });
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m13541a(zzsh zzshVar) {
        this.f27445b.set(zzshVar);
    }

    /* renamed from: a */
    public final void m13540a(zzsm zzsmVar) {
        this.f27446c.set(zzsmVar);
    }

    /* renamed from: a */
    public final void m13539a(zzsq zzsqVar) {
        this.f27447d.set(zzsqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(final zzva zzvaVar) {
        zzdkc zzdkcVar = this;
        while (true) {
            zzdkc zzdkcVar2 = zzdkcVar.f27450g;
            if (zzdkcVar2 != null) {
                zzdkcVar = zzdkcVar2;
            } else {
                zzdll.m13521a(zzdkcVar.f27445b, new zzdlk(zzvaVar) { // from class: c.d.b.d.g.a.wv

                    /* renamed from: a */
                    public final zzva f15976a;

                    {
                        this.f15976a = zzvaVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzsh) obj).mo11472d(this.f15976a);
                    }
                });
                zzdll.m13521a(zzdkcVar.f27445b, new zzdlk(zzvaVar) { // from class: c.d.b.d.g.a.zv

                    /* renamed from: a */
                    public final zzva f16469a;

                    {
                        this.f16469a = zzvaVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzsh) obj).mo11471k(this.f16469a.f28995a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
    }
}
