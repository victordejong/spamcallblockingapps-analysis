package com.privacystar.core.data.offender;

import android.support.p001v4.app.FrameMetricsAggregator;
import android.support.p001v4.view.ViewCompat;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import kotlin.jvm.internal.ShortCompanionObject;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/BinaryFormatter.class */
public final class BinaryFormatter {
    private static final char[] shortMask = {0, 1, 3, 7, 15, 31, '?', 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    private static final int[] intMask = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, FOAnalyticsConstants.ACTIVATION_VERIFICATION_ERROR_CODE, 2047, 4095, 8191, 16383, ShortCompanionObject.MAX_VALUE, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, ViewCompat.MEASURED_SIZE_MASK, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, Integer.MAX_VALUE, -1};

    private static final int deserializeInt(byte[] bArr, int i) {
        return unsigned(bArr[i + 3]) | (unsigned(bArr[i]) << 24) | (unsigned(bArr[i + 1]) << 16) | (unsigned(bArr[i + 2]) << 8);
    }

    private static final int deserializeInt(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        switch (i2) {
            case 4:
                i6 = 0 | unsigned(bArr[i + 3]);
            case 3:
                i3 = i6 | (unsigned(bArr[i + 2]) << 8);
            case 2:
                i4 = i3 | (unsigned(bArr[i + 1]) << 16);
            case 1:
                i5 = i4 | (unsigned(bArr[i]) << 24);
                break;
        }
        return i5;
    }

    private static final char deserializeShort(byte[] bArr, int i) {
        return (char) (unsigned(bArr[i + 1]) | (unsigned(bArr[i]) << 8));
    }

    public static final byte getByte(byte[] bArr, int i, int i2, int i3) {
        return (byte) (((byte) (bArr[i] >>> ((8 - i2) - i3))) & shortMask[i3]);
    }

    public static final int getInt(byte[] bArr, int i, int i2, int i3) {
        return (deserializeInt(bArr, i) >>> ((32 - i2) - i3)) & intMask[i3];
    }

    public static final int getPartialInt(byte[] bArr, int i, int i2, int i3, int i4) {
        return (deserializeInt(bArr, i, i4) >>> ((32 - i2) - i3)) & intMask[i3];
    }

    public static final char getShort(byte[] bArr, int i, int i2, int i3) {
        return (char) (((char) (deserializeShort(bArr, i) >>> ((16 - i2) - i3))) & shortMask[i3]);
    }

    private static final void serialize(byte[] bArr, int i, char c) {
        bArr[i] = (byte) (c >>> '\b');
        bArr[i + 1] = (byte) c;
    }

    private static final void serialize(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 24);
        bArr[i + 1] = (byte) (i2 >>> 16);
        bArr[i + 2] = (byte) (i2 >>> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static final void setByte(byte[] bArr, int i, int i2, int i3, byte b) {
        byte b2 = bArr[i];
        char c = shortMask[i3];
        int i4 = (8 - i2) - i3;
        bArr[i] = (byte) (((shortMask[i3] & b) << i4) | ((byte) (b2 & ((c << i4) ^ (-1)))));
    }

    public static final void setInt(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = (32 - i2) - i3;
        serialize(bArr, i, ((intMask[i3] & i4) << i5) | (deserializeInt(bArr, i) & ((intMask[i3] << i5) ^ (-1))));
    }

    public static final void setShort(byte[] bArr, int i, int i2, int i3, char c) {
        char deserializeShort = deserializeShort(bArr, i);
        char c2 = shortMask[i3];
        int i4 = (16 - i2) - i3;
        serialize(bArr, i, (char) (((shortMask[i3] & c) << i4) | ((char) (deserializeShort & ((c2 << i4) ^ (-1))))));
    }

    public static final int unsigned(byte b) {
        return b & 255;
    }

    public static final int unsigned(char c) {
        return c & 65535;
    }

    public static final long unsigned(int i) {
        return i & BodyPartID.bodyIdMax;
    }
}
