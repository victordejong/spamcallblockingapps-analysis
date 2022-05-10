package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzada;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdlf;
import com.google.android.gms.internal.ads.zzdlt;
import com.google.android.gms.internal.ads.zzdlu;
import com.google.android.gms.internal.ads.zzdlx;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdpz;
import com.google.android.gms.internal.ads.zzdqj;
import com.google.android.gms.internal.ads.zzdyl;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.uw */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/uw.class */
public final class C4119uw<R extends zzbtn<? extends zzbqo>> {

    /* renamed from: a */
    public final zzdpz f15676a;

    /* renamed from: b */
    public final zzdlu f15677b;

    /* renamed from: c */
    public final zzdlx<R> f15678c;

    /* renamed from: d */
    public final Executor f15679d;

    /* renamed from: e */
    public zzdlt f15680e;

    public C4119uw(zzdpz zzdpzVar, zzdlu zzdluVar, zzdlx<R> zzdlxVar, Executor executor) {
        this.f15676a = zzdpzVar;
        this.f15677b = zzdluVar;
        this.f15678c = zzdlxVar;
        this.f15679d = executor;
    }

    /* renamed from: a */
    public static /* synthetic */ zzdlt m26233a(C4119uw uwVar, zzdlt zzdltVar) {
        uwVar.f15680e = zzdltVar;
        return zzdltVar;
    }

    /* renamed from: a */
    public static /* synthetic */ zzdqj m26234a(C4119uw uwVar) {
        return uwVar.m26232b();
    }

    /* renamed from: b */
    public static /* synthetic */ zzdlt m26231b(C4119uw uwVar) {
        return uwVar.f15680e;
    }

    /* renamed from: a */
    public final zzdzc<zzdlt> m26235a() {
        zzdzc zzdzcVar;
        zzdlt zzdltVar = this.f15680e;
        if (zzdltVar != null) {
            return zzdyq.m12988a(zzdltVar);
        }
        if (!zzada.f24002a.mo16862a().booleanValue()) {
            zzdlt zzdltVar2 = new zzdlt(null, m26232b(), null);
            this.f15680e = zzdltVar2;
            zzdzcVar = zzdyq.m12988a(zzdltVar2);
        } else {
            zzdzcVar = zzdyl.m12999d(this.f15678c.mo13516a(this.f15677b).mo15055a(new zzdlf(this.f15676a.mo13319a().f27731j)).mo15052c().mo14140a().m15127a(this.f15676a.mo13319a())).m13003a(new C4156vw(this), this.f15679d).m13001a(zzcqm.class, new C4193ww(this), this.f15679d);
        }
        return zzdyq.m12993a(zzdzcVar, C4082tw.f15429a, this.f15679d);
    }

    @Deprecated
    /* renamed from: b */
    public final zzdqj m26232b() {
        zzdok c = this.f15678c.mo13516a(this.f15677b).mo15052c().mo15075c();
        return this.f15676a.mo13316a(c.f27642d, c.f27644f, c.f27648j);
    }
}
