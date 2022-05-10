package com.inmobi.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8386f;
import com.inmobi.commons.core.network.NetworkError;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.p497a.C8002n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.inmobi.ads.by */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/by.class */
public final class C8195by implements AbstractC8196bz {

    /* renamed from: a */
    public List<C8191bw> f31965a;

    /* renamed from: b */
    public String f31966b;

    /* renamed from: c */
    public String f31967c;

    /* renamed from: d */
    public List<NativeTracker> f31968d;

    /* renamed from: e */
    public List<C8188bu> f31969e;

    /* renamed from: f */
    public int f31970f;

    /* renamed from: g */
    public String f31971g;

    /* renamed from: h */
    public C8188bu f31972h;

    /* renamed from: i */
    public C8197c.C8208k f31973i;

    /* renamed from: j */
    public C8191bw f31974j;

    public C8195by(C8197c.C8208k kVar) {
        this.f31974j = null;
        this.f31965a = new ArrayList();
        this.f31968d = new ArrayList();
        this.f31969e = new ArrayList();
        this.f31973i = kVar;
        this.f31970f = 0;
    }

    public C8195by(String str, String str2, String str3, List<NativeTracker> list, List<C8188bu> list2, C8197c.C8208k kVar) {
        this(list, kVar);
        if (list2.size() != 0) {
            this.f31969e = new ArrayList(list2);
        }
        this.f31971g = str;
        this.f31965a.add(new C8191bw(str));
        this.f31966b = str2;
        this.f31967c = str3;
    }

    public C8195by(List<NativeTracker> list, C8197c.C8208k kVar) {
        this(kVar);
        if (list.size() != 0) {
            this.f31968d = new ArrayList(list);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r7 > r5.f31949c) goto L_0x0013;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.ads.C8191bw m6209a(com.inmobi.ads.C8191bw r5, com.inmobi.ads.C8191bw r6, double r7) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0007
            goto L_0x0013
        L_0x0007:
            r0 = r5
            r9 = r0
            r0 = r7
            r1 = r5
            double r1 = r1.f31949c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
        L_0x0013:
            r0 = r6
            r9 = r0
        L_0x0016:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8195by.m6209a(com.inmobi.ads.bw, com.inmobi.ads.bw, double):com.inmobi.ads.bw");
    }

    /* renamed from: a */
    private void m6210a(C8191bw bwVar, C8191bw bwVar2) {
        if (bwVar != null) {
            this.f31974j = bwVar;
            this.f31971g = bwVar.f31947a;
        } else if (bwVar2 != null) {
            this.f31974j = bwVar2;
            this.f31971g = bwVar2.f31947a;
        }
    }

