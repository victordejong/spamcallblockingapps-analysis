package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsUtil */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsUtil.class */
public final class TsUtil {
    public static int findSyncBytePosition(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long readPcrFromPacket(ParsableByteArray parsableByteArray, int i, int i2) {
        parsableByteArray.setPosition(i);
        if (parsableByteArray.bytesLeft() < 5) {
            return C0463C.TIME_UNSET;
        }
        int readInt = parsableByteArray.readInt();
        if ((8388608 & readInt) != 0 || ((2096896 & readInt) >> 8) != i2) {
            return C0463C.TIME_UNSET;
        }
        boolean z = true;
        if (!((readInt & 32) != 0) || parsableByteArray.readUnsignedByte() < 7 || parsableByteArray.bytesLeft() < 7) {
            return C0463C.TIME_UNSET;
        }
        if ((parsableByteArray.readUnsignedByte() & 16) != 16) {
            z = false;
        }
        if (!z) {
            return C0463C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        parsableByteArray.readBytes(bArr, 0, bArr.length);
        return readPcrValueFromPcrBytes(bArr);
    }

    public static long readPcrValueFromPcrBytes(byte[] bArr) {
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((255 & bArr[4]) >> 7);
    }
}
