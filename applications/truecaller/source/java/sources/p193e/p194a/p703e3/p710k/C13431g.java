package p193e.p194a.p703e3.p710k;

import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import p193e.p194a.p1129p5.p1135v0.AbstractC19335b;
/* renamed from: e.a.e3.k.g */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/g.class */
public final class C13431g extends AbstractC19316a implements AbstractC13430f {

    /* renamed from: b */
    public final int f38994b = 2;

    /* renamed from: c */
    public final String f38995c = "call_alert_settings";

    /* renamed from: d */
    public final AbstractC19335b f38996d;

    /* JADX WARN: Illegal instructions before constructor call */
    @javax.inject.Inject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C13431g(android.content.Context r5, p193e.p194a.p1129p5.p1135v0.AbstractC19335b r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "telephonyUtil"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r1 = "call_alert_settings"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            r0 = r4
            r1 = r6
            r0.f38996d = r1
            r0 = r4
            r1 = 2
            r0.f38994b = r1
            r0 = r4
            java.lang.String r1 = "call_alert_settings"
            r0.f38995c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13431g.<init>(android.content.Context, e.a.p5.v0.b):void");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f38994b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f38995c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
        if (s1.f0.r.p(r0) != false) goto L11;
     */
    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo8944o3(int r8, android.content.Context r9) {
        /*
            r7 = this;
            r0 = r9
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = 0
            r10 = r0
            r0 = r8
            r1 = 1
            if (r0 >= r1) goto L38
            r0 = r9
            java.lang.String r1 = "tc.settings"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r9 = r0
            r0 = r7
            java.lang.String r1 = "callAlertIncomingCallSimId"
            r2 = r9
            java.lang.String r3 = "callAlertIncomingCallSimId"
            r4 = 0
            java.lang.String r2 = r2.getString(r3, r4)
            r0.putString(r1, r2)
            r0 = r9
            java.lang.String r1 = "oldPreferences"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            r1 = r9
            java.lang.String r2 = "callAlertIncomingCallSimId"
            java.util.Set r2 = s1.u.i.y0(r2)
            r3 = 0
            r4 = 4
            r5 = 0
            int r0 = p193e.p194a.p1129p5.p1133t0.AbstractC19316a.m13468m3(r0, r1, r2, r3, r4, r5)
        L38:
            r0 = r8
            r1 = 2
            if (r0 >= r1) goto La7
            r0 = r7
            java.lang.String r1 = "callAlertIncomingCallSimId"
            java.lang.String r0 = r0.getString(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L51
            r0 = r10
            r8 = r0
            r0 = r9
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L53
        L51:
            r0 = 1
            r8 = r0
        L53:
            r0 = r8
            if (r0 != 0) goto La1
            r0 = r7
            e.a.p5.v0.b r0 = r0.f38996d
            r1 = r9
            java.lang.Integer r0 = r0.mo13443c(r1)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto La1
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "Sub id "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r1 = " found for sim id: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r0 = r0.toString()
            r0 = r7
            java.lang.String r1 = "callAlertIncomingCallSubscriptionId"
            r2 = r11
            int r2 = r2.intValue()
            r0.putInt(r1, r2)
        La1:
            r0 = r7
            java.lang.String r1 = "callAlertIncomingCallSimId"
            r0.remove(r1)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p710k.C13431g.mo8944o3(int, android.content.Context):void");
    }
}
