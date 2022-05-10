package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzatk;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzdpz;
import com.google.android.gms.internal.ads.zzdqd;
import com.google.android.gms.internal.ads.zzdqg;
import com.google.android.gms.internal.ads.zzdqj;
import com.google.android.gms.internal.ads.zzdqk;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzdra;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzua;
import com.google.android.gms.internal.ads.zzvg;
import com.google.android.gms.internal.ads.zzvs;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: c.d.b.d.g.a.ry */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ry.class */
public final class C4010ry implements zzdpz {

    /* renamed from: a */
    public final ConcurrentHashMap<zzdqj, C3933py> f15049a;

    /* renamed from: b */
    public zzdqg f15050b;

    /* renamed from: c */
    public C4047sy f15051c = new C4047sy();

    public C4010ry(zzdqg zzdqgVar) {
        this.f15049a = new ConcurrentHashMap<>(zzdqgVar.f27729h);
        this.f15050b = zzdqgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdpz
    /* renamed from: a */
    public final zzdqg mo13319a() {
        return this.f15050b;
    }

    @Override // com.google.android.gms.internal.ads.zzdpz
    @Deprecated
    /* renamed from: a */
    public final zzdqj mo13316a(zzvg zzvgVar, String str, zzvs zzvsVar) {
        return new zzdqm(zzvgVar, str, new zzatk(this.f15050b.f27725d).m16366a().f24505j, this.f15050b.f27731j, zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdpz
    /* renamed from: a */
    public final zzdqk<?> mo13318a(zzdqj zzdqjVar) {
        zzdqk<?> zzdqkVar;
        synchronized (this) {
            C3933py pyVar = this.f15049a.get(zzdqjVar);
            zzdqkVar = null;
            if (pyVar != null) {
                zzdqkVar = pyVar.m26536c();
                if (zzdqkVar == null) {
                    this.f15051c.m26336b();
                }
                m26403a(zzdqkVar, pyVar.m26532g());
            } else {
                this.f15051c.m26337a();
                m26403a((zzdqk<?>) null, (zzdra) null);
            }
        }
        return zzdqkVar;
    }

    /* renamed from: a */
    public final void m26403a(zzdqk<?> zzdqkVar, zzdra zzdraVar) {
        if (zzdqkVar != null) {
            zzua.zzb.C10507zzb m = zzua.zzb.m11390m();
            zzua.zzb.zza.C10506zza m2 = zzua.zzb.zza.m11382m();
            m2.m11380a(zzua.zzb.zzc.IN_MEMORY);
            zzua.zzb.zzd.zza m3 = zzua.zzb.zzd.m11372m();
            m3.m11369a(zzdraVar.f27765a);
            m3.m11370a(zzdraVar.f27766b);
            m2.m11379a(m3);
            m.m11377a(m2);
            zzdqkVar.f27745a.m15120c().mo14083a((zzua.zzb) ((zzejz) m.mo12342K()));
        }
        m26402b();
    }

    @Override // com.google.android.gms.internal.ads.zzdpz
    /* renamed from: a */
    public final boolean mo13317a(zzdqj zzdqjVar, zzdqk<?> zzdqkVar) {
        boolean a;
        synchronized (this) {
            C3933py pyVar = this.f15049a.get(zzdqjVar);
            zzdqkVar.f27748d = zzp.m17962j().mo17091b();
            C3933py pyVar2 = pyVar;
            if (pyVar == null) {
                C3933py pyVar3 = new C3933py(this.f15050b.f27729h, this.f15050b.f27730i * 1000);
                if (this.f15049a.size() == this.f15050b.f27728g) {
                    int i = C3970qy.f14846a[this.f15050b.f27733l - 1];
                    long j = Long.MAX_VALUE;
                    zzdqj zzdqjVar2 = null;
                    zzdqj zzdqjVar3 = null;
                    zzdqj zzdqjVar4 = null;
                    if (i == 1) {
                        for (Map.Entry<zzdqj, C3933py> entry : this.f15049a.entrySet()) {
                            if (entry.getValue().m26539a() < j) {
                                j = entry.getValue().m26539a();
                                zzdqjVar3 = entry.getKey();
                            }
                        }
                        if (zzdqjVar3 != null) {
                            this.f15049a.remove(zzdqjVar3);
                        }
                    } else if (i == 2) {
                        for (Map.Entry<zzdqj, C3933py> entry2 : this.f15049a.entrySet()) {
                            if (entry2.getValue().m26535d() < j) {
                                j = entry2.getValue().m26535d();
                                zzdqjVar2 = entry2.getKey();
                            }
                        }
                        if (zzdqjVar2 != null) {
                            this.f15049a.remove(zzdqjVar2);
                        }
                    } else if (i == 3) {
                        int i2 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                        for (Map.Entry<zzdqj, C3933py> entry3 : this.f15049a.entrySet()) {
                            if (entry3.getValue().m26534e() < i2) {
                                i2 = entry3.getValue().m26534e();
                                zzdqjVar4 = entry3.getKey();
                            }
                        }
                        if (zzdqjVar4 != null) {
                            this.f15049a.remove(zzdqjVar4);
                        }
                    }
                    this.f15051c.m26334d();
                }
                this.f15049a.put(zzdqjVar, pyVar3);
                this.f15051c.m26335c();
                pyVar2 = pyVar3;
            }
            a = pyVar2.m26538a(zzdqkVar);
            this.f15051c.m26333e();
            zzdqd f = this.f15051c.m26332f();
            zzdra g = pyVar2.m26532g();
            if (zzdqkVar != null) {
                zzua.zzb.C10507zzb m = zzua.zzb.m11390m();
                zzua.zzb.zza.C10506zza m2 = zzua.zzb.zza.m11382m();
                m2.m11380a(zzua.zzb.zzc.IN_MEMORY);
                zzua.zzb.zze.zza m3 = zzua.zzb.zze.m11362m();
                m3.m11359a(f.f27720a);
                m3.m11358b(f.f27721b);
                m3.m11360a(g.f27766b);
                m2.m11378a(m3);
                m.m11377a(m2);
                zzdqkVar.f27745a.m15120c().mo14081b((zzua.zzb) ((zzejz) m.mo12342K()));
            }
            m26402b();
        }
        return a;
    }

    /* renamed from: b */
    public final void m26402b() {
        int i;
        if (zzdqg.m13312f()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f15050b.f27727f);
            sb.append(" PoolCollection");
            sb.append(this.f15051c.m26331g());
            Iterator<Map.Entry<zzdqj, C3933py>> it = this.f15049a.entrySet().iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    Map.Entry<zzdqj, C3933py> next = it.next();
                    int i3 = i2 + 1;
                    sb.append(i3);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i4 = 0; i4 < next.getValue().m26537b(); i4++) {
                        sb.append("[O]");
                    }
                    for (int b = next.getValue().m26537b(); b < this.f15050b.f27729h; b++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().m26533f());
                    sb.append("\n");
                    i2 = i3;
                }
            }
            while (i < this.f15050b.f27728g) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzbbq.m15858a(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpz
    /* renamed from: b */
    public final boolean mo13315b(zzdqj zzdqjVar) {
        synchronized (this) {
            C3933py pyVar = this.f15049a.get(zzdqjVar);
            if (pyVar != null) {
                return pyVar.m26537b() < this.f15050b.f27729h;
            }
            return true;
        }
    }
}
