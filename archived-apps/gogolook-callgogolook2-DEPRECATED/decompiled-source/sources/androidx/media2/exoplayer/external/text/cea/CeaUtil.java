package androidx.media2.exoplayer.external.text.cea;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/CeaUtil.class */
public final class CeaUtil {
    public static final int COUNTRY_CODE = 181;
    public static final int PAYLOAD_TYPE_CC = 4;
    public static final int PROVIDER_CODE_ATSC = 49;
    public static final int PROVIDER_CODE_DIRECTV = 47;
    public static final String TAG = "CeaUtil";
    public static final int USER_DATA_IDENTIFIER_GA94 = 1195456820;
    public static final int USER_DATA_TYPE_CODE_MPEG_CC = 3;

    public static void consume(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int i;
        while (true) {
            boolean z = true;
            if (parsableByteArray.bytesLeft() > 1) {
                int readNon255TerminatedValue = readNon255TerminatedValue(parsableByteArray);
                int readNon255TerminatedValue2 = readNon255TerminatedValue(parsableByteArray);
                int position = parsableByteArray.getPosition() + readNon255TerminatedValue2;
                if (readNon255TerminatedValue2 == -1 || readNon255TerminatedValue2 > parsableByteArray.bytesLeft()) {
                    Log.m37483w(TAG, "Skipping remainder of malformed SEI NAL unit.");
                    i = parsableByteArray.limit();
                } else {
                    i = position;
                    if (readNon255TerminatedValue == 4) {
                        i = position;
                        if (readNon255TerminatedValue2 >= 8) {
                            int readUnsignedByte = parsableByteArray.readUnsignedByte();
                            int readUnsignedShort = parsableByteArray.readUnsignedShort();
                            int readInt = readUnsignedShort == 49 ? parsableByteArray.readInt() : 0;
                            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                            if (readUnsignedShort == 47) {
                                parsableByteArray.skipBytes(1);
                            }
                            boolean z2 = readUnsignedByte == 181 && (readUnsignedShort == 49 || readUnsignedShort == 47) && readUnsignedByte2 == 3;
                            boolean z3 = z2;
                            if (readUnsignedShort == 49) {
                                if (readInt != 1195456820) {
                                    z = false;
                                }
                                z3 = z2 & z;
                            }
                            i = position;
                            if (z3) {
                                consumeCcData(j, parsableByteArray, trackOutputArr);
                                i = position;
                            }
                        }
                    }
                }
                parsableByteArray.setPosition(i);
            } else {
                return;
            }
        }
    }

    public static void consumeCcData(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(1);
            int i = (readUnsignedByte & 31) * 3;
            int position = parsableByteArray.getPosition();
            for (TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.setPosition(position);
                trackOutput.sampleData(parsableByteArray, i);
                trackOutput.sampleMetadata(j, 1, i, 0, null);
            }
        }
    }

    public static int readNon255TerminatedValue(ParsableByteArray parsableByteArray) {
        int i = 0;
        while (parsableByteArray.bytesLeft() != 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i2 = i + readUnsignedByte;
            i = i2;
            if (readUnsignedByte != 255) {
                return i2;
            }
        }
        return -1;
    }
}
