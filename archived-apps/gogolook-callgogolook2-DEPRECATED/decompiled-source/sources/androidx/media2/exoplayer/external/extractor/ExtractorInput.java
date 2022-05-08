package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ExtractorInput.class */
public interface ExtractorInput {
    void advancePeekPosition(int i) throws IOException, InterruptedException;

    boolean advancePeekPosition(int i, boolean z) throws IOException, InterruptedException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    boolean peekFully(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    boolean readFully(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    void resetPeekPosition();

    <E extends Throwable> void setRetryPosition(long j, E e) throws Throwable;

    int skip(int i) throws IOException, InterruptedException;

    void skipFully(int i) throws IOException, InterruptedException;

    boolean skipFully(int i, boolean z) throws IOException, InterruptedException;
}
