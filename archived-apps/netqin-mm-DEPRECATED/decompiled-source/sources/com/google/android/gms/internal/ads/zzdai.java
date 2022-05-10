package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzdai;
import p131c.p161d.p170b.p224d.p252g.p253a.C3963qr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdai.class */
public final class zzdai implements zzdae<zzbqo> {

    /* renamed from: a */
    public final zzdom f26842a;

    /* renamed from: b */
    public final zzbix f26843b;

    /* renamed from: c */
    public final Context f26844c;

    /* renamed from: d */
    public final zzdac f26845d;

    /* renamed from: e */
    public zzbqv f26846e;

    public zzdai(zzbix zzbixVar, Context context, zzdac zzdacVar, zzdom zzdomVar) {
        this.f26843b = zzbixVar;
        this.f26844c = context;
        this.f26845d = zzdacVar;
        this.f26842a = zzdomVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m13702a() {
        this.f26845d.m13706e().mo13335a(zzdpe.m13339a(zzdpg.INVALID_AD_UNIT_ID, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: a */
    public final boolean mo13489a(zzvg zzvgVar, String str, zzdad zzdadVar, zzdag<? super zzbqo> zzdagVar) throws RemoteException {
        zzcda zzcdaVar;
        zzp.m17969c();
        if (zzayu.m16078p(this.f26844c) && zzvgVar.f29019s == null) {
            zzbbq.m15856b("Failed to load the ad because app ID is missing.");
            this.f26843b.mo15396a().execute(new Runnable(this) { // from class: c.d.b.d.g.a.pr

                /* renamed from: a */
                public final zzdai f14561a;

                {
                    this.f14561a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f14561a.m13700b();
                }
            });
            return false;
        } else if (str == null) {
            zzbbq.m15856b("Ad unit ID should not be null for NativeAdLoader.");
            this.f26843b.mo15396a().execute(new Runnable(this) { // from class: c.d.b.d.g.a.rr

                /* renamed from: a */
                public final zzdai f15041a;

                {
                    this.f15041a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f15041a.m13702a();
                }
            });
            return false;
        } else {
            zzdox.m13386a(this.f26844c, zzvgVar.f29006f);
            int i = zzdadVar instanceof zzdaf ? ((zzdaf) zzdadVar).f26841a : 1;
            zzdom zzdomVar = this.f26842a;
            zzdomVar.m13433a(zzvgVar);
            zzdomVar.m13440a(i);
            zzdok d = zzdomVar.m13420d();
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23819g4)).booleanValue()) {
                zzccz m = this.f26843b.mo15371m();
                zzbtp.zza zzaVar = new zzbtp.zza();
                zzaVar.m15065a(this.f26844c);
                zzaVar.m15061a(d);
                zzcdaVar = m.mo14793f(zzaVar.m15066a()).mo14794d(new zzbys.zza().m14923a()).mo14795b(this.f26845d.m13711a()).mo14796b();
            } else {
                zzccz m2 = this.f26843b.mo15371m();
                zzbtp.zza zzaVar2 = new zzbtp.zza();
                zzaVar2.m15065a(this.f26844c);
                zzaVar2.m15061a(d);
                zzccz f = m2.mo14793f(zzaVar2.m15066a());
                zzbys.zza zzaVar3 = new zzbys.zza();
                zzaVar3.m14915a(this.f26845d.m13707d(), this.f26843b.mo15396a());
                zzaVar3.m14918a(this.f26845d.m13706e(), this.f26843b.mo15396a());
                zzaVar3.m14916a(this.f26845d.m13705f(), this.f26843b.mo15396a());
                zzaVar3.m14910a(this.f26845d.m13704g(), this.f26843b.mo15396a());
                zzaVar3.m14919a(this.f26845d.m13708c(), this.f26843b.mo15396a());
                zzaVar3.m14909a(d.f27651m, this.f26843b.mo15396a());
                zzcdaVar = f.mo14794d(zzaVar3.m14923a()).mo14795b(this.f26845d.m13711a()).mo14796b();
            }
            this.f26843b.mo15359s().m13384a(1);
            zzbqv zzbqvVar = new zzbqv(this.f26843b.mo15391c(), this.f26843b.mo15393b(), zzcdaVar.mo14792a().m15123b());
            this.f26846e = zzbqvVar;
            zzbqvVar.m15149a(new C3963qr(this, zzdagVar, zzcdaVar));
            return true;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13700b() {
        this.f26845d.m13706e().mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: n */
    public final boolean mo13485n() {
        zzbqv zzbqvVar = this.f26846e;
        return zzbqvVar != null && zzbqvVar.m15152a();
    }
}
