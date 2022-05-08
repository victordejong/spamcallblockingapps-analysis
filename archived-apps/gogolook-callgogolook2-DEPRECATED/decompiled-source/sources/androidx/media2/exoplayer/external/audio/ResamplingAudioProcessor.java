package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/ResamplingAudioProcessor.class */
public final class ResamplingAudioProcessor extends BaseAudioProcessor {
    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean configure(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            return setInputFormat(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public int getOutputEncoding() {
        return 2;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isActive() {
        int i = this.encoding;
        return (i == 0 || i == 2) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7 A[LOOP:2: B:27:0x00c7->B:29:0x00cd, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:14:0x005f, B:29:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void queueInput(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.ResamplingAudioProcessor.queueInput(java.nio.ByteBuffer):void");
    }
}