    /* renamed from: a */
    private void m6208a(C8197c.C8200c cVar, CountDownLatch countDownLatch) {
        for (C8191bw bwVar : this.f31965a) {
            final C8192bx bxVar = new C8192bx(bwVar, cVar.f32015b, countDownLatch);
            bxVar.f31961c = SystemClock.elapsedRealtime();
            C8192bx.f31952d.execute(new Runnable() { // from class: com.inmobi.ads.bx.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C8384d a = new C8386f(C8192bx.this.f31959a).mo5727a();
                        if (a == null) {
                            return;
                        }
                        if (a.m5733a()) {
                            C8192bx.this.m6214a(a);
                            return;
                        }
                        C8192bx bxVar2 = C8192bx.this;
                        try {
                            C8002n.m6748a().m6747a(bxVar2.f31959a.m5734g());
                            C8002n.m6748a().m6745b(a.m5729c());
                            C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - bxVar2.f31961c);
                            if (bxVar2.f31960b.get() != null) {
                                double d = a.f32625c;
                                Double.isNaN(d);
                                bxVar2.f31960b.get().f31949c = (d * 1.0d) / 1048576.0d;
                            }
                            bxVar2.m6216a();
                        } catch (Exception e) {
                            new StringBuilder("Handling Vast Media Header Request success encountered an unexpected error: ").append(e.getMessage());
                            C8328a.m5878a().m5875a(new C8365a(e));
                            bxVar2.m6216a();
                        }
                    } catch (Exception e2) {
                        String unused = C8192bx.f31953e;
                        new StringBuilder("Network request failed with unexpected error: ").append(e2.getMessage());
                        NetworkError networkError = new NetworkError(NetworkError.ErrorCode.UNKNOWN_ERROR, "Network request failed with unknown error");
                        C8384d dVar = new C8384d();
                        dVar.f32624b = networkError;
                        C8192bx.this.m6214a(dVar);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static boolean m6212a(double d, double d2, double d3) {
        return d3 > d && d3 <= d2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r7 < r5.f31949c) goto L_0x0013;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.ads.C8191bw m6207b(com.inmobi.ads.C8191bw r5, com.inmobi.ads.C8191bw r6, double r7) {
        /*
            r0 = r5
            if (r0 != 0) goto L_0x0007
            goto L_0x0013
        L_0x0007:
            r0 = r5
            r9 = r0
            r0 = r7
            r1 = r5
            double r1 = r1.f31949c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0016
        L_0x0013:
            r0 = r6
            r9 = r0
        L_0x0016:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8195by.m6207b(com.inmobi.ads.bw, com.inmobi.ads.bw, double):com.inmobi.ads.bw");
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: a */
    public final String mo6206a() {
        return this.f31967c;
    }

    /* renamed from: a */
    public final void m6211a(NativeTracker nativeTracker) {
        this.f31968d.add(nativeTracker);
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: a */
    public final void mo6205a(C8188bu buVar) {
        this.f31972h = buVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: b */
    public final String mo6204b() {
        C8191bw bwVar;
        C8191bw bwVar2;
        C8191bw bwVar3;
        int i;
        String str = this.f31971g;
        if (str != null) {
            return str;
        }
        C8053d.m6605a();
        List<String> d = C8053d.m6596d();
        C8191bw bwVar4 = null;
        if (!d.isEmpty()) {
            Iterator<C8191bw> it = this.f31965a.iterator();
            while (it.hasNext()) {
                bwVar = it.next();
                if (d.contains(bwVar.f31947a)) {
                    break;
                }
            }
        }
        bwVar = null;
        if (bwVar != null) {
            this.f31974j = bwVar;
            String str2 = bwVar.f31947a;
            this.f31971g = str2;
            return str2;
        }
        C8197c.C8208k kVar = this.f31973i;
        double d2 = kVar.f32053b;
        Double.isNaN(d2);
        double d3 = (d2 * 2.0d) / 1048576.0d;
        double d4 = kVar.f32054c;
        Double.isNaN(d4);
        double d5 = (d4 * 1.0d) / 1048576.0d;
        for (C8191bw bwVar5 : this.f31965a) {
            String[] split = this.f31966b.split(":");
            try {
                i = (Integer.parseInt(split[1]) * 60) + Integer.parseInt(split[2]);
            } catch (ArrayIndexOutOfBoundsException e) {
                i = 0;
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            double d6 = bwVar5.f31948b;
            Double.isNaN(d6);
            double d7 = i;
            Double.isNaN(d7);
            double d8 = ((d6 * 1.0d) * d7) / 8192.0d;
            bwVar5.f31949c = d8;
            if (m6212a(0.0d, d3, d8)) {
                bwVar = m6209a(bwVar, bwVar5, d8);
                bwVar4 = bwVar4;
            } else {
                bwVar4 = bwVar4;
                bwVar = bwVar;
                if (m6212a(d3, d5, d8)) {
                    bwVar4 = m6207b(bwVar4, bwVar5, d8);
                    bwVar = bwVar;
                }
            }
        }
        m6210a(bwVar, bwVar4);
        if (TextUtils.isEmpty(this.f31971g)) {
            C8197c.C8200c cVar = this.f31973i.f32055d;
            if (cVar.f32014a || this.f31965a.size() == 0) {
                return this.f31971g;
            }
            CountDownLatch countDownLatch = new CountDownLatch(this.f31965a.size());
            try {
                try {
                    m6208a(cVar, countDownLatch);
                    countDownLatch.await(cVar.f32015b, TimeUnit.MILLISECONDS);
                    Iterator<C8191bw> it2 = this.f31965a.iterator();
                    while (true) {
                        bwVar2 = bwVar4;
                        bwVar3 = bwVar;
                        if (!it2.hasNext()) {
                            break;
                        }
                        C8191bw next = it2.next();
                        double d9 = next.f31949c;
                        if (m6212a(0.0d, d3, d9)) {
                            bwVar = m6209a(bwVar, next, d9);
                        } else if (m6212a(d3, d5, d9)) {
                            bwVar4 = m6207b(bwVar4, next, d9);
                        }
                    }
                } catch (Exception e2) {
                    new StringBuilder("SDK encountered an unexpected error in getting vast header response; ").append(e2.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e2));
                    Iterator<C8191bw> it3 = this.f31965a.iterator();
                    while (true) {
                        bwVar2 = bwVar4;
                        bwVar3 = bwVar;
                        if (!it3.hasNext()) {
                            break;
                        }
                        C8191bw next2 = it3.next();
                        double d10 = next2.f31949c;
                        if (m6212a(0.0d, d3, d10)) {
                            bwVar = m6209a(bwVar, next2, d10);
                        } else if (m6212a(d3, d5, d10)) {
                            bwVar4 = m6207b(bwVar4, next2, d10);
                        }
                    }
                }
                m6210a(bwVar3, bwVar2);
            } catch (Throwable th) {
                for (C8191bw bwVar6 : this.f31965a) {
                    double d11 = bwVar6.f31949c;
                    if (m6212a(0.0d, d3, d11)) {
                        bwVar = m6209a(bwVar, bwVar6, d11);
                    } else if (m6212a(d3, d5, d11)) {
                        bwVar4 = m6207b(bwVar4, bwVar6, d11);
                    }
                }
                m6210a(bwVar, bwVar4);
                throw th;
            }
        }
        return this.f31971g;
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: c */
    public final List<C8191bw> mo6203c() {
        return this.f31965a;
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: d */
    public final List<NativeTracker> mo6202d() {
        return this.f31968d;
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: e */
    public final List<C8188bu> mo6201e() {
        return this.f31969e;
    }

    @Override // com.inmobi.ads.AbstractC8196bz
    /* renamed from: f */
    public final C8188bu mo6200f() {
        return this.f31972h;
    }
}
