package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import androidx.media2.exoplayer.external.extractor.BinarySearchSeeker;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.PsBinarySearchSeeker */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker.class */
public final class PsBinarySearchSeeker extends BinarySearchSeeker {
    public static final int MINIMUM_SEARCH_RANGE_BYTES = 1000;
    public static final long SEEK_TOLERANCE_US = 100000;
    public static final int TIMESTAMP_SEARCH_BYTES = 20000;

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.PsBinarySearchSeeker$PsScrSeeker */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PsBinarySearchSeeker$PsScrSeeker.class */
    public static final class PsScrSeeker implements BinarySearchSeeker.TimestampSeeker {
        public final ParsableByteArray packetBuffer;
        public final TimestampAdjuster scrTimestampAdjuster;

        public PsScrSeeker(TimestampAdjuster timestampAdjuster) {
            this.scrTimestampAdjuster = timestampAdjuster;
            this.packetBuffer = new ParsableByteArray();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult searchForScrValueInBuffer(androidx.media2.exoplayer.external.util.ParsableByteArray r8, long r9, long r11) {
            /*
                r7 = this;
                r0 = -1
                r13 = r0
                r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                r14 = r0
                r0 = -1
                r16 = r0
            L_0x000b:
                r0 = r8
                int r0 = r0.bytesLeft()
                r1 = 4
                if (r0 < r1) goto L_0x00a7
                r0 = r8
                byte[] r0 = r0.data
                r1 = r8
                int r1 = r1.getPosition()
                int r0 = androidx.media2.exoplayer.external.extractor.p007ts.PsBinarySearchSeeker.access$100(r0, r1)
                r1 = 442(0x1ba, float:6.2E-43)
                if (r0 == r1) goto L_0x002c
                r0 = r8
                r1 = 1
                r0.skipBytes(r1)
                goto L_0x000b
            L_0x002c:
                r0 = r8
                r1 = 4
                r0.skipBytes(r1)
                r0 = r8
                long r0 = androidx.media2.exoplayer.external.extractor.p007ts.PsDurationReader.readScrValueFromPack(r0)
                r17 = r0
                r0 = r14
                r19 = r0
                r0 = r16
                r21 = r0
                r0 = r17
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0092
                r0 = r7
                androidx.media2.exoplayer.external.util.TimestampAdjuster r0 = r0.scrTimestampAdjuster
                r1 = r17
                long r0 = r0.adjustTsTimestamp(r1)
                r19 = r0
                r0 = r19
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0075
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006b
                r0 = r19
                r1 = r11
                androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult r0 = androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult.overestimatedResult(r0, r1)
                return r0
            L_0x006b:
                r0 = r11
                r1 = r16
                long r1 = (long) r1
                long r0 = r0 + r1
                androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult r0 = androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(r0)
                return r0
            L_0x0075:
                r0 = 100000(0x186a0, double:4.94066E-319)
                r1 = r19
                long r0 = r0 + r1
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x008c
                r0 = r11
                r1 = r8
                int r1 = r1.getPosition()
                long r1 = (long) r1
                long r0 = r0 + r1
                androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult r0 = androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(r0)
                return r0
            L_0x008c:
                r0 = r8
                int r0 = r0.getPosition()
                r21 = r0
            L_0x0092:
                r0 = r8
                skipToEndOfCurrentPack(r0)
                r0 = r8
                int r0 = r0.getPosition()
                r13 = r0
                r0 = r19
                r14 = r0
                r0 = r21
                r16 = r0
                goto L_0x000b
            L_0x00a7:
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00bc
                r0 = r14
                r1 = r11
                r2 = r13
                long r2 = (long) r2
                long r1 = r1 + r2
                androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult r0 = androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult.underestimatedResult(r0, r1)
                return r0
            L_0x00bc:
                androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult r0 = androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.PsBinarySearchSeeker.PsScrSeeker.searchForScrValueInBuffer(androidx.media2.exoplayer.external.util.ParsableByteArray, long, long):androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult");
        }

        public static void skipToEndOfCurrentPack(ParsableByteArray parsableByteArray) {
            int peekIntAtPosition;
            int limit = parsableByteArray.limit();
            if (parsableByteArray.bytesLeft() < 10) {
                parsableByteArray.setPosition(limit);
                return;
            }
            parsableByteArray.skipBytes(9);
            int readUnsignedByte = parsableByteArray.readUnsignedByte() & 7;
            if (parsableByteArray.bytesLeft() < readUnsignedByte) {
                parsableByteArray.setPosition(limit);
                return;
            }
            parsableByteArray.skipBytes(readUnsignedByte);
            if (parsableByteArray.bytesLeft() < 4) {
                parsableByteArray.setPosition(limit);
                return;
            }
            if (PsBinarySearchSeeker.peekIntAtPosition(parsableByteArray.data, parsableByteArray.getPosition()) == 443) {
                parsableByteArray.skipBytes(4);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                if (parsableByteArray.bytesLeft() < readUnsignedShort) {
                    parsableByteArray.setPosition(limit);
                    return;
                }
                parsableByteArray.skipBytes(readUnsignedShort);
            }
            while (parsableByteArray.bytesLeft() >= 4 && (peekIntAtPosition = PsBinarySearchSeeker.peekIntAtPosition(parsableByteArray.data, parsableByteArray.getPosition())) != 442 && peekIntAtPosition != 441 && (peekIntAtPosition >>> 8) == 1) {
                parsableByteArray.skipBytes(4);
                if (parsableByteArray.bytesLeft() < 2) {
                    parsableByteArray.setPosition(limit);
                    return;
                }
                parsableByteArray.setPosition(Math.min(parsableByteArray.limit(), parsableByteArray.getPosition() + parsableByteArray.readUnsignedShort()));
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.packetBuffer.reset(Util.EMPTY_BYTE_ARRAY);
        }

        @Override // androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j, BinarySearchSeeker.OutputFrameHolder outputFrameHolder) throws IOException, InterruptedException {
            long position = extractorInput.getPosition();
            int min = (int) Math.min((long) SilenceSkippingAudioProcessor.PADDING_SILENCE_US, extractorInput.getLength() - position);
            this.packetBuffer.reset(min);
            extractorInput.peekFully(this.packetBuffer.data, 0, min);
            return searchForScrValueInBuffer(this.packetBuffer, j, position);
        }
    }

    public PsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j, long j2) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new PsScrSeeker(timestampAdjuster), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    public static int peekIntAtPosition(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
