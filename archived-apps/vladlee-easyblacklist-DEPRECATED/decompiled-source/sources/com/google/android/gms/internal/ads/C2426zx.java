package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.ads.zzsy;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.ads.zx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zx.class */
final class C2426zx implements zzdbb {

    /* renamed from: a */
    private final ConcurrentHashMap<zzdbl, C2424zv> f10784a;

    /* renamed from: b */
    private zzdbe f10785b;

    /* renamed from: c */
    private C2427zy f10786c = new C2427zy();

    public C2426zx(zzdbe zzdbeVar) {
        this.f10784a = new ConcurrentHashMap<>(zzdbeVar.zzgoj);
        this.f10785b = zzdbeVar;
    }

    /* renamed from: a */
    private final void m4446a() {
        int i;
        if (zzdbe.zzapl()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f10785b.zzgoh);
            sb.append(" PoolCollection");
            sb.append(this.f10786c.m4438g());
            Iterator<Map.Entry<zzdbl, C2424zv>> it = this.f10784a.entrySet().iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                if (it.hasNext()) {
                    Map.Entry<zzdbl, C2424zv> next = it.next();
                    int i3 = i2 + 1;
                    sb.append(i3);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i4 = 0; i4 < next.getValue().m4454b(); i4++) {
                        sb.append("[O]");
                    }
                    for (int b = next.getValue().m4454b(); b < this.f10785b.zzgoj; b++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().m4450f());
                    sb.append("\n");
                    i2 = i3;
                }
            }
            while (i < this.f10785b.zzgoi) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzavs.zzea(sb.toString());
        }
    }

    /* renamed from: a */
    private final void m4445a(zzdbi<?> zzdbiVar, zzdbo zzdboVar) {
        if (zzdbiVar != null) {
            zzdbiVar.zzgpc.zzahb().zza((zzsy.zza) ((zzdrt) zzsy.zza.zzmz().zza(zzsy.zza.C3504zza.zzmx().zzb(zzsy.zza.zzc.IN_MEMORY).zza(zzsy.zza.zzd.zznb().zzt(zzdboVar.zzgpi).zzbu(zzdboVar.zzgpj))).zzbaf()));
        }
        m4446a();
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final zzdbi<?> zza(zzdbl zzdblVar) {
        zzdbi<?> zzdbiVar;
        synchronized (this) {
            C2424zv zvVar = this.f10784a.get(zzdblVar);
            zzdbiVar = null;
            if (zvVar != null) {
                zzdbiVar = zvVar.m4456a();
                if (zzdbiVar == null) {
                    this.f10786c.m4443b();
                }
                m4445a(zzdbiVar, zvVar.m4449g());
            } else {
                this.f10786c.m4444a();
                m4445a(null, null);
            }
        }
        return zzdbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final zzdbl zza(zzug zzugVar, String str, zzuo zzuoVar) {
        return new zzdbk(zzugVar, str, new zzaqs(this.f10785b.zzup).zzug().zzdmo, this.f10785b.zzgol, zzuoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final boolean zza(zzdbl zzdblVar, zzdbi<?> zzdbiVar) {
        boolean a;
        ConcurrentHashMap<zzdbl, C2424zv> concurrentHashMap;
        synchronized (this) {
            C2424zv zvVar = this.f10784a.get(zzdblVar);
            zzdbiVar.zzgpe = zzq.zzkx().currentTimeMillis();
            C2424zv zvVar2 = zvVar;
            if (zvVar == null) {
                C2424zv zvVar3 = new C2424zv(this.f10785b.zzgoj, this.f10785b.zzgok * 1000);
                if (this.f10784a.size() == this.f10785b.zzgoi) {
                    int i = C2428zz.f10793a[this.f10785b.zzgon - 1];
                    long j = Long.MAX_VALUE;
                    r9 = null;
                    r9 = null;
                    zzdbl zzdblVar2 = null;
                    if (i == 1) {
                        for (Map.Entry<zzdbl, C2424zv> entry : this.f10784a.entrySet()) {
                            if (entry.getValue().m4453c() < j) {
                                j = entry.getValue().m4453c();
                                zzdblVar2 = entry.getKey();
                            }
                        }
                        if (zzdblVar2 != null) {
                            concurrentHashMap = this.f10784a;
                            concurrentHashMap.remove(zzdblVar2);
                        }
                        this.f10786c.m4441d();
                    } else if (i != 2) {
                        if (i == 3) {
                            int i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                            for (Map.Entry<zzdbl, C2424zv> entry2 : this.f10784a.entrySet()) {
                                if (entry2.getValue().m4451e() < i2) {
                                    i2 = entry2.getValue().m4451e();
                                    zzdblVar2 = entry2.getKey();
                                }
                            }
                            if (zzdblVar2 != null) {
                                concurrentHashMap = this.f10784a;
                                concurrentHashMap.remove(zzdblVar2);
                            }
                        }
                        this.f10786c.m4441d();
                    } else {
                        for (Map.Entry<zzdbl, C2424zv> entry3 : this.f10784a.entrySet()) {
                            if (entry3.getValue().m4452d() < j) {
                                j = entry3.getValue().m4452d();
                                zzdblVar2 = entry3.getKey();
                            }
                        }
                        if (zzdblVar2 != null) {
                            concurrentHashMap = this.f10784a;
                            concurrentHashMap.remove(zzdblVar2);
                        }
                        this.f10786c.m4441d();
                    }
                }
                this.f10784a.put(zzdblVar, zvVar3);
                this.f10786c.m4442c();
                zvVar2 = zvVar3;
            }
            a = zvVar2.m4455a(zzdbiVar);
            this.f10786c.m4440e();
            zzdbf f = this.f10786c.m4439f();
            zzdbo g = zvVar2.m4449g();
            if (zzdbiVar != null) {
                zzdbiVar.zzgpc.zzahb().zzb((zzsy.zza) ((zzdrt) zzsy.zza.zzmz().zza(zzsy.zza.C3504zza.zzmx().zzb(zzsy.zza.zzc.IN_MEMORY).zza(zzsy.zza.zze.zznd().zzu(f.zzgoq).zzv(f.zzgor).zzbv(g.zzgpj))).zzbaf()));
            }
            m4446a();
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final boolean zzb(zzdbl zzdblVar) {
        synchronized (this) {
            C2424zv zvVar = this.f10784a.get(zzdblVar);
            if (zvVar != null) {
                return zvVar.m4454b() < this.f10785b.zzgoj;
            }
            return true;
        }
    }
}
