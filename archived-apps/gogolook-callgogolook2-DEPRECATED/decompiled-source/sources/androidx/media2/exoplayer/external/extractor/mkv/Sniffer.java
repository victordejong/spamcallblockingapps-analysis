package androidx.media2.exoplayer.external.extractor.mkv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/Sniffer.class */
public final class Sniffer {
    public static final int ID_EBML = 440786851;
    public static final int SEARCH_LENGTH = 1024;
    public int peekLength;
    public final ParsableByteArray scratch = new ParsableByteArray(8);

    private long readUint(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = 0;
        extractorInput.peekFully(this.scratch.data, 0, 1);
        int i2 = this.scratch.data[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        extractorInput.peekFully(this.scratch.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.scratch.data[i] & 255) + (i5 << 8);
        }
        this.peekLength += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mkv.Sniffer.sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }
}
