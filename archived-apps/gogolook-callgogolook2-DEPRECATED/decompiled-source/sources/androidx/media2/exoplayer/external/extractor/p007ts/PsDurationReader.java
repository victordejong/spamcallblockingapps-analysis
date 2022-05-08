package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.PsDurationReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PsDurationReader.class */
public final class PsDurationReader {
    public static final int TIMESTAMP_SEARCH_BYTES = 20000;
    public boolean isDurationRead;
    public boolean isFirstScrValueRead;
    public boolean isLastScrValueRead;
    public final TimestampAdjuster scrTimestampAdjuster = new TimestampAdjuster(0);
    public long firstScrValue = C0463C.TIME_UNSET;
    public long lastScrValue = C0463C.TIME_UNSET;
    public long durationUs = C0463C.TIME_UNSET;
    public final ParsableByteArray packetBuffer = new ParsableByteArray();

    public static boolean checkMarkerBits(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1) {
            return false;
        }
        if ((bArr[8] & 3) == 3) {
            z = true;
        }
        return z;
    }

    private int finishReadDuration(ExtractorInput extractorInput) {
        this.packetBuffer.reset(Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int peekIntAtPosition(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    private int readFirstScrValue(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        int min = (int) Math.min((long) SilenceSkippingAudioProcessor.PADDING_SILENCE_US, extractorInput.getLength());
        long j = 0;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.data, 0, min);
        this.firstScrValue = readFirstScrValueFromBuffer(this.packetBuffer);
        this.isFirstScrValueRead = true;
        return 0;
    }

    private long readFirstScrValueFromBuffer(ParsableByteArray parsableByteArray) {
        int limit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < limit - 3; position++) {
            if (peekIntAtPosition(parsableByteArray.data, position) == 442) {
                parsableByteArray.setPosition(position + 4);
                long readScrValueFromPack = readScrValueFromPack(parsableByteArray);
                if (readScrValueFromPack != C0463C.TIME_UNSET) {
                    return readScrValueFromPack;
                }
            }
        }
        return C0463C.TIME_UNSET;
    }

    private int readLastScrValue(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        int min = (int) Math.min((long) SilenceSkippingAudioProcessor.PADDING_SILENCE_US, length);
        long j = length - min;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.data, 0, min);
        this.lastScrValue = readLastScrValueFromBuffer(this.packetBuffer);
        this.isLastScrValueRead = true;
        return 0;
    }

    private long readLastScrValueFromBuffer(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        for (int limit = parsableByteArray.limit() - 4; limit >= position; limit--) {
            if (peekIntAtPosition(parsableByteArray.data, limit) == 442) {
                parsableByteArray.setPosition(limit + 4);
                long readScrValueFromPack = readScrValueFromPack(parsableByteArray);
                if (readScrValueFromPack != C0463C.TIME_UNSET) {
                    return readScrValueFromPack;
                }
            }
        }
        return C0463C.TIME_UNSET;
    }

    public static long readScrValueFromPack(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        if (parsableByteArray.bytesLeft() < 9) {
            return C0463C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.readBytes(bArr, 0, bArr.length);
        parsableByteArray.setPosition(position);
        return !checkMarkerBits(bArr) ? C0463C.TIME_UNSET : readScrValueFromPackHeader(bArr);
    }

    public static long readScrValueFromPackHeader(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public TimestampAdjuster getScrTimestampAdjuster() {
        return this.scrTimestampAdjuster;
    }

    public boolean isDurationReadFinished() {
        return this.isDurationRead;
    }

    public int readDuration(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (!this.isLastScrValueRead) {
            return readLastScrValue(extractorInput, positionHolder);
        }
        if (this.lastScrValue == C0463C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isFirstScrValueRead) {
            return readFirstScrValue(extractorInput, positionHolder);
        }
        long j = this.firstScrValue;
        if (j == C0463C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        this.durationUs = this.scrTimestampAdjuster.adjustTsTimestamp(this.lastScrValue) - this.scrTimestampAdjuster.adjustTsTimestamp(j);
        return finishReadDuration(extractorInput);
    }
}
