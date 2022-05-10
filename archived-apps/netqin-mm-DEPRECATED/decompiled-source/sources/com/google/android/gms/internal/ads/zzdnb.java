package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzdlu;
import com.google.android.gms.internal.ads.zzdnb;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4120ux;
import p131c.p161d.p170b.p224d.p252g.p253a.C4268yx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnb.class */
public final class zzdnb implements zzdae<zzcjg> {

    /* renamed from: a */
    public final Context f27513a;

    /* renamed from: b */
    public final Executor f27514b;

    /* renamed from: c */
    public final zzbix f27515c;

    /* renamed from: d */
    public final zzdmc f27516d;

    /* renamed from: e */
    public final zzdlv<zzcjj, zzcjg> f27517e;

    /* renamed from: f */
    public final zzdoj f27518f;

    /* renamed from: g */
    public final zzdom f27519g;

    /* renamed from: h */
    public zzdzc<zzcjg> f27520h;

    public zzdnb(Context context, Executor executor, zzbix zzbixVar, zzdlv<zzcjj, zzcjg> zzdlvVar, zzdmc zzdmcVar, zzdom zzdomVar, zzdoj zzdojVar) {
        this.f27513a = context;
        this.f27514b = executor;
        this.f27515c = zzbixVar;
        this.f27517e = zzdlvVar;
        this.f27516d = zzdmcVar;
        this.f27519g = zzdomVar;
        this.f27518f = zzdojVar;
    }

    /* renamed from: a */
    public final zzcjm m13488b(zzdlu zzdluVar) {
        C4268yx yxVar = (C4268yx) zzdluVar;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23801d4)).booleanValue()) {
            zzcjm n = this.f27515c.mo15369n();
            zzbtp.zza zzaVar = new zzbtp.zza();
            zzaVar.m15065a(this.f27513a);
            zzaVar.m15061a(yxVar.f16238a);
            zzaVar.m15060a(yxVar.f16239b);
            zzaVar.m15062a(this.f27518f);
            return n.mo14135a(zzaVar.m15066a()).mo14134e(new zzbys.zza().m14923a());
        }
        zzdmc a = zzdmc.m13501a(this.f27516d);
        zzcjm n2 = this.f27515c.mo15369n();
        zzbtp.zza zzaVar2 = new zzbtp.zza();
        zzaVar2.m15065a(this.f27513a);
        zzaVar2.m15061a(yxVar.f16238a);
        zzaVar2.m15060a(yxVar.f16239b);
        zzaVar2.m15062a(this.f27518f);
        zzcjm a2 = n2.mo14135a(zzaVar2.m15066a());
        zzbys.zza zzaVar3 = new zzbys.zza();
        zzaVar3.m14919a((zzbuh) a, this.f27514b);
        zzaVar3.m14915a((zzbvs) a, this.f27514b);
        zzaVar3.m14918a((zzbui) a, this.f27514b);
        zzaVar3.m14920a((AdMetadataListener) a, this.f27514b);
        zzaVar3.m14917a((zzbuv) a, this.f27514b);
        zzaVar3.m14913a((zzbwl) a, this.f27514b);
        zzaVar3.m14911a(a);
        return a2.mo14134e(zzaVar3.m14923a());
    }

    /* renamed from: a */
    public final /* synthetic */ void m13494a() {
        this.f27516d.mo13335a(zzdpe.m13339a(zzdpg.INVALID_AD_UNIT_ID, null, null));
    }

    /* renamed from: a */
    public final void m13493a(int i) {
        this.f27519g.m13422c().m13447a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: a */
    public final boolean mo13489a(zzvg zzvgVar, String str, zzdad zzdadVar, zzdag<? super zzcjg> zzdagVar) throws RemoteException {
        zzaum zzaumVar = new zzaum(zzvgVar, str);
        String str2 = zzdadVar instanceof zzdmy ? ((zzdmy) zzdadVar).f27511a : null;
        if (zzaumVar.f24525b == null) {
            zzbbq.m15856b("Ad unit ID should not be null for rewarded video ad.");
            this.f27514b.execute(new Runnable(this) { // from class: c.d.b.d.g.a.tx

                /* renamed from: a */
                public final zzdnb f15430a;

                {
                    this.f15430a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f15430a.m13494a();
                }
            });
            return false;
        }
        zzdzc<zzcjg> zzdzcVar = this.f27520h;
        if (zzdzcVar != null && !zzdzcVar.isDone()) {
            return false;
        }
        zzdox.m13386a(this.f27513a, zzaumVar.f24524a.f29006f);
        zzdom zzdomVar = this.f27519g;
        zzdomVar.m13429a(zzaumVar.f24525b);
        zzdomVar.m13432a(zzvn.m11194u());
        zzdomVar.m13433a(zzaumVar.f24524a);
        zzdok d = zzdomVar.m13420d();
        C4268yx yxVar = new C4268yx(null);
        yxVar.f16238a = d;
        yxVar.f16239b = str2;
        zzdzc<zzcjg> a = this.f27517e.mo13517a(new zzdlw(yxVar), new zzdlx(this) { // from class: c.d.b.d.g.a.vx

            /* renamed from: a */
            public final zzdnb f15888a;

            {
                this.f15888a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdlx
            /* renamed from: a */
            public final zzbtq mo13516a(zzdlu zzdluVar) {
                return this.f15888a.m13488b(zzdluVar);
            }
        });
        this.f27520h = a;
        zzdyq.m12991a(a, new C4120ux(this, zzdagVar, yxVar), this.f27514b);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: n */
    public final boolean mo13485n() {
        zzdzc<zzcjg> zzdzcVar = this.f27520h;
        return zzdzcVar != null && !zzdzcVar.isDone();
    }
}
