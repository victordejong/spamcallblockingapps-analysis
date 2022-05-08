package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SampleStream.class */
public interface SampleStream {
    boolean isReady();

    void maybeThrowError() throws IOException;

    int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z);

    int skipData(long j);
}
