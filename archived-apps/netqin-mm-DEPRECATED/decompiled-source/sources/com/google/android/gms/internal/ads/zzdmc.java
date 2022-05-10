package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzatw;
import com.google.android.gms.internal.ads.zzaub;
import com.google.android.gms.internal.ads.zzaug;
import com.google.android.gms.internal.ads.zzavd;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzavl;
import com.google.android.gms.internal.ads.zzavu;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzvp;
import com.google.android.gms.internal.ads.zzyi;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p252g.p253a.C3412bx;
import p131c.p161d.p170b.p224d.p252g.p253a.C3524ex;
import p131c.p161d.p170b.p224d.p252g.p253a.C3710jx;
import p131c.p161d.p170b.p224d.p252g.p253a.C3821mx;
import p131c.p161d.p170b.p224d.p252g.p253a.C3895ox;
import p131c.p161d.p170b.p224d.p252g.p253a.C3932px;
import p131c.p161d.p170b.p224d.p252g.p253a.C3969qx;
import p131c.p161d.p170b.p224d.p252g.p253a.C4009rx;
import p131c.p161d.p170b.p224d.p252g.p253a.C4267yw;
import p131c.p161d.p170b.p224d.p252g.p253a.C4305zw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmc.class */
public final class zzdmc extends AdMetadataListener implements zzbuh, zzbui, zzbuv, zzbvs, zzbwl, zzdls {

    /* renamed from: a */
    public final zzdpw f27502a;

    /* renamed from: b */
    public final AtomicReference<AdMetadataListener> f27503b = new AtomicReference<>();

    /* renamed from: c */
    public final AtomicReference<zzavg> f27504c = new AtomicReference<>();

    /* renamed from: d */
    public final AtomicReference<zzavd> f27505d = new AtomicReference<>();

    /* renamed from: e */
    public final AtomicReference<zzaug> f27506e = new AtomicReference<>();

    /* renamed from: f */
    public final AtomicReference<zzavl> f27507f = new AtomicReference<>();

    /* renamed from: g */
    public final AtomicReference<zzaub> f27508g = new AtomicReference<>();

    /* renamed from: h */
    public final AtomicReference<zzyi> f27509h = new AtomicReference<>();

    /* renamed from: i */
    public zzdmc f27510i = null;

    public zzdmc(zzdpw zzdpwVar) {
        this.f27502a = zzdpwVar;
    }

    /* renamed from: a */
    public static zzdmc m13501a(zzdmc zzdmcVar) {
        zzdmc zzdmcVar2 = new zzdmc(zzdmcVar.f27502a);
        zzdmcVar2.mo13502a((zzdls) zzdmcVar);
        return zzdmcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdmcVar.f27502a.m13322a();
                zzdll.m13521a(zzdmcVar.f27505d, C3895ox.f14368a);
                zzdll.m13521a(zzdmcVar.f27506e, C4009rx.f15048a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27506e, C3412bx.f12503a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    /* renamed from: a */
    public final void mo13510a() {
        zzdmc zzdmcVar = this.f27510i;
        if (zzdmcVar != null) {
            zzdmcVar.mo13510a();
        } else {
            zzdll.m13521a(this.f27503b, C3710jx.f13822a);
        }
    }

    /* renamed from: a */
    public final void m13509a(AdMetadataListener adMetadataListener) {
        this.f27503b.set(adMetadataListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(final zzatw zzatwVar, final String str, final String str2) {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27505d, new zzdlk(zzatwVar) { // from class: c.d.b.d.g.a.ax

                    /* renamed from: a */
                    public final zzatw f12316a;

                    {
                        this.f12316a = zzatwVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        zzatw zzatwVar2 = this.f12316a;
                        ((zzavd) obj).mo16281a(new zzavu(zzatwVar2.getType(), zzatwVar2.mo16345y()));
                    }
                });
                zzdll.m13521a(zzdmcVar.f27507f, new zzdlk(zzatwVar, str, str2) { // from class: c.d.b.d.g.a.dx

                    /* renamed from: a */
                    public final zzatw f12779a;

                    /* renamed from: b */
                    public final String f12780b;

                    /* renamed from: c */
                    public final String f12781c;

                    {
                        this.f12779a = zzatwVar;
                        this.f12780b = str;
                        this.f12781c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        zzatw zzatwVar2 = this.f12779a;
                        ((zzavl) obj).mo16299a(new zzavu(zzatwVar2.getType(), zzatwVar2.mo16345y()), this.f12780b, this.f12781c);
                    }
                });
                zzdll.m13521a(zzdmcVar.f27506e, new zzdlk(zzatwVar) { // from class: c.d.b.d.g.a.cx

                    /* renamed from: a */
                    public final zzatw f12586a;

                    {
                        this.f12586a = zzatwVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzaug) obj).mo16335a(this.f12586a);
                    }
                });
                zzdll.m13521a(zzdmcVar.f27508g, new zzdlk(zzatwVar, str, str2) { // from class: c.d.b.d.g.a.fx

                    /* renamed from: a */
                    public final zzatw f13004a;

                    /* renamed from: b */
                    public final String f13005b;

                    /* renamed from: c */
                    public final String f13006c;

                    {
                        this.f13004a = zzatwVar;
                        this.f13005b = str;
                        this.f13006c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzaub) obj).mo16342a(this.f13004a, this.f13005b, this.f13006c);
                    }
                });
                return;
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m13507a(zzaub zzaubVar) {
        this.f27508g.set(zzaubVar);
    }

