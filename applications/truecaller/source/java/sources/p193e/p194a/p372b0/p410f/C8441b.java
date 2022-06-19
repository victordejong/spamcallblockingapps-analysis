package p193e.p194a.p372b0.p410f;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.b0.f.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/f/b.class */
public final class C8441b implements AbstractC8440a {

    /* renamed from: a */
    public final AbstractC19462a f26144a;

    /* renamed from: b */
    public final AbstractC19230g f26145b;

    @Inject
    public C8441b(AbstractC19462a abstractC19462a, AbstractC19230g abstractC19230g) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f26144a = abstractC19462a;
        this.f26145b = abstractC19230g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if ((((java.lang.reflect.InvocationTargetException) r9).getTargetException() instanceof java.lang.SecurityException) != false) goto L15;
     */
    @Override // p193e.p194a.p372b0.p410f.AbstractC8440a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo28558a(int r8, java.lang.Exception r9) {
        /*
            r7 = this;
            r0 = r9
            java.lang.String r1 = "e"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            e.a.q2.a r0 = r0.f26144a
            r10 = r0
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L23
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L1c
            java.lang.String r0 = "Default"
            r11 = r0
            goto L27
        L1c:
            java.lang.String r0 = "TelecomManager"
            r11 = r0
            goto L27
        L23:
            java.lang.String r0 = "Msim"
            r11 = r0
        L27:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "Method"
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r9
            boolean r0 = r0 instanceof java.lang.reflect.InvocationTargetException
            if (r0 == 0) goto L51
            r0 = r9
            java.lang.reflect.InvocationTargetException r0 = (java.lang.reflect.InvocationTargetException) r0
            java.lang.Throwable r0 = r0.getTargetException()
            boolean r0 = r0 instanceof java.lang.SecurityException
            if (r0 == 0) goto L6b
            goto L58
        L51:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.SecurityException
            if (r0 == 0) goto L5e
        L58:
            java.lang.String r0 = "Security"
            r9 = r0
            goto L6e
        L5e:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.NoSuchMethodException
            if (r0 == 0) goto L6b
            java.lang.String r0 = "Reflection"
            r9 = r0
            goto L6e
        L6b:
            java.lang.String r0 = "Unknown"
            r9 = r0
        L6e:
            r0 = r12
            java.lang.String r1 = "Reason"
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            e.a.p5.g r0 = r0.f26145b
            java.lang.String r0 = r0.mo13785l()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L8a
            goto L8d
        L8a:
            java.lang.String r0 = ""
            r9 = r0
        L8d:
            r0 = r12
            java.lang.String r1 = "SecurityPatchVersion"
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)
            e.a.q2.g$b$a r0 = new e.a.q2.g$b$a
            r1 = r0
            java.lang.String r2 = "DeclineCallErrors"
            r3 = 0
            r4 = r12
            r5 = 0
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "AnalyticsEvent.Builder(C…\n                .build()"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            r1 = r9
            r0.mo13271e(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p410f.C8441b.mo28558a(int, java.lang.Exception):void");
    }
}
