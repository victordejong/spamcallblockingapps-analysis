package androidx.media2.exoplayer.external.text;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.decoder.Decoder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/SubtitleDecoder.class */
public interface SubtitleDecoder extends Decoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> {
    void setPositionUs(long j);
}
