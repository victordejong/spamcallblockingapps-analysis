package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzbga;
import com.google.android.gms.internal.ads.zzbhq;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfx.class */
public abstract class zzbfx implements zzbij {

    /* renamed from: a */
    private static zzbfx f11817a;

    @Deprecated
    /* renamed from: a */
    private static zzbfx m4091a(zzazb zzazbVar, Context context, zzbhq.zza zzaVar) {
        zzbfx zzbfxVar;
        synchronized (zzbfx.class) {
            try {
                if (f11817a == null) {
                    f11817a = new zzbhh((byte) 0).zzc(new zzbga(new zzbga.zza().zza(zzazbVar).zzbs(context), (byte) 0)).zza(new zzbhq(zzaVar)).zzael();
                    zzzn.initialize(context);
                    zzq.zzku().zzd(context, zzazbVar);
                    zzq.zzkw().initialize(context);
                    zzq.zzkq().zzao(context);
                    zzq.zzkq().zzap(context);
                    zzavq.zzan(context);
                    zzq.zzkt().initialize(context);
                    zzq.zzll().initialize(context);
                    if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue()) {
                        new zzcik(context, zzazbVar, new zzsm(new zzsr(context)), new zzcht(new zzchr(context), f11817a.zzacd())).zzamc();
                    }
                }
                zzbfxVar = f11817a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbfxVar;
    }

    public static zzbfx zza(Context context, zzalc zzalcVar, int i) {
        zzbfx zzd = zzd(context, i);
        zzd.zzacf().zzb(zzalcVar);
        return zzd;
    }

    @Deprecated
    public static zzbfx zzd(Context context, int i) {
        synchronized (zzbfx.class) {
            try {
                if (f11817a == null) {
                    return m4091a(new zzazb(19649000, i, true, false), context, new zzbgo());
                }
                return f11817a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    protected abstract zzcut mo4072a(zzcvw zzcvwVar);

    @Override // com.google.android.gms.internal.ads.zzbij
    public final zzcut zza(zzaqk zzaqkVar) {
        return mo4072a(new zzcvw(zzaqkVar));
    }

    public abstract Executor zzaca();

    public abstract ScheduledExecutorService zzacb();

    public abstract Executor zzacc();

    public abstract zzdhd zzacd();

    public abstract zzbqp zzace();

    public abstract zzcka zzacf();

    public abstract zzbht zzacg();

    public abstract zzblf zzach();

    public abstract zzbjz zzaci();

    public abstract zzcww zzacj();

    public abstract zzbus zzack();

    public abstract zzbvl zzacl();

    public abstract zzcbh zzacm();

    public abstract zzczc zzacn();

    public abstract zzcpf zzaco();
}
