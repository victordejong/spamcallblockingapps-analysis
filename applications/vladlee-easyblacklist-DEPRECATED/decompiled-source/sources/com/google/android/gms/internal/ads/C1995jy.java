package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.jy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jy.class */
final class C1995jy extends zzcut {

    /* renamed from: a */
    private final zzcvw f9100a;

    /* renamed from: b */
    private zzdxp<zzcup> f9101b;

    /* renamed from: c */
    private zzdxp<String> f9102c;

    /* renamed from: d */
    private zzdxp<zzcuz> f9103d;

    /* renamed from: e */
    private zzdxp<zzcvd> f9104e;

    /* renamed from: f */
    private zzdxp<zzcvi> f9105f;

    /* renamed from: g */
    private zzdxp<Boolean> f9106g;

    /* renamed from: h */
    private zzdxp<ApplicationInfo> f9107h;

    /* renamed from: i */
    private zzdxp<zzcvr> f9108i;

    /* renamed from: j */
    private zzdxp<zzcvv> f9109j;

    /* renamed from: k */
    private zzdxp<zzcwg> f9110k;

    /* renamed from: l */
    private zzdxp<String> f9111l;

    /* renamed from: m */
    private zzdxp<zzcdh> f9112m;

    /* renamed from: n */
    private zzdxp<zzcdh> f9113n;

    /* renamed from: o */
    private zzdxp<zzcdh> f9114o;

    /* renamed from: p */
    private zzdxp<zzcdh> f9115p;

    /* renamed from: q */
    private zzdxp<Map<zzdco, zzcdh>> f9116q;

    /* renamed from: r */
    private zzdxp<Set<zzbsu<zzdcx>>> f9117r;

    /* renamed from: s */
    private zzdxp<Set<zzbsu<zzdcx>>> f9118s;

    /* renamed from: t */
    private zzdxp f9119t;

    /* renamed from: u */
    private zzdxp<zzdcr> f9120u;

    /* renamed from: v */
    private final /* synthetic */ zzbgr f9121v;

