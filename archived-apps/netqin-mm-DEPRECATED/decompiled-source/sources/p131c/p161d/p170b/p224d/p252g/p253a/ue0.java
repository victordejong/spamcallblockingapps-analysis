package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaa;
import com.google.android.gms.internal.ads.zzaj;
import com.google.android.gms.internal.ads.zzak;
import com.google.android.gms.internal.ads.zzaq;
import com.google.android.gms.internal.ads.zzm;
import com.google.android.gms.internal.ads.zzn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* renamed from: c.d.b.d.g.a.ue0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ue0.class */
public final class ue0 implements AbstractC3935q {

    /* renamed from: a */
    public final Map<String, List<zzaa<?>>> f15636a = new HashMap();

    /* renamed from: b */
    public final zzm f15637b;

    public ue0(zzm zzmVar) {
        this.f15637b = zzmVar;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m26239a(ue0 ue0Var, zzaa zzaaVar) {
        return ue0Var.m26236b(zzaaVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3935q
    /* renamed from: a */
    public final void mo26238a(zzaa<?> zzaaVar) {
        BlockingQueue blockingQueue;
        synchronized (this) {
            String c = zzaaVar.m16960c();
            List<zzaa<?>> remove = this.f15636a.remove(c);
            if (remove != null && !remove.isEmpty()) {
                if (zzaq.f24250b) {
                    zzaq.m16458c("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), c);
                }
                zzaa<?> remove2 = remove.remove(0);
                this.f15636a.put(c, remove);
                remove2.m16970a((AbstractC3935q) this);
                try {
                    blockingQueue = this.f15637b.f28620b;
                    blockingQueue.put(remove2);
                } catch (InterruptedException e) {
                    zzaq.m16459b("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.f15637b.m11810b();
                }
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3935q
    /* renamed from: a */
    public final void mo26237a(zzaa<?> zzaaVar, zzaj<?> zzajVar) {
        List<zzaa<?>> remove;
        zzak zzakVar;
        zzn zznVar = zzajVar.f24142b;
        if (zznVar == null || zznVar.m11797a()) {
            mo26238a(zzaaVar);
            return;
        }
        String c = zzaaVar.m16960c();
        synchronized (this) {
            remove = this.f15636a.remove(c);
        }
        if (remove != null) {
            if (zzaq.f24250b) {
                zzaq.m16458c("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), c);
            }
            for (zzaa<?> zzaaVar2 : remove) {
                zzakVar = this.f15637b.f28622d;
                zzakVar.mo11443a(zzaaVar2, zzajVar);
            }
        }
    }

    /* renamed from: b */
    public final boolean m26236b(zzaa<?> zzaaVar) {
        synchronized (this) {
            String c = zzaaVar.m16960c();
            if (this.f15636a.containsKey(c)) {
                List<zzaa<?>> list = this.f15636a.get(c);
                List<zzaa<?>> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                }
                zzaaVar.m16964a("waiting-for-response");
                list2.add(zzaaVar);
                this.f15636a.put(c, list2);
                if (zzaq.f24250b) {
                    zzaq.m16461a("Request for cacheKey=%s is in flight, putting on hold.", c);
                }
                return true;
            }
            this.f15636a.put(c, null);
            zzaaVar.m16970a((AbstractC3935q) this);
            if (zzaq.f24250b) {
                zzaq.m16461a("new request, sending to network %s", c);
            }
            return false;
        }
    }
}
