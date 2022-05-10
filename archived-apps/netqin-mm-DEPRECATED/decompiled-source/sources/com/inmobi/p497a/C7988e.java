package com.inmobi.p497a;

import android.os.SystemClock;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p513e.C8376f;
/* renamed from: com.inmobi.a.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/e.class */
public class C7988e {

    /* renamed from: a */
    public static final String f31192a = "e";

    /* renamed from: a */
    public static C7986c m6780a(C7983b bVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C8384d a = new C8385e(bVar).m5728a();
        C7986c cVar = new C7986c(a);
        try {
            C8002n.m6748a().m6747a(bVar.m5734g());
            C8002n.m6748a().m6745b(a.m5729c());
            C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
        } catch (Exception e) {
            new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
        }
        return cVar;
    }

    /* renamed from: a */
    public static boolean m6779a(C7989f fVar) {
        boolean z;
        int i = 0;
        while (true) {
            z = false;
            if (i > fVar.f31193a) {
                break;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            C8384d a = new C8385e(fVar).m5728a();
            try {
                C8002n.m6748a().m6747a(fVar.m5734g());
                C8002n.m6748a().m6745b(a.m5729c());
                C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
            } catch (Exception e) {
                new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
            }
            if (!a.m5733a()) {
                z = true;
                break;
            }
            i++;
            z = false;
            if (i > fVar.f31193a) {
                break;
            }
            try {
                Thread.sleep(fVar.f31194b * 1000);
            } catch (InterruptedException e2) {
            }
        }
        if (!z) {
            try {
                C8366b.m5794a().m5792a(new C8376f("signals", "CarbUploadDiscarded"));
            } catch (Exception e3) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(e3.getMessage());
                sb.append(")");
            }
        }
        return z;
    }
}
