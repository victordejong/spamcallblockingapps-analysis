package p193e.p194a.p947k.p969c;

import com.truecaller.videocallerid.utils.UpdateVideoCallerIdPromoConfig;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19243l;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.k.c.q1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/q1.class */
public final class C16048q1 implements AbstractC16043p1 {

    /* renamed from: a */
    public UpdateVideoCallerIdPromoConfig f45237a;

    /* renamed from: b */
    public final AbstractC16015i1 f45238b;

    /* renamed from: c */
    public final AbstractC16067r0 f45239c;

    /* renamed from: d */
    public final C20592g f45240d;

    /* renamed from: e */
    public final AbstractC19243l f45241e;

    @Inject
    public C16048q1(AbstractC16015i1 abstractC16015i1, AbstractC16067r0 abstractC16067r0, C20592g c20592g, AbstractC19243l abstractC19243l) {
        l.e(abstractC16015i1, "videoCallerIdSettings");
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19243l, "gsonUtil");
        this.f45238b = abstractC16015i1;
        this.f45239c = abstractC16067r0;
        this.f45240d = c20592g;
        this.f45241e = abstractC19243l;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16043p1
    /* renamed from: a */
    public boolean mo17967a(String str) {
        String string;
        HashMap hashMap;
        l.e(str, "videoId");
        string = this.f45238b.getString("updatePromoVideoIdMap", (r7 & 2) != 0 ? "" : null);
        if (string == null || (hashMap = (HashMap) this.f45241e.mo13750b(string, HashMap.class)) == null) {
            return false;
        }
        return l.a((Boolean) hashMap.get(str), Boolean.TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (r7 != null) goto L15;
     */
    @Override // p193e.p194a.p947k.p969c.AbstractC16043p1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo17966b() {
        /*
            r6 = this;
            r0 = r6
            e.a.k.c.r0 r0 = r0.f45239c
            boolean r0 = r0.isAvailable()
            if (r0 == 0) goto La4
            r0 = r6
            e.a.k.c.r0 r0 = r0.f45239c
            boolean r0 = r0.isEnabled()
            if (r0 != 0) goto L1b
            goto La4
        L1b:
            r0 = r6
            com.truecaller.videocallerid.utils.UpdateVideoCallerIdPromoConfig r0 = r0.mo17964i()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto La4
            r0 = r7
            java.util.List r0 = r0.getVideoIds()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto La4
            r0 = r6
            e.a.k.c.i1 r0 = r0.f45238b
            java.lang.String r1 = "updatePromoVideoIdMap"
            r2 = 0
            r3 = 2
            r4 = 0
            java.lang.String r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13550g0(r0, r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L55
            r0 = r6
            e.a.p5.l r0 = r0.f45241e
            r1 = r7
            java.lang.Class<java.util.HashMap> r2 = java.util.HashMap.class
            java.lang.Object r0 = r0.mo13750b(r1, r2)
            java.util.HashMap r0 = (java.util.HashMap) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L55
            goto L5d
        L55:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r7 = r0
        L5d:
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L64:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8d
            r0 = r8
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r9 = r0
            r0 = r7
            r1 = r9
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L64
            r0 = r7
            r1 = r9
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            java.lang.Object r0 = r0.put(r1, r2)
            goto L64
        L8d:
            r0 = r6
            e.a.p5.l r0 = r0.f45241e
            r1 = r7
            java.lang.String r0 = r0.mo13751a(r1)
            r7 = r0
            r0 = r6
            e.a.k.c.i1 r0 = r0.f45238b
            java.lang.String r1 = "updatePromoVideoIdMap"
            r2 = r7
            r0.putString(r1, r2)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16048q1.mo17966b():void");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16043p1
    /* renamed from: c */
    public void mo17965c(String str) {
        String string;
        HashMap hashMap;
        l.e(str, "videoId");
        string = this.f45238b.getString("updatePromoVideoIdMap", (r7 & 2) != 0 ? "" : null);
        if (string == null || (hashMap = (HashMap) this.f45241e.mo13750b(string, HashMap.class)) == null) {
            return;
        }
        hashMap.put(str, Boolean.FALSE);
        this.f45238b.putString("updatePromoVideoIdMap", this.f45241e.mo13751a(hashMap));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16043p1
    /* renamed from: i */
    public UpdateVideoCallerIdPromoConfig mo17964i() {
        if (this.f45237a == null) {
            C20592g c20592g = this.f45240d;
            String mo10938g = ((AbstractC20597i) c20592g.f57856W5.m10941a(c20592g, C20592g.f57695p6[366])).mo10938g();
            if (r.p(mo10938g)) {
                mo10938g = null;
            }
            if (mo10938g != null) {
                try {
                    UpdateVideoCallerIdPromoConfig updateVideoCallerIdPromoConfig = (UpdateVideoCallerIdPromoConfig) this.f45241e.mo13750b(mo10938g, UpdateVideoCallerIdPromoConfig.class);
                    if (updateVideoCallerIdPromoConfig != null) {
                        this.f45237a = updateVideoCallerIdPromoConfig;
                    }
                } catch (Throwable th) {
                    C25225a.m3935a0(th);
                }
            }
        }
        return this.f45237a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (r7 != null) goto L15;
     */
    @Override // p193e.p194a.p947k.p969c.AbstractC16043p1
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17963l() {
        /*
            r6 = this;
            r0 = r6
            e.a.k.c.r0 r0 = r0.f45239c
            boolean r0 = r0.isAvailable()
            if (r0 == 0) goto L7f
            r0 = r6
            e.a.k.c.r0 r0 = r0.f45239c
            boolean r0 = r0.isEnabled()
            if (r0 != 0) goto L1b
            goto L7f
        L1b:
            r0 = r6
            com.truecaller.videocallerid.utils.UpdateVideoCallerIdPromoConfig r0 = r0.mo17964i()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r7
            java.util.List r0 = r0.getVideoIds()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7f
            r0 = r6
            e.a.k.c.i1 r0 = r0.f45238b
            java.lang.String r1 = "updatePromoVideoIdMap"
            r2 = 0
            r3 = 2
            r4 = 0
            java.lang.String r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13550g0(r0, r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L55
            r0 = r6
            e.a.p5.l r0 = r0.f45241e
            r1 = r7
            java.lang.Class<java.util.HashMap> r2 = java.util.HashMap.class
            java.lang.Object r0 = r0.mo13750b(r1, r2)
            java.util.HashMap r0 = (java.util.HashMap) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L55
            goto L5d
        L55:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r7 = r0
        L5d:
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L64:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L7f
            r0 = r7
            r1 = r8
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L64
            r0 = 1
            return r0
        L7f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16048q1.mo17963l():boolean");
    }
}
