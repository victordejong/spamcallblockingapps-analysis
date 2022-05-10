package com.inmobi.p497a;

import android.content.Context;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8004p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.inmobi.a.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/g.class */
public class C7990g {

    /* renamed from: a */
    public static final String f31197a = "g";

    /* renamed from: b */
    public C8004p.C8005a f31198b;

    /* renamed from: c */
    public boolean f31199c = false;

    /* renamed from: d */
    public C7979a f31200d = new C7979a();

    /* renamed from: e */
    public C7988e f31201e = new C7988e();

    /* renamed from: a */
    public static /* synthetic */ C7986c m6778a(C7990g gVar) {
        C8004p.C8005a aVar = gVar.f31198b;
        C7983b bVar = new C7983b(aVar.f31254b, aVar.f31257e, aVar.f31258f, C8003o.m6743a().m6740d());
        C8004p.C8005a aVar2 = gVar.f31198b;
        bVar.f32616u = aVar2.f31260h;
        int i = aVar2.f31259g;
        bVar.f32612q = i * 1000;
        bVar.f32613r = i * 1000;
        return C7988e.m6780a(bVar);
    }

    /* renamed from: a */
    public static /* synthetic */ List m6774a(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (!m6775a(((C7987d) list.get(i)).f31190a)) {
                arrayList.add(list.get(i));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static /* synthetic */ void m6777a(C7990g gVar, C7986c cVar, List list) {
        C8004p.C8005a aVar = gVar.f31198b;
        C7989f fVar = new C7989f(aVar.f31255c, aVar.f31257e, aVar.f31258f, C8003o.m6743a().m6740d(), list, cVar);
        int i = gVar.f31198b.f31259g;
        fVar.f32612q = i * 1000;
        fVar.f32613r = i * 1000;
        C7988e.m6779a(fVar);
    }

    /* renamed from: a */
    public static boolean m6775a(String str) {
        Context b = C8326a.m5891b();
        boolean z = false;
        if (b == null) {
            return false;
        }
        try {
            b.getPackageManager().getPackageInfo(str, 256);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[Catch: all -> 0x0069, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000e, B:10:0x0028, B:16:0x0048), top: B:24:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6776a(com.inmobi.p497a.C8004p.C8005a r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            r1 = r6
            r0.f31198b = r1     // Catch: all -> 0x0069
            r0 = r5
            boolean r0 = r0.f31199c     // Catch: all -> 0x0069
            if (r0 != 0) goto L_0x0066
            r0 = r5
            com.inmobi.a.a r0 = r0.f31200d     // Catch: all -> 0x0069
            com.inmobi.commons.core.d.c r0 = r0.f31166a     // Catch: all -> 0x0069
            java.lang.String r1 = "carb_last_update_ts"
            r2 = 0
            long r0 = r0.m5798b(r1, r2)     // Catch: all -> 0x0069
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0028
        L_0x0022:
            r0 = 1
            r9 = r0
            goto L_0x0043
        L_0x0028:
            long r0 = java.lang.System.currentTimeMillis()     // Catch: all -> 0x0069
            r1 = r7
            long r0 = r0 - r1
            r1 = r5
            com.inmobi.a.p$a r1 = r1.f31198b     // Catch: all -> 0x0069
            int r1 = r1.f31256d     // Catch: all -> 0x0069
            r2 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1 * r2
            long r1 = (long) r1     // Catch: all -> 0x0069
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0040
            goto L_0x0022
        L_0x0040:
            r0 = 0
            r9 = r0
        L_0x0043:
            r0 = r9
            if (r0 == 0) goto L_0x0066
            r0 = r5
            r1 = 1
            r0.f31199c = r1     // Catch: all -> 0x0069
            java.lang.Thread r0 = new java.lang.Thread     // Catch: all -> 0x0069
            r6 = r0
            com.inmobi.a.g$1 r0 = new com.inmobi.a.g$1     // Catch: all -> 0x0069
            r10 = r0
            r0 = r10
            r1 = r5
            r0.<init>()     // Catch: all -> 0x0069
            r0 = r6
            r1 = r10
            r0.<init>(r1)     // Catch: all -> 0x0069
            r0 = r6
            r0.start()     // Catch: all -> 0x0069
        L_0x0066:
            r0 = r5
            monitor-exit(r0)
            return
        L_0x0069:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            goto L_0x0071
        L_0x006f:
            r0 = r6
            throw r0
        L_0x0071:
            goto L_0x006f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.p497a.C7990g.m6776a(com.inmobi.a.p$a):void");
    }
}