    @Deprecated
    /* renamed from: a */
    public final void m13506a(zzaug zzaugVar) {
        this.f27506e.set(zzaugVar);
    }

    /* renamed from: a */
    public final void m13505a(zzavd zzavdVar) {
        this.f27505d.set(zzavdVar);
    }

    /* renamed from: a */
    public final void m13504a(zzavg zzavgVar) {
        this.f27504c.set(zzavgVar);
    }

    /* renamed from: a */
    public final void m13503a(zzavl zzavlVar) {
        this.f27507f.set(zzavlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdls
    /* renamed from: a */
    public final void mo13502a(zzdls zzdlsVar) {
        this.f27510i = (zzdmc) zzdlsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(final zzva zzvaVar) {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                final int i = zzvaVar.f28995a;
                zzdll.m13521a(zzdmcVar.f27504c, new zzdlk(zzvaVar) { // from class: c.d.b.d.g.a.lx

                    /* renamed from: a */
                    public final zzva f14004a;

                    {
                        this.f14004a = zzvaVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzavg) obj).mo16285c(this.f14004a);
                    }
                });
                zzdll.m13521a(zzdmcVar.f27504c, new zzdlk(i) { // from class: c.d.b.d.g.a.kx

                    /* renamed from: a */
                    public final int f13919a;

                    {
                        this.f13919a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzavg) obj).mo16284l(this.f13919a);
                    }
                });
                zzdll.m13521a(zzdmcVar.f27506e, new zzdlk(i) { // from class: c.d.b.d.g.a.nx

                    /* renamed from: a */
                    public final int f14275a;

                    {
                        this.f14275a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzaug) obj).mo16334c(this.f14275a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwl
    /* renamed from: a */
    public final void mo13500a(final zzvp zzvpVar) {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27509h, new zzdlk(zzvpVar) { // from class: c.d.b.d.g.a.ix

                    /* renamed from: a */
                    public final zzvp f13566a;

                    {
                        this.f13566a = zzvpVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzyi) obj).mo11118a(this.f13566a);
                    }
                });
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m13499a(zzyi zzyiVar) {
        this.f27509h.set(zzyiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    /* renamed from: b */
    public final void mo13498b(final zzva zzvaVar) {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27505d, new zzdlk(zzvaVar) { // from class: c.d.b.d.g.a.hx

                    /* renamed from: a */
                    public final zzva f13478a;

                    {
                        this.f13478a = zzvaVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzavd) obj).mo16280e(this.f13478a);
                    }
                });
                zzdll.m13521a(zzdmcVar.f27505d, new zzdlk(zzvaVar) { // from class: c.d.b.d.g.a.gx

                    /* renamed from: a */
                    public final zzva f13227a;

                    {
                        this.f13227a = zzvaVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlk
                    /* renamed from: a */
                    public final void mo13522a(Object obj) {
                        ((zzavd) obj).mo16279o(this.f13227a.f28995a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27506e, C3969qx.f14845a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27506e, C3524ex.f12864a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27505d, C3821mx.f14206a);
                zzdll.m13521a(zzdmcVar.f27506e, C3932px.f14566a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        zzdmc zzdmcVar = this;
        while (true) {
            zzdmc zzdmcVar2 = zzdmcVar.f27510i;
            if (zzdmcVar2 != null) {
                zzdmcVar = zzdmcVar2;
            } else {
                zzdll.m13521a(zzdmcVar.f27504c, C4305zw.f16470a);
                zzdll.m13521a(zzdmcVar.f27506e, C4267yw.f16237a);
                return;
            }
        }
    }
}
