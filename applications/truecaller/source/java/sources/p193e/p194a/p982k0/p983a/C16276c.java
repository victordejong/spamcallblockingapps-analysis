package p193e.p194a.p982k0.p983a;

import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.util.RecorderMode;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p982k0.AbstractC16313f;
import s1.z.c.l;
/* renamed from: e.a.k0.a.c */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/c.class */
public final class C16276c implements AbstractC16275b {

    /* renamed from: a */
    public final AbstractC16313f f45852a;

    /* renamed from: b */
    public final C20592g f45853b;

    /* renamed from: c */
    public final AbstractC19230g f45854c;

    @Inject
    public C16276c(AbstractC16313f abstractC16313f, C20592g c20592g, AbstractC19230g abstractC19230g) {
        l.e(abstractC16313f, "callRecordingSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f45852a = abstractC16313f;
        this.f45853b = c20592g;
        this.f45854c = abstractC19230g;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: a */
    public RecorderMode mo17645a() {
        return m17639g() ? RecorderMode.SDK_ACCESSIBILITY : mo17640f() == CallRecordingManager.Configuration.SDK_MEDIA_RECORDER ? RecorderMode.SDK : RecorderMode.AAC;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        if (r6 != null) goto L16;
     */
    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.callrecording.CallRecordingManager.AudioSource mo17644b() {
        /*
            r5 = this;
            r0 = r5
            e.a.u3.g r0 = r0.f45853b
            r6 = r0
            r0 = r6
            e.a.u3.g$a r0 = r0.f58070z1
            r1 = r6
            s1.a.l[] r2 = p193e.p194a.p1272u3.C20592g.f57695p6
            r3 = 129(0x81, float:1.81E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L4b
            r0 = r5
            e.a.k0.f r0 = r0.f45852a
            java.lang.String r0 = r0.mo17539u0()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L36
            r0 = r6
            com.truecaller.callrecording.CallRecordingManager$AudioSource r0 = com.truecaller.callrecording.CallRecordingManager.AudioSource.valueOf(r0)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L36
            goto L5d
        L36:
            r0 = r5
            boolean r0 = r0.m17639g()
            if (r0 == 0) goto L44
            com.truecaller.callrecording.CallRecordingManager$AudioSource r0 = com.truecaller.callrecording.CallRecordingManager.AudioSource.VOICE_RECOGNITION
            r6 = r0
            goto L5d
        L44:
            com.truecaller.callrecording.CallRecordingManager$AudioSource r0 = com.truecaller.callrecording.CallRecordingManager.AudioSource.MIC
            r6 = r0
            goto L5d
        L4b:
            r0 = r5
            boolean r0 = r0.m17639g()
            if (r0 == 0) goto L59
            com.truecaller.callrecording.CallRecordingManager$AudioSource r0 = com.truecaller.callrecording.CallRecordingManager.AudioSource.VOICE_RECOGNITION
            r6 = r0
            goto L5d
        L59:
            com.truecaller.callrecording.CallRecordingManager$AudioSource r0 = com.truecaller.callrecording.CallRecordingManager.AudioSource.MIC
            r6 = r0
        L5d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p983a.C16276c.mo17644b():com.truecaller.callrecording.CallRecordingManager$AudioSource");
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: c */
    public void mo17643c(CallRecordingManager.Configuration configuration) {
        l.e(configuration, "value");
        this.f45852a.mo17541r0(configuration.toString());
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: d */
    public void mo17642d(CallRecordingManager.AudioSource audioSource) {
        l.e(audioSource, "value");
        this.f45852a.mo17559I0(audioSource.toString());
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: e */
    public boolean mo17641e() {
        C20592g c20592g = this.f45853b;
        return c20592g.f58070z1.m10941a(c20592g, C20592g.f57695p6[129]).isEnabled();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (r3 != null) goto L10;
     */
    @Override // p193e.p194a.p982k0.p983a.AbstractC16275b
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.callrecording.CallRecordingManager.Configuration mo17640f() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.m17639g()
            if (r0 == 0) goto Le
            com.truecaller.callrecording.CallRecordingManager$Configuration r0 = com.truecaller.callrecording.CallRecordingManager.Configuration.SDK_MEDIA_RECORDER
            r3 = r0
            goto L2c
        Le:
            r0 = r2
            e.a.k0.f r0 = r0.f45852a
            java.lang.String r0 = r0.mo17556J2()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L28
            r0 = r3
            com.truecaller.callrecording.CallRecordingManager$Configuration r0 = com.truecaller.callrecording.CallRecordingManager.Configuration.valueOf(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L28
            goto L2c
        L28:
            com.truecaller.callrecording.CallRecordingManager$Configuration r0 = com.truecaller.callrecording.CallRecordingManager.Configuration.DEFAULT
            r3 = r0
        L2c:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p983a.C16276c.mo17640f():com.truecaller.callrecording.CallRecordingManager$Configuration");
    }

    /* renamed from: g */
    public boolean m17639g() {
        AbstractC19230g abstractC19230g = this.f45854c;
        l.e(abstractC19230g, "$this$shouldRecordThroughAccessibility");
        return abstractC19230g.mo13780q() >= 28;
    }
}
