package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.audio.AudioProcessor;
/* renamed from: b.s.b.a.p0.v */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/v.class */
public final class C1300v extends AbstractC1293q {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7 A[LOOP:2: B:27:0x00c7->B:29:0x00cd, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:14:0x005f, B:29:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33753a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1300v.mo33753a(java.nio.ByteBuffer):void");
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo33754a(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            return m33846b(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo33752b() {
        int i = this.f5142d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1293q, androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public int mo33756h() {
        return 2;
    }
}
