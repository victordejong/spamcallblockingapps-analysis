package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.util.Util;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor.class */
public final class FloatResamplingAudioProcessor extends BaseAudioProcessor {
    public static final int FLOAT_NAN_AS_INT = Float.floatToIntBits(Float.NaN);
    public static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;

    public static void writePcm32BitFloat(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == FLOAT_NAN_AS_INT) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean configure(int i, int i2, int i3) throws AudioProcessor.UnhandledFormatException {
        if (Util.isEncodingHighResolutionIntegerPcm(i3)) {
            return setInputFormat(i, i2, i3);
        }
        throw new AudioProcessor.UnhandledFormatException(i, i2, i3);
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public int getOutputEncoding() {
        return 4;
    }

    @Override // androidx.media2.exoplayer.external.audio.BaseAudioProcessor, androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean isActive() {
        return Util.isEncodingHighResolutionIntegerPcm(this.encoding);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        boolean z = this.encoding == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (!z) {
            i = (i / 3) * 4;
        }
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(i);
        if (z) {
            while (position < limit) {
                writePcm32BitFloat((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), replaceOutputBuffer);
                position += 4;
            }
        } else {
            for (int i2 = position; i2 < limit; i2 += 3) {
                writePcm32BitFloat(((byteBuffer.get(i2) & 255) << 8) | ((byteBuffer.get(i2 + 1) & 255) << 16) | ((byteBuffer.get(i2 + 2) & 255) << 24), replaceOutputBuffer);
            }
        }
        byteBuffer.position(byteBuffer.limit());
        replaceOutputBuffer.flip();
    }
}
