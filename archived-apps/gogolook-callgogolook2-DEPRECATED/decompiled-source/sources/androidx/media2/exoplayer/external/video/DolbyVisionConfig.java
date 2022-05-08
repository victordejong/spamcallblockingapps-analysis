package androidx.media2.exoplayer.external.video;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/DolbyVisionConfig.class */
public final class DolbyVisionConfig {
    public final String codecs;
    public final int level;
    public final int profile;

    public DolbyVisionConfig(int i, int i2, String str) {
        this.profile = i;
        this.level = i2;
        this.codecs = str;
    }

    @Nullable
    public static DolbyVisionConfig parse(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte >> 1;
        int readUnsignedByte2 = ((parsableByteArray.readUnsignedByte() >> 3) & 31) | ((readUnsignedByte & 1) << 5);
        if (i == 4 || i == 5) {
            str = MediaCodecUtil.CODEC_ID_DVHE;
        } else if (i == 8) {
            str = MediaCodecUtil.CODEC_ID_HEV1;
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder(str.length() + 26);
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(".0");
        sb.append(readUnsignedByte2);
        return new DolbyVisionConfig(i, readUnsignedByte2, sb.toString());
    }
}
