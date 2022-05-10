package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzdtp;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.h00;
import p131c.p161d.p170b.p224d.p252g.p253a.j00;
import p131c.p161d.p170b.p224d.p252g.p253a.k00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtp.class */
public final class zzdtp {

    /* renamed from: a */
    public final Context f27822a;

    /* renamed from: b */
    public final Executor f27823b;

    /* renamed from: c */
    public final zzdtc f27824c;

    /* renamed from: d */
    public final zzdtd f27825d;

    /* renamed from: e */
    public final j00 f27826e;

    /* renamed from: f */
    public final j00 f27827f;

    /* renamed from: g */
    public Task<zzcf.zza> f27828g;

    /* renamed from: h */
    public Task<zzcf.zza> f27829h;

    @VisibleForTesting
    public zzdtp(Context context, Executor executor, zzdtc zzdtcVar, zzdtd zzdtdVar, h00 h00Var, k00 k00Var) {
        this.f27822a = context;
        this.f27823b = executor;
        this.f27824c = zzdtcVar;
        this.f27825d = zzdtdVar;
        this.f27826e = h00Var;
        this.f27827f = k00Var;
    }

    /* renamed from: a */
    public static zzcf.zza m13196a(Task<zzcf.zza> task, zzcf.zza zzaVar) {
        return !task.mo8601e() ? zzaVar : task.mo8606b();
    }

    /* renamed from: a */
    public static zzdtp m13197a(Context context, Executor executor, zzdtc zzdtcVar, zzdtd zzdtdVar) {
        final zzdtp zzdtpVar = new zzdtp(context, executor, zzdtcVar, zzdtdVar, new h00(), new k00());
        if (zzdtpVar.f27825d.mo13212b()) {
            zzdtpVar.f27828g = zzdtpVar.m13194a(new Callable(zzdtpVar) { // from class: c.d.b.d.g.a.g00

                /* renamed from: a */
                public final zzdtp f13008a;

                {
                    this.f13008a = zzdtpVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f13008a.m13192c();
                }
            });
        } else {
            zzdtpVar.f27828g = Tasks.m8591a(zzdtpVar.f27826e.mo26735a());
        }
        zzdtpVar.f27829h = zzdtpVar.m13194a(new Callable(zzdtpVar) { // from class: c.d.b.d.g.a.f00

            /* renamed from: a */
            public final zzdtp f12867a;

            {
                this.f12867a = zzdtpVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12867a.m13193b();
            }
        });
        return zzdtpVar;
    }

    /* renamed from: a */
    public final zzcf.zza m13198a() {
        return m13196a(this.f27828g, this.f27826e.mo26735a());
    }

    /* renamed from: a */
    public final Task<zzcf.zza> m13194a(Callable<zzcf.zza> callable) {
        Task<zzcf.zza> a = Tasks.m8589a(this.f27823b, callable);
        a.mo8609a(this.f27823b, new OnFailureListener(this) { // from class: c.d.b.d.g.a.i00

            /* renamed from: a */
            public final zzdtp f13480a;

            {
                this.f13480a = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            /* renamed from: a */
            public final void mo8583a(Exception exc) {
                this.f13480a.m13195a(exc);
            }
        });
        return a;
    }

    /* renamed from: a */
    public final /* synthetic */ void m13195a(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f27824c.m13221a(2025, -1L, exc);
    }

    /* renamed from: b */
    public final /* synthetic */ zzcf.zza m13193b() throws Exception {
        return this.f27827f.mo26734a(this.f27822a);
    }

    /* renamed from: c */
    public final /* synthetic */ zzcf.zza m13192c() throws Exception {
        return this.f27826e.mo26734a(this.f27822a);
    }

    /* renamed from: d */
    public final zzcf.zza m13191d() {
        return m13196a(this.f27829h, this.f27827f.mo26735a());
    }
}
