package androidx.media2.exoplayer.external.extractor.mkv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/VarintReader.class */
public final class VarintReader {
    public static final int STATE_BEGIN_READING = 0;
    public static final int STATE_READ_CONTENTS = 1;
    public static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    public int length;
    public final byte[] scratch = new byte[8];
    public int state;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long assembleVarint(byte[] r7, int r8, boolean r9) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x001f
            r0 = r10
            long[] r1 = androidx.media2.exoplayer.external.extractor.mkv.VarintReader.VARINT_LENGTH_MASKS
            r2 = r8
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            r2 = -1
            long r1 = r1 ^ r2
            long r0 = r0 & r1
            r12 = r0
        L_0x001f:
            r0 = 1
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r8
            if (r0 >= r1) goto L_0x003f
            r0 = r12
            r1 = 8
            long r0 = r0 << r1
            r1 = r7
            r2 = r14
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            long r0 = r0 | r1
            r12 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x003f:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mkv.VarintReader.assembleVarint(byte[], int, boolean):long");
    }

    public static int parseUnsignedVarintLength(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = VARINT_LENGTH_MASKS;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    public int getLastLength() {
        return this.length;
    }

    public long readUnsignedVarint(ExtractorInput extractorInput, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.state == 0) {
            if (!extractorInput.readFully(this.scratch, 0, 1, z)) {
                return -1L;
            }
            this.length = parseUnsignedVarintLength(this.scratch[0] & 255);
            if (this.length != -1) {
                this.state = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.length;
        if (i2 > i) {
            this.state = 0;
            return -2L;
        }
        if (i2 != 1) {
            extractorInput.readFully(this.scratch, 1, i2 - 1);
        }
        this.state = 0;
        return assembleVarint(this.scratch, this.length, z2);
    }

    public void reset() {
        this.state = 0;
        this.length = 0;
    }
}