    private C1995jy(zzbgr zzbgrVar, zzcvw zzcvwVar) {
        zzdxp zzdxpVar;
        zzdxp zzdxpVar2;
        zzdxp zzdxpVar3;
        zzdxp zzdxpVar4;
        zzdxp zzdxpVar5;
        zzdxp zzdxpVar6;
        zzdxp zzdxpVar7;
        zzdxp zzdxpVar8;
        zzdxp zzdxpVar9;
        this.f9121v = zzbgrVar;
        this.f9100a = zzcvwVar;
        zzbih zzafi = zzbih.zzafi();
        zzdxpVar = this.f9121v.f11866h;
        zzdxpVar2 = this.f9121v.f11862d;
        this.f9101b = new zzcuq(zzafi, zzdxpVar, zzdxpVar2, zzdbv.zzapz());
        this.f9102c = new zzcvz(zzcvwVar);
        zzbgk zzacu = zzbgk.zzacu();
        zzdxpVar3 = this.f9121v.f11866h;
        this.f9103d = new zzcvb(zzacu, zzdxpVar3, this.f9102c, zzdbv.zzapz());
        zzbid zzafb = zzbid.zzafb();
        zzdbv zzapz = zzdbv.zzapz();
        zzdxpVar4 = this.f9121v.f11866h;
        this.f9104e = new zzcvf(zzafb, zzapz, zzdxpVar4);
        this.f9105f = new zzcvk(zzbig.zzafg(), zzdbv.zzapz(), this.f9102c);
        this.f9106g = new zzcwb(zzcvwVar);
        this.f9107h = new zzcvy(zzcvwVar);
        zzbif zzafe = zzbif.zzafe();
        zzdxpVar5 = this.f9121v.f11862d;
        this.f9108i = new zzcvt(zzafe, zzdxpVar5, this.f9106g, this.f9107h);
        zzbii zzafk = zzbii.zzafk();
        zzdxpVar6 = this.f9121v.f11862d;
        zzdxpVar7 = this.f9121v.f11866h;
        this.f9109j = new zzcvx(zzafk, zzdxpVar6, zzdxpVar7);
        this.f9110k = new zzcwi(zzdbv.zzapz());
        this.f9111l = new zzcwa(zzcvwVar);
        this.f9112m = zzdxd.zzan(zzcdb.zzalb());
        this.f9113n = zzdxd.zzan(zzcdc.zzalc());
        this.f9114o = zzdxd.zzan(zzcde.zzale());
        this.f9115p = zzdxd.zzan(zzcdd.zzald());
        this.f9116q = ((zzdxk) ((zzdxk) ((zzdxk) ((zzdxk) zzdxi.zzhl(4).zza(zzdco.GMS_SIGNALS, this.f9112m)).zza(zzdco.BUILD_URL, this.f9113n)).zza(zzdco.HTTP, this.f9114o)).zza(zzdco.PRE_PROCESS, this.f9115p)).zzbdo();
        zzdxp<String> zzdxpVar10 = this.f9111l;
        zzdxpVar8 = this.f9121v.f11866h;
        this.f9117r = zzdxd.zzan(new zzcdg(zzdxpVar10, zzdxpVar8, zzdbv.zzapz(), this.f9116q));
        this.f9118s = zzdxl.zzar(0, 1).zzaq(this.f9117r).zzbdp();
        this.f9119t = zzdcz.zzam(this.f9118s);
        zzdbv zzapz2 = zzdbv.zzapz();
        zzdxpVar9 = this.f9121v.f11862d;
        this.f9120u = zzdxd.zzan(zzdcw.zzr(zzapz2, zzdxpVar9, this.f9119t));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1995jy(zzbgr zzbgrVar, zzcvw zzcvwVar, byte b) {
        this(zzbgrVar, zzcvwVar);
    }

    /* renamed from: a */
    private final zzcvm m4634a() {
        return new zzcvm(zzbie.zzafd(), zzdbv.zzaqa(), (List) zzdxm.zza(this.f9100a.zzanx(), "Cannot return null from a non-@Nullable @Provides method"));
    }

    /* renamed from: b */
    private final zzcuv m4633b() {
        return new zzcuv(zzbih.zzafj(), zzdbv.zzaqa(), (String) zzdxm.zza(this.f9100a.zzanu(), "Cannot return null from a non-@Nullable @Provides method"), this.f9100a.zzanv());
    }

    @Override // com.google.android.gms.internal.ads.zzcut
    public final zzcua<JSONObject> zzadt() {
        zzdxp zzdxpVar;
        zzdxp zzdxpVar2;
        zzdxp zzdxpVar3;
        zzdxp zzdxpVar4;
        zzbga zzbgaVar;
        zzdxp zzdxpVar5;
        zzbga zzbgaVar2;
        zzdxp zzdxpVar6;
        zzdxp zzdxpVar7;
        zzdxp zzdxpVar8;
        zzbga zzbgaVar3;
        zzbga zzbgaVar4;
        zzdxp zzdxpVar9;
        zzdhd zzaqa = zzdbv.zzaqa();
        zzcvi zzcviVar = new zzcvi(zzbig.zzafh(), zzdbv.zzaqa(), zzcvz.zzc(this.f9100a));
        zzdxpVar = this.f9121v.f11862d;
        zzcub zzcubVar = (zzcub) zzdxm.zza(new zzcsx(zzcviVar, 0L, (ScheduledExecutorService) zzdxpVar.get()), "Cannot return null from a non-@Nullable @Provides method");
        zzaks zzaff = zzbif.zzaff();
        zzdxpVar2 = this.f9121v.f11862d;
        zzcvr zzcvrVar = new zzcvr(zzaff, (ScheduledExecutorService) zzdxpVar2.get(), this.f9100a.zzanw(), zzcvy.zzb(this.f9100a));
        zzdxpVar3 = this.f9121v.f11862d;
        zzcub zzcubVar2 = (zzcub) zzdxm.zza(new zzcsx(zzcvrVar, ((Long) zzve.zzoy().zzd(zzzn.zzcmn)).longValue(), (ScheduledExecutorService) zzdxpVar3.get()), "Cannot return null from a non-@Nullable @Provides method");
        zzaow zzafl = zzbii.zzafl();
        zzdxpVar4 = this.f9121v.f11862d;
        zzbgaVar = this.f9121v.f11859a;
        zzcvv zzcvvVar = new zzcvv(zzafl, (ScheduledExecutorService) zzdxpVar4.get(), zzbgd.zza(zzbgaVar));
        zzdxpVar5 = this.f9121v.f11862d;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzdxpVar5.get();
        zzzc<Long> zzzcVar = zzzn.zzcmu;
        zzava zzafj = zzbih.zzafj();
        zzbgaVar2 = this.f9121v.f11859a;
        Context zza = zzbgd.zza(zzbgaVar2);
        zzdxpVar6 = this.f9121v.f11862d;
        zzcup zzcupVar = new zzcup(zzafj, zza, (ScheduledExecutorService) zzdxpVar6.get(), zzdbv.zzaqa());
        zzdxpVar7 = this.f9121v.f11862d;
        zzcwg zzcwgVar = new zzcwg(zzdbv.zzaqa());
        zzdxpVar8 = this.f9121v.f11862d;
        zzcub<? extends zzcty<JSONObject>> zzaoa = zzcwf.zzaoa();
        zzbgaVar3 = this.f9121v.f11859a;
        zzsf zzafc = zzbid.zzafc();
        zzdhd zzaqa2 = zzdbv.zzaqa();
        zzbgaVar4 = this.f9121v.f11859a;
        zzdxpVar9 = this.f9121v.f11881w;
        return new zzcua<>(zzaqa, zzdfb.zza(zzcubVar, zzcubVar2, (zzcub) zzdxm.zza(new zzcsx(zzcvvVar, ((Long) zzve.zzoy().zzd(zzzcVar)).longValue(), scheduledExecutorService), "Cannot return null from a non-@Nullable @Provides method"), (zzcub) zzdxm.zza(new zzcsx(zzcupVar, 0L, (ScheduledExecutorService) zzdxpVar7.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzcub) zzdxm.zza(new zzcsx(zzcwgVar, 0L, (ScheduledExecutorService) zzdxpVar8.get()), "Cannot return null from a non-@Nullable @Provides method"), zzaoa, new zzcuz(null, zzbgd.zza(zzbgaVar3), zzcvz.zzc(this.f9100a), zzdbv.zzaqa()), new zzcvd(zzafc, zzaqa2, zzbgd.zza(zzbgaVar4)), m4634a(), m4633b(), (zzcub) zzdxpVar9.get()));
    }

    @Override // com.google.android.gms.internal.ads.zzcut
    public final zzcua<JSONObject> zzadu() {
        zzdxp zzdxpVar;
        zzdxpVar = this.f9121v.f11881w;
        return zzcwe.zza(zzdxpVar.get(), m4633b(), m4634a(), zzdxd.zzao(this.f9101b), zzdxd.zzao(this.f9103d), zzdxd.zzao(this.f9104e), zzdxd.zzao(this.f9105f), zzdxd.zzao(this.f9108i), zzdxd.zzao(this.f9109j), zzdxd.zzao(this.f9110k), zzdbv.zzaqa());
    }

    @Override // com.google.android.gms.internal.ads.zzcut
    public final zzdcr zzadv() {
        return this.f9120u.get();
    }
}
