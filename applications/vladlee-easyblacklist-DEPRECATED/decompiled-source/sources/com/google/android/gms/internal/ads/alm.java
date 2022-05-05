package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alm.class */
public final class alm implements aqh {

    /* renamed from: a */
    private final Map<String, List<zzq<?>>> f7570a = new HashMap();

    /* renamed from: b */
    private final zzc f7571b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public alm(zzc zzcVar) {
        this.f7571b = zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m4943a(alm almVar, zzq zzqVar) {
        return almVar.m4942b(zzqVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final boolean m4942b(zzq<?> zzqVar) {
        synchronized (this) {
            String zzd = zzqVar.zzd();
            if (this.f7570a.containsKey(zzd)) {
                List<zzq<?>> list = this.f7570a.get(zzd);
                List<zzq<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                zzqVar.zzb("waiting-for-response");
                list2.add(zzqVar);
                this.f7570a.put(zzd, list2);
                if (zzag.DEBUG) {
                    zzag.m4412d("Request for cacheKey=%s is in flight, putting on hold.", zzd);
                }
                return true;
            }
            this.f7570a.put(zzd, null);
            zzqVar.m3115a((aqh) this);
            if (zzag.DEBUG) {
                zzag.m4412d("new request, sending to network %s", zzd);
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.aqh
    /* renamed from: a */
    public final void mo4756a(zzq<?> zzqVar) {
        BlockingQueue blockingQueue;
        synchronized (this) {
            String zzd = zzqVar.zzd();
            List<zzq<?>> remove = this.f7570a.remove(zzd);
            if (remove != null && !remove.isEmpty()) {
                if (zzag.DEBUG) {
                    zzag.m4410v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zzd);
                }
                zzq<?> remove2 = remove.remove(0);
                this.f7570a.put(zzd, remove);
                remove2.m3115a((aqh) this);
                try {
                    blockingQueue = this.f7571b.f12787c;
                    blockingQueue.put(remove2);
                } catch (InterruptedException e) {
                    zzag.m4411e("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.f7571b.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aqh
    /* renamed from: a */
    public final void mo4755a(zzq<?> zzqVar, zzz<?> zzzVar) {
        List<zzq<?>> remove;
        zzaa zzaaVar;
        if (zzzVar.zzbh == null || zzzVar.zzbh.isExpired()) {
            mo4756a(zzqVar);
            return;
        }
        String zzd = zzqVar.zzd();
        synchronized (this) {
            remove = this.f7570a.remove(zzd);
        }
        if (remove != null) {
            if (zzag.DEBUG) {
                zzag.m4410v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zzd);
            }
            for (zzq<?> zzqVar2 : remove) {
                zzaaVar = this.f7571b.f12789e;
                zzaaVar.zzb(zzqVar2, zzzVar);
            }
        }
    }
}
