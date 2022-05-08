package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.PesReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/PesReader.class */
public final class PesReader implements TsPayloadReader {
    public static final int HEADER_SIZE = 9;
    public static final int MAX_HEADER_EXTENSION_SIZE = 10;
    public static final int PES_SCRATCH_SIZE = 10;
    public static final int STATE_FINDING_HEADER = 0;
    public static final int STATE_READING_BODY = 3;
    public static final int STATE_READING_HEADER = 1;
    public static final int STATE_READING_HEADER_EXTENSION = 2;
    public static final String TAG = "PesReader";
    public int bytesRead;
    public boolean dataAlignmentIndicator;
    public boolean dtsFlag;
    public int extendedHeaderLength;
    public int payloadSize;
    public boolean ptsFlag;
    public final ElementaryStreamReader reader;
    public boolean seenFirstDts;
    public long timeUs;
    public TimestampAdjuster timestampAdjuster;
    public final ParsableBitArray pesScratch = new ParsableBitArray(new byte[10]);
    public int state = 0;

    public PesReader(ElementaryStreamReader elementaryStreamReader) {
        this.reader = elementaryStreamReader;
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.skipBytes(min);
        } else {
            parsableByteArray.readBytes(bArr, this.bytesRead, min);
        }
        this.bytesRead += min;
        if (this.bytesRead != i) {
            z = false;
        }
        return z;
    }

    private boolean parseHeader() {
        this.pesScratch.setPosition(0);
        int readBits = this.pesScratch.readBits(24);
        if (readBits != 1) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Unexpected start code prefix: ");
            sb.append(readBits);
            Log.m37483w(TAG, sb.toString());
            this.payloadSize = -1;
            return false;
        }
        this.pesScratch.skipBits(8);
        int readBits2 = this.pesScratch.readBits(16);
        this.pesScratch.skipBits(5);
        this.dataAlignmentIndicator = this.pesScratch.readBit();
        this.pesScratch.skipBits(2);
        this.ptsFlag = this.pesScratch.readBit();
        this.dtsFlag = this.pesScratch.readBit();
        this.pesScratch.skipBits(6);
        this.extendedHeaderLength = this.pesScratch.readBits(8);
        if (readBits2 == 0) {
            this.payloadSize = -1;
            return true;
        }
        this.payloadSize = ((readBits2 + 6) - 9) - this.extendedHeaderLength;
        return true;
    }

    private void parseHeaderExtension() {
        this.pesScratch.setPosition(0);
        this.timeUs = C0463C.TIME_UNSET;
        if (this.ptsFlag) {
            this.pesScratch.skipBits(4);
            long readBits = this.pesScratch.readBits(3);
            this.pesScratch.skipBits(1);
            long readBits2 = this.pesScratch.readBits(15) << 15;
            this.pesScratch.skipBits(1);
            long readBits3 = this.pesScratch.readBits(15);
            this.pesScratch.skipBits(1);
            if (!this.seenFirstDts && this.dtsFlag) {
                this.pesScratch.skipBits(4);
                long readBits4 = this.pesScratch.readBits(3);
                this.pesScratch.skipBits(1);
                long readBits5 = this.pesScratch.readBits(15) << 15;
                this.pesScratch.skipBits(1);
                long readBits6 = this.pesScratch.readBits(15);
                this.pesScratch.skipBits(1);
                this.timestampAdjuster.adjustTsTimestamp((readBits4 << 30) | readBits5 | readBits6);
                this.seenFirstDts = true;
            }
            this.timeUs = this.timestampAdjuster.adjustTsTimestamp((readBits << 30) | readBits2 | readBits3);
        }
    }

    private void setState(int i) {
        this.state = i;
        this.bytesRead = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader
    public final void consume(ParsableByteArray parsableByteArray, int i) throws ParserException {
        int i2 = i;
        if ((i & 1) != 0) {
            int i3 = this.state;
            if (!(i3 == 0 || i3 == 1)) {
                if (i3 == 2) {
                    Log.m37483w(TAG, "Unexpected start indicator reading extended header");
                } else if (i3 == 3) {
                    int i4 = this.payloadSize;
                    if (i4 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i4);
                        sb.append(" more bytes");
                        Log.m37483w(TAG, sb.toString());
                    }
                    this.reader.packetFinished();
                } else {
                    throw new IllegalStateException();
                }
            }
            setState(1);
            i2 = i;
        }
        while (parsableByteArray.bytesLeft() > 0) {
            int i5 = this.state;
            if (i5 != 0) {
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                if (i5 != 1) {
                    if (i5 == 2) {
                        if (continueRead(parsableByteArray, this.pesScratch.data, Math.min(10, this.extendedHeaderLength)) && continueRead(parsableByteArray, null, this.extendedHeaderLength)) {
                            parseHeaderExtension();
                            if (this.dataAlignmentIndicator) {
                                i6 = 4;
                            }
                            i2 |= i6;
                            this.reader.packetStarted(this.timeUs, i2);
                            setState(3);
                        }
                    } else if (i5 == 3) {
                        int bytesLeft = parsableByteArray.bytesLeft();
                        int i9 = this.payloadSize;
                        if (i9 != -1) {
                            i8 = bytesLeft - i9;
                        }
                        int i10 = bytesLeft;
                        if (i8 > 0) {
                            i10 = bytesLeft - i8;
                            parsableByteArray.setLimit(parsableByteArray.getPosition() + i10);
                        }
                        this.reader.consume(parsableByteArray);
                        int i11 = this.payloadSize;
                        if (i11 != -1) {
                            this.payloadSize = i11 - i10;
                            if (this.payloadSize == 0) {
                                this.reader.packetFinished();
                                setState(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (continueRead(parsableByteArray, this.pesScratch.data, 9)) {
                    if (parseHeader()) {
                        i7 = 2;
                    }
                    setState(i7);
                }
            } else {
                parsableByteArray.skipBytes(parsableByteArray.bytesLeft());
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader
    public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        this.reader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader
    public final void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.seenFirstDts = false;
        this.reader.seek();
    }
}
