package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
/* renamed from: c.d.b.c.s0.t */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/t.class */
public final class C3000t extends AbstractC2993o {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cd A[LOOP:2: B:27:0x00cd->B:29:0x00d3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:14:0x0065, B:29:0x00d3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo18691a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C3000t.mo18691a(java.nio.ByteBuffer):void");
    }

    @Override // p131c.p161d.p170b.p188c.p206s0.AbstractC2993o
    /* renamed from: b */
    public AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i = aVar.f21974c;
        if (i == 3 || i == 2 || i == Integer.MIN_VALUE || i == 1073741824) {
            return i != 2 ? new AudioProcessor.C7122a(aVar.f21972a, aVar.f21973b, 2) : AudioProcessor.C7122a.f21971e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
