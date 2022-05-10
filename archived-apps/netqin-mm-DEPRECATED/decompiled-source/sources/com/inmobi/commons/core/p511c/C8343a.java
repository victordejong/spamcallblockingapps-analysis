package com.inmobi.commons.core.p511c;

import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.p510b.C8339c;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: com.inmobi.commons.core.c.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/c/a.class */
public class C8343a {

    /* renamed from: a */
    public static final String f32448a = "a";

    /* renamed from: b */
    public static volatile C8343a f32449b;

    /* renamed from: c */
    public static ScheduledExecutorService f32450c;

    /* renamed from: d */
    public static final Object f32451d = new Object();

    public C8343a() {
        f32450c = Executors.newSingleThreadScheduledExecutor();
    }

    /* renamed from: a */
    public static C8343a m5858a() {
        C8343a aVar = f32449b;
        C8343a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32451d) {
                C8343a aVar3 = f32449b;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8343a();
                    f32449b = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* renamed from: a */
    public final void m5857a(final C8339c cVar, final String str, final int i, final int i2, final long j, final C8418d dVar, final AbstractC8345b bVar) {
        if (!C8407d.m5650a() || !C8326a.m5883g()) {
            bVar.mo5853a(cVar, false);
            return;
        }
        final C8383c cVar2 = new C8383c("POST", str, false, dVar);
        HashMap hashMap = new HashMap();
        hashMap.put("payload", cVar.f32435b);
        cVar2.m5739c(hashMap);
        int i3 = i - i2;
        if (i3 > 0) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("X-im-retry-count", String.valueOf(i3));
            cVar2.m5744a(hashMap2);
        }
        cVar2.f32615t = false;
        cVar2.f32621z = false;
        f32450c.schedule(new Runnable() { // from class: com.inmobi.commons.core.c.a.1
            @Override // java.lang.Runnable
            public final void run() {
                C8384d a = new C8385e(cVar2).m5728a();
                if (!a.m5733a()) {
                    bVar.mo5854a(cVar);
                } else if (i2 > 1) {
                    String unused = C8343a.f32448a;
                    StringBuilder sb = new StringBuilder("Unable to send trc events to server: ");
                    sb.append(a.m5731b());
                    sb.append(". Will retry");
                    C8343a.this.m5857a(cVar, str, i, i2 - 1, j, dVar, bVar);
                } else {
                    bVar.mo5853a(cVar, true);
                }
            }
        }, i2 != i ? j : 0, TimeUnit.SECONDS);
    }
}
