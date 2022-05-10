package com.moat.analytics.mobile.mpub;

import android.view.View;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.mpub.h */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/h.class */
public abstract class AbstractC8630h extends AbstractC8619c {

    /* renamed from: p */
    public int f33476p = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f33472l = Integer.MIN_VALUE;

    /* renamed from: n */
    public int f33474n = Integer.MIN_VALUE;

    /* renamed from: q */
    public int f33477q = 0;

    /* renamed from: m */
    public EnumC8632a f33473m = EnumC8632a.UNINITIALIZED;

    /* renamed from: o */
    public double f33475o = Double.NaN;

    /* renamed from: com.moat.analytics.mobile.mpub.h$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/h$a.class */
    public enum EnumC8632a {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    public AbstractC8630h(String str) {
        super(str);
    }

    /* renamed from: t */
    private void m4939t() {
        ((AbstractC8619c) this).f33446i.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.mpub.h.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractC8630h hVar;
                try {
                    if (!AbstractC8630h.this.mo4817n() || AbstractC8630h.this.m4957m()) {
                        hVar = AbstractC8630h.this;
                    } else if (Boolean.valueOf(AbstractC8630h.this.m4940s()).booleanValue()) {
                        ((AbstractC8619c) AbstractC8630h.this).f33446i.postDelayed(this, 200L);
                        return;
                    } else {
                        hVar = AbstractC8630h.this;
                    }
                    hVar.m4958l();
                } catch (Exception e) {
                    AbstractC8630h.this.m4958l();
                    C8643m.m4879a(e);
                }
            }
        }, 200L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        if (r4.f33474n > 0) goto L_0x0056;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject mo4780a(com.moat.analytics.mobile.mpub.MoatAdEvent r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.Integer r0 = r0.f33415b
            java.lang.Integer r1 = com.moat.analytics.mobile.mpub.MoatAdEvent.f33413a
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0015
            r0 = r5
            java.lang.Integer r0 = r0.f33415b
            r6 = r0
            goto L_0x002b
        L_0x0015:
            r0 = r4
            java.lang.Integer r0 = r0.mo4816o()     // Catch: Exception -> 0x001d
            r6 = r0
            goto L_0x0026
        L_0x001d:
            r6 = move-exception
            r0 = r4
            int r0 = r0.f33474n
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6 = r0
        L_0x0026:
            r0 = r5
            r1 = r6
            r0.f33415b = r1
        L_0x002b:
            r0 = r5
            java.lang.Integer r0 = r0.f33415b
            int r0 = r0.intValue()
            if (r0 < 0) goto L_0x0056
            r0 = r6
            r7 = r0
            r0 = r5
            java.lang.Integer r0 = r0.f33415b
            int r0 = r0.intValue()
            if (r0 != 0) goto L_0x0063
            r0 = r6
            r7 = r0
            r0 = r5
            com.moat.analytics.mobile.mpub.MoatAdEventType r0 = r0.f33417d
            com.moat.analytics.mobile.mpub.MoatAdEventType r1 = com.moat.analytics.mobile.mpub.MoatAdEventType.AD_EVT_COMPLETE
            if (r0 != r1) goto L_0x0063
            r0 = r6
            r7 = r0
            r0 = r4
            int r0 = r0.f33474n
            if (r0 <= 0) goto L_0x0063
        L_0x0056:
            r0 = r4
            int r0 = r0.f33474n
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.f33415b = r1
        L_0x0063:
            r0 = r5
            com.moat.analytics.mobile.mpub.MoatAdEventType r0 = r0.f33417d
            com.moat.analytics.mobile.mpub.MoatAdEventType r1 = com.moat.analytics.mobile.mpub.MoatAdEventType.AD_EVT_COMPLETE
            if (r0 != r1) goto L_0x00ab
            r0 = r7
            int r0 = r0.intValue()
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x009d
            r0 = r4
            int r0 = r0.f33472l
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x009d
            r0 = r4
            r1 = r7
            r2 = r8
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            boolean r0 = r0.m4963a(r1, r2)
            if (r0 != 0) goto L_0x0093
            goto L_0x009d
        L_0x0093:
            r0 = r4
            com.moat.analytics.mobile.mpub.h$a r1 = com.moat.analytics.mobile.mpub.AbstractC8630h.EnumC8632a.COMPLETED
            r0.f33473m = r1
            goto L_0x00ab
        L_0x009d:
            r0 = r4
            com.moat.analytics.mobile.mpub.h$a r1 = com.moat.analytics.mobile.mpub.AbstractC8630h.EnumC8632a.STOPPED
            r0.f33473m = r1
            r0 = r5
            com.moat.analytics.mobile.mpub.MoatAdEventType r1 = com.moat.analytics.mobile.mpub.MoatAdEventType.AD_EVT_STOPPED
            r0.f33417d = r1
        L_0x00ab:
            r0 = r4
            r1 = r5
            org.json.JSONObject r0 = super.mo4780a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.mpub.AbstractC8630h.mo4780a(com.moat.analytics.mobile.mpub.MoatAdEvent):org.json.JSONObject");
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    /* renamed from: a */
    public boolean mo4942a(Map<String, String> map, View view) {
        boolean z;
        try {
            boolean a = super.mo4942a(map, view);
            z = a;
            if (a) {
                z = a;
                if (m4941p()) {
                    m4939t();
                    z = a;
                }
            }
        } catch (Exception e) {
            C8652p.m4848a(3, "IntervalVideoTracker", this, "Problem with video loop");
            m4977a("trackVideoAd", e);
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    public abstract boolean mo4817n();

    /* renamed from: o */
    public abstract Integer mo4816o();

    /* renamed from: p */
    public boolean m4941p() {
        return true;
    }

    /* renamed from: q */
    public abstract boolean mo4815q();

    /* renamed from: r */
    public abstract Integer mo4814r();

    /* JADX WARN: Removed duplicated region for block: B:54:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x018f A[Catch: Exception -> 0x01b7, TRY_ENTER, TryCatch #0 {Exception -> 0x01b7, blocks: (B:7:0x0019, B:12:0x0030, B:15:0x003d, B:17:0x005e, B:19:0x006a, B:21:0x0073, B:23:0x007a, B:25:0x0082, B:28:0x008c, B:30:0x0096, B:32:0x00a1, B:33:0x00a9, B:35:0x00b3, B:37:0x00d2, B:42:0x00f0, B:44:0x00fc, B:46:0x010a, B:49:0x0125, B:51:0x012f, B:59:0x015f, B:63:0x0171, B:65:0x0182, B:69:0x018f, B:71:0x01ab), top: B:79:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01cf  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m4940s() {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.mpub.AbstractC8630h.m4940s():boolean");
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    public void setPlayerVolume(Double d) {
        super.setPlayerVolume(d);
        this.f33475o = m4960j().doubleValue();
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c, com.moat.analytics.mobile.mpub.AbstractC8618b
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
            super.stopTracking();
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }
}
