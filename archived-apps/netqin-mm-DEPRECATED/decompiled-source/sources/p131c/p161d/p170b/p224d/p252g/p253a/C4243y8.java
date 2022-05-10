package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzop;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.y8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y8.class */
public final class C4243y8 {

    /* renamed from: a */
    public final ArrayList<zzop> f16097a = new ArrayList<>();

    /* renamed from: b */
    public long f16098b;

    /* renamed from: a */
    public final long m26140a() {
        Iterator<zzop> it = this.f16097a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> a = it.next().m11729a();
            if (a != null) {
                for (Map.Entry<String, List<String>> entry : a.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f16098b = Math.max(this.f16098b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.f16098b;
    }

    /* renamed from: a */
    public final void m26139a(zzop zzopVar) {
        this.f16097a.add(zzopVar);
    }
}
