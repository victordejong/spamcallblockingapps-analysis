package p193e.p194a.p773g.p785j;

import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19128x1;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.g.j.i0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/i0.class */
public final class C14287i0 implements AbstractC14283h0 {

    /* renamed from: a */
    public final CallingSettings f41346a;

    /* renamed from: b */
    public final AbstractC19022f0 f41347b;

    /* renamed from: c */
    public final AbstractC19128x1 f41348c;

    /* renamed from: d */
    public final CallRecordingManager f41349d;

    /* renamed from: e */
    public final C20592g f41350e;

    @Inject
    public C14287i0(CallingSettings callingSettings, AbstractC19022f0 abstractC19022f0, AbstractC19128x1 abstractC19128x1, CallRecordingManager callRecordingManager, C20592g c20592g) {
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19128x1, "usageChecker");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(c20592g, "featuresRegistry");
        this.f41346a = callingSettings;
        this.f41347b = abstractC19022f0;
        this.f41348c = abstractC19128x1;
        this.f41349d = callRecordingManager;
        this.f41350e = c20592g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
        if (r4.f11547n != null) goto L21;
     */
    @Override // p193e.p194a.p773g.p785j.AbstractC14283h0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo20290a(com.truecaller.data.entity.HistoryEvent r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "event"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            com.truecaller.data.entity.Contact r0 = r0.f11539f
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L58
            r0 = r5
            if (r0 == 0) goto L22
            r0 = r5
            boolean r0 = r0.m35497s0()
            if (r0 != 0) goto L22
            r0 = 1
            r7 = r0
            goto L25
        L22:
            r0 = 0
            r7 = r0
        L25:
            r0 = r7
            if (r0 == 0) goto L58
            r0 = r3
            e.a.o5.f0 r0 = r0.f41347b
            boolean r0 = r0.mo14245a()
            if (r0 == 0) goto L58
            r0 = r3
            e.a.o5.x1 r0 = r0.f41348c
            boolean r0 = r0.mo14081b()
            if (r0 != 0) goto L58
            r0 = r3
            com.truecaller.callrecording.CallRecordingManager r0 = r0.f41349d
            boolean r0 = r0.mo17584n()
            if (r0 == 0) goto L58
            r0 = r4
            com.truecaller.data.entity.CallRecording r0 = r0.f11547n
            if (r0 == 0) goto L58
            goto L5a
        L58:
            r0 = 0
            r6 = r0
        L5a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p785j.C14287i0.mo20290a(com.truecaller.data.entity.HistoryEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ca, code lost:
        if (r0 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f3, code lost:
        if (r0 != false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0112  */
    @Override // p193e.p194a.p773g.p785j.AbstractC14283h0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo20289b(com.truecaller.data.entity.HistoryEvent r6, com.truecaller.blocking.FilterMatch r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p785j.C14287i0.mo20289b(com.truecaller.data.entity.HistoryEvent, com.truecaller.blocking.FilterMatch, boolean):boolean");
    }
}
