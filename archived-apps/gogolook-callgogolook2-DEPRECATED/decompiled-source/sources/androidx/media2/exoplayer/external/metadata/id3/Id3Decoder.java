package androidx.media2.exoplayer.external.metadata.id3;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataDecoder;
import androidx.media2.exoplayer.external.metadata.MetadataInputBuffer;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Decoder.class */
public final class Id3Decoder implements MetadataDecoder {
    public static final int FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER = 32;
    public static final int FRAME_FLAG_V3_IS_COMPRESSED = 128;
    public static final int FRAME_FLAG_V3_IS_ENCRYPTED = 64;
    public static final int FRAME_FLAG_V4_HAS_DATA_LENGTH = 1;
    public static final int FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER = 64;
    public static final int FRAME_FLAG_V4_IS_COMPRESSED = 8;
    public static final int FRAME_FLAG_V4_IS_ENCRYPTED = 4;
    public static final int FRAME_FLAG_V4_IS_UNSYNCHRONIZED = 2;
    public static final int ID3_HEADER_LENGTH = 10;
    public static final int ID3_TAG = 4801587;
    public static final int ID3_TEXT_ENCODING_ISO_8859_1 = 0;
    public static final int ID3_TEXT_ENCODING_UTF_16 = 1;
    public static final int ID3_TEXT_ENCODING_UTF_16BE = 2;
    public static final int ID3_TEXT_ENCODING_UTF_8 = 3;
    public static final FramePredicate NO_FRAMES_PREDICATE = Id3Decoder$$Lambda$0.$instance;
    public static final String TAG = "Id3Decoder";
    @Nullable
    public final FramePredicate framePredicate;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Decoder$FramePredicate.class */
    public interface FramePredicate {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Decoder$Id3Header.class */
    public static final class Id3Header {
        public final int framesSize;
        public final boolean isUnsynchronized;
        public final int majorVersion;

        public Id3Header(int i, boolean z, int i2) {
            this.majorVersion = i;
            this.isUnsynchronized = z;
            this.framesSize = i2;
        }
    }

    public Id3Decoder() {
        this(null);
    }

    public Id3Decoder(@Nullable FramePredicate framePredicate) {
        this.framePredicate = framePredicate;
    }

    public static byte[] copyOfRangeIfValid(byte[] bArr, int i, int i2) {
        return i2 <= i ? Util.EMPTY_BYTE_ARRAY : Arrays.copyOfRange(bArr, i, i2);
    }

    public static ApicFrame decodeApicFrame(ParsableByteArray parsableByteArray, int i, int i2) throws UnsupportedEncodingException {
        int i3;
        String str;
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        int i4 = i - 1;
        byte[] bArr = new byte[i4];
        parsableByteArray.readBytes(bArr, 0, i4);
        if (i2 == 2) {
            String valueOf = String.valueOf(Util.toLowerInvariant(new String(bArr, 0, 3, "ISO-8859-1")));
            String concat = valueOf.length() != 0 ? "image/".concat(valueOf) : new String("image/");
            str = concat;
            if ("image/jpg".equals(concat)) {
                str = "image/jpeg";
            }
            i3 = 2;
        } else {
            i3 = indexOfZeroByte(bArr, 0);
            String lowerInvariant = Util.toLowerInvariant(new String(bArr, 0, i3, "ISO-8859-1"));
            str = lowerInvariant;
            if (lowerInvariant.indexOf(47) == -1) {
                String valueOf2 = String.valueOf(lowerInvariant);
                str = valueOf2.length() != 0 ? "image/".concat(valueOf2) : new String("image/");
            }
        }
        byte b = bArr[i3 + 1];
        int i5 = i3 + 2;
        int indexOfEos = indexOfEos(bArr, i5, readUnsignedByte);
        return new ApicFrame(str, new String(bArr, i5, indexOfEos - i5, charsetName), b & 255, copyOfRangeIfValid(bArr, indexOfEos + delimiterLength(readUnsignedByte), bArr.length));
    }

    public static BinaryFrame decodeBinaryFrame(ParsableByteArray parsableByteArray, int i, String str) {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterFrame decodeChapterFrame(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, @Nullable FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int indexOfZeroByte = indexOfZeroByte(parsableByteArray.data, position);
        String str = new String(parsableByteArray.data, position, indexOfZeroByte - position, "ISO-8859-1");
        parsableByteArray.setPosition(indexOfZeroByte + 1);
        int readInt = parsableByteArray.readInt();
        int readInt2 = parsableByteArray.readInt();
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (readUnsignedInt == 4294967295L) {
            readUnsignedInt = -1;
        }
        long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
        if (readUnsignedInt2 == 4294967295L) {
            readUnsignedInt2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < position + i) {
            Id3Frame decodeFrame = decodeFrame(i2, parsableByteArray, z, i3, framePredicate);
            if (decodeFrame != null) {
                arrayList.add(decodeFrame);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, readInt, readInt2, readUnsignedInt, readUnsignedInt2, id3FrameArr);
    }

    public static ChapterTocFrame decodeChapterTOCFrame(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, @Nullable FramePredicate framePredicate) throws UnsupportedEncodingException {
        int position = parsableByteArray.getPosition();
        int indexOfZeroByte = indexOfZeroByte(parsableByteArray.data, position);
        String str = new String(parsableByteArray.data, position, indexOfZeroByte - position, "ISO-8859-1");
        parsableByteArray.setPosition(indexOfZeroByte + 1);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        boolean z2 = (readUnsignedByte & 2) != 0;
        boolean z3 = (readUnsignedByte & 1) != 0;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        String[] strArr = new String[readUnsignedByte2];
        for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
            int position2 = parsableByteArray.getPosition();
            int indexOfZeroByte2 = indexOfZeroByte(parsableByteArray.data, position2);
            strArr[i4] = new String(parsableByteArray.data, position2, indexOfZeroByte2 - position2, "ISO-8859-1");
            parsableByteArray.setPosition(indexOfZeroByte2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < position + i) {
            Id3Frame decodeFrame = decodeFrame(i2, parsableByteArray, z, i3, framePredicate);
            if (decodeFrame != null) {
                arrayList.add(decodeFrame);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    @Nullable
    public static CommentFrame decodeCommentFrame(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        byte[] bArr = new byte[3];
        parsableByteArray.readBytes(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        parsableByteArray.readBytes(bArr2, 0, i2);
        int indexOfEos = indexOfEos(bArr2, 0, readUnsignedByte);
        String str2 = new String(bArr2, 0, indexOfEos, charsetName);
        int delimiterLength = indexOfEos + delimiterLength(readUnsignedByte);
        return new CommentFrame(str, str2, decodeStringIfValid(bArr2, delimiterLength, indexOfEos(bArr2, delimiterLength, readUnsignedByte), charsetName));
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    public static Id3Frame decodeFrame(int i, ParsableByteArray parsableByteArray, boolean z, int i2, @Nullable FramePredicate framePredicate) {
        int readUnsignedIntToInt;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
        int readUnsignedByte4 = i >= 3 ? parsableByteArray.readUnsignedByte() : 0;
        if (i == 4) {
            int readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
            readUnsignedIntToInt = readUnsignedIntToInt2;
            if (!z) {
                readUnsignedIntToInt = (((readUnsignedIntToInt2 >> 24) & 255) << 21) | (readUnsignedIntToInt2 & 255) | (((readUnsignedIntToInt2 >> 8) & 255) << 7) | (((readUnsignedIntToInt2 >> 16) & 255) << 14);
            }
        } else {
            readUnsignedIntToInt = i == 3 ? parsableByteArray.readUnsignedIntToInt() : parsableByteArray.readUnsignedInt24();
        }
        int readUnsignedShort = i >= 3 ? parsableByteArray.readUnsignedShort() : 0;
        if (readUnsignedByte == 0 && readUnsignedByte2 == 0 && readUnsignedByte3 == 0 && readUnsignedByte4 == 0 && readUnsignedIntToInt == 0 && readUnsignedShort == 0) {
            parsableByteArray.setPosition(parsableByteArray.limit());
            return null;
        }
        int position = parsableByteArray.getPosition() + readUnsignedIntToInt;
        if (position > parsableByteArray.limit()) {
            Log.m37483w(TAG, "Frame size exceeds remaining tag data");
            parsableByteArray.setPosition(parsableByteArray.limit());
            return null;
        } else if (framePredicate == null || framePredicate.evaluate(i, readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readUnsignedByte4)) {
            if (i == 3) {
                z5 = (readUnsignedShort & 128) != 0;
                z3 = (readUnsignedShort & 64) != 0;
                z2 = (readUnsignedShort & 32) != 0;
                z4 = z5;
                z6 = false;
            } else if (i == 4) {
                z2 = (readUnsignedShort & 64) != 0;
                z4 = (readUnsignedShort & 8) != 0;
                z3 = (readUnsignedShort & 4) != 0;
                z6 = (readUnsignedShort & 2) != 0;
                z5 = (readUnsignedShort & 1) != 0;
            } else {
                z2 = false;
                z5 = false;
                z3 = false;
                z6 = false;
                z4 = false;
            }
            if (z4 || z3) {
                Log.m37483w(TAG, "Skipping unsupported compressed or encrypted frame");
                parsableByteArray.setPosition(position);
                return null;
            }
            int i3 = readUnsignedIntToInt;
            if (z2) {
                i3 = readUnsignedIntToInt - 1;
                parsableByteArray.skipBytes(1);
            }
            int i4 = i3;
            if (z5) {
                i4 = i3 - 4;
                parsableByteArray.skipBytes(4);
            }
            int i5 = i4;
            if (z6) {
                i5 = removeUnsynchronization(parsableByteArray, i4);
            }
            try {
                try {
                    Id3Frame decodeTxxxFrame = (readUnsignedByte == 84 && readUnsignedByte2 == 88 && readUnsignedByte3 == 88 && (i == 2 || readUnsignedByte4 == 88)) ? decodeTxxxFrame(parsableByteArray, i5) : readUnsignedByte == 84 ? decodeTextInformationFrame(parsableByteArray, i5, getFrameId(i, readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readUnsignedByte4)) : (readUnsignedByte == 87 && readUnsignedByte2 == 88 && readUnsignedByte3 == 88 && (i == 2 || readUnsignedByte4 == 88)) ? decodeWxxxFrame(parsableByteArray, i5) : readUnsignedByte == 87 ? decodeUrlLinkFrame(parsableByteArray, i5, getFrameId(i, readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readUnsignedByte4)) : (readUnsignedByte == 80 && readUnsignedByte2 == 82 && readUnsignedByte3 == 73 && readUnsignedByte4 == 86) ? decodePrivFrame(parsableByteArray, i5) : (readUnsignedByte == 71 && readUnsignedByte2 == 69 && readUnsignedByte3 == 79 && (readUnsignedByte4 == 66 || i == 2)) ? decodeGeobFrame(parsableByteArray, i5) : (i != 2 ? !(readUnsignedByte == 65 && readUnsignedByte2 == 80 && readUnsignedByte3 == 73 && readUnsignedByte4 == 67) : !(readUnsignedByte == 80 && readUnsignedByte2 == 73 && readUnsignedByte3 == 67)) ? (readUnsignedByte == 67 && readUnsignedByte2 == 79 && readUnsignedByte3 == 77 && (readUnsignedByte4 == 77 || i == 2)) ? decodeCommentFrame(parsableByteArray, i5) : (readUnsignedByte == 67 && readUnsignedByte2 == 72 && readUnsignedByte3 == 65 && readUnsignedByte4 == 80) ? decodeChapterFrame(parsableByteArray, i5, i, z, i2, framePredicate) : (readUnsignedByte == 67 && readUnsignedByte2 == 84 && readUnsignedByte3 == 79 && readUnsignedByte4 == 67) ? decodeChapterTOCFrame(parsableByteArray, i5, i, z, i2, framePredicate) : (readUnsignedByte == 77 && readUnsignedByte2 == 76 && readUnsignedByte3 == 76 && readUnsignedByte4 == 84) ? decodeMlltFrame(parsableByteArray, i5) : decodeBinaryFrame(parsableByteArray, i5, getFrameId(i, readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readUnsignedByte4)) : decodeApicFrame(parsableByteArray, i5, i);
                    if (decodeTxxxFrame == null) {
                        String frameId = getFrameId(i, readUnsignedByte, readUnsignedByte2, readUnsignedByte3, readUnsignedByte4);
                        StringBuilder sb = new StringBuilder(String.valueOf(frameId).length() + 50);
                        sb.append("Failed to decode frame: id=");
                        sb.append(frameId);
                        sb.append(", frameSize=");
                        sb.append(i5);
                        Log.m37483w(TAG, sb.toString());
                    }
                    parsableByteArray.setPosition(position);
                    return decodeTxxxFrame;
                } catch (UnsupportedEncodingException e) {
                    Log.m37483w(TAG, "Unsupported character encoding");
                    parsableByteArray.setPosition(position);
                    return null;
                }
            } catch (Throwable th) {
                parsableByteArray.setPosition(position);
                throw th;
            }
        } else {
            parsableByteArray.setPosition(position);
            return null;
        }
    }

    public static GeobFrame decodeGeobFrame(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int indexOfZeroByte = indexOfZeroByte(bArr, 0);
        String str = new String(bArr, 0, indexOfZeroByte, "ISO-8859-1");
        int i3 = indexOfZeroByte + 1;
        int indexOfEos = indexOfEos(bArr, i3, readUnsignedByte);
        String decodeStringIfValid = decodeStringIfValid(bArr, i3, indexOfEos, charsetName);
        int delimiterLength = indexOfEos + delimiterLength(readUnsignedByte);
        int indexOfEos2 = indexOfEos(bArr, delimiterLength, readUnsignedByte);
        return new GeobFrame(str, decodeStringIfValid, decodeStringIfValid(bArr, delimiterLength, indexOfEos2, charsetName), copyOfRangeIfValid(bArr, indexOfEos2 + delimiterLength(readUnsignedByte), bArr.length));
    }

    @Nullable
    public static Id3Header decodeHeader(ParsableByteArray parsableByteArray) {
        int i;
        if (parsableByteArray.bytesLeft() < 10) {
            Log.m37483w(TAG, "Data too short to be an ID3 tag");
            return null;
        }
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        if (readUnsignedInt24 != 4801587) {
            StringBuilder sb = new StringBuilder(59);
            sb.append("Unexpected first three bytes of ID3 tag header: ");
            sb.append(readUnsignedInt24);
            Log.m37483w(TAG, sb.toString());
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        boolean z = true;
        parsableByteArray.skipBytes(1);
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
        if (readUnsignedByte == 2) {
            i = readSynchSafeInt;
            if ((readUnsignedByte2 & 64) != 0) {
                Log.m37483w(TAG, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (readUnsignedByte == 3) {
            i = readSynchSafeInt;
            if ((readUnsignedByte2 & 64) != 0) {
                int readInt = parsableByteArray.readInt();
                parsableByteArray.skipBytes(readInt);
                i = readSynchSafeInt - (readInt + 4);
            }
        } else if (readUnsignedByte == 4) {
            int i2 = readSynchSafeInt;
            if ((readUnsignedByte2 & 64) != 0) {
                int readSynchSafeInt2 = parsableByteArray.readSynchSafeInt();
                parsableByteArray.skipBytes(readSynchSafeInt2 - 4);
                i2 = readSynchSafeInt - readSynchSafeInt2;
            }
            i = i2;
            if ((readUnsignedByte2 & 16) != 0) {
                i = i2 - 10;
            }
        } else {
            StringBuilder sb2 = new StringBuilder(57);
            sb2.append("Skipped ID3 tag with unsupported majorVersion=");
            sb2.append(readUnsignedByte);
            Log.m37483w(TAG, sb2.toString());
            return null;
        }
        if (readUnsignedByte >= 4 || (readUnsignedByte2 & 128) == 0) {
            z = false;
        }
        return new Id3Header(readUnsignedByte, z, i);
    }

    public static MlltFrame decodeMlltFrame(ParsableByteArray parsableByteArray, int i) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
        int readUnsignedInt242 = parsableByteArray.readUnsignedInt24();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i2 = ((i - 10) * 8) / (readUnsignedByte + readUnsignedByte2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int readBits = parsableBitArray.readBits(readUnsignedByte);
            int readBits2 = parsableBitArray.readBits(readUnsignedByte2);
            iArr[i3] = readBits;
            iArr2[i3] = readBits2;
        }
        return new MlltFrame(readUnsignedShort, readUnsignedInt24, readUnsignedInt242, iArr, iArr2);
    }

    public static PrivFrame decodePrivFrame(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        int indexOfZeroByte = indexOfZeroByte(bArr, 0);
        return new PrivFrame(new String(bArr, 0, indexOfZeroByte, "ISO-8859-1"), copyOfRangeIfValid(bArr, indexOfZeroByte + 1, bArr.length));
    }

    public static String decodeStringIfValid(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    @Nullable
    public static TextInformationFrame decodeTextInformationFrame(ParsableByteArray parsableByteArray, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, indexOfEos(bArr, 0, readUnsignedByte), charsetName));
    }

    @Nullable
    public static TextInformationFrame decodeTxxxFrame(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int indexOfEos = indexOfEos(bArr, 0, readUnsignedByte);
        String str = new String(bArr, 0, indexOfEos, charsetName);
        int delimiterLength = indexOfEos + delimiterLength(readUnsignedByte);
        return new TextInformationFrame("TXXX", str, decodeStringIfValid(bArr, delimiterLength, indexOfEos(bArr, delimiterLength, readUnsignedByte), charsetName));
    }

    public static UrlLinkFrame decodeUrlLinkFrame(ParsableByteArray parsableByteArray, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, indexOfZeroByte(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    public static UrlLinkFrame decodeWxxxFrame(ParsableByteArray parsableByteArray, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        String charsetName = getCharsetName(readUnsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int indexOfEos = indexOfEos(bArr, 0, readUnsignedByte);
        String str = new String(bArr, 0, indexOfEos, charsetName);
        int delimiterLength = indexOfEos + delimiterLength(readUnsignedByte);
        return new UrlLinkFrame("WXXX", str, decodeStringIfValid(bArr, delimiterLength, indexOfZeroByte(bArr, delimiterLength), "ISO-8859-1"));
    }

    public static int delimiterLength(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static String getCharsetName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : C0463C.UTF16_NAME;
    }

    public static String getFrameId(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static int indexOfEos(byte[] bArr, int i, int i2) {
        int indexOfZeroByte = indexOfZeroByte(bArr, i);
        if (i2 != 0) {
            int i3 = indexOfZeroByte;
            if (i2 != 3) {
                while (i3 < bArr.length - 1) {
                    if (i3 % 2 == 0 && bArr[i3 + 1] == 0) {
                        return i3;
                    }
                    i3 = indexOfZeroByte(bArr, i3 + 1);
                }
                return bArr.length;
            }
        }
        return indexOfZeroByte;
    }

    public static int indexOfZeroByte(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static final /* synthetic */ boolean lambda$static$0$Id3Decoder(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public static int removeUnsynchronization(ParsableByteArray parsableByteArray, int i) {
        byte[] bArr = parsableByteArray.data;
        int position = parsableByteArray.getPosition();
        int i2 = position;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= position + i) {
                return i;
            }
            i = i;
            if ((bArr[i2] & 255) == 255) {
                i = i;
                if (bArr[i3] == 0) {
                    System.arraycopy(bArr, i2 + 2, bArr, i3, (i - (i2 - position)) - 2);
                    i--;
                }
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cd, code lost:
        if ((r18 & 1) != 0) goto L_0x00d0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fe, code lost:
        if ((r18 & 128) != 0) goto L_0x00d0;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean validateFrames(androidx.media2.exoplayer.external.util.ParsableByteArray r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.metadata.id3.Id3Decoder.validateFrames(androidx.media2.exoplayer.external.util.ParsableByteArray, int, int, boolean):boolean");
    }

    @Override // androidx.media2.exoplayer.external.metadata.MetadataDecoder
    @Nullable
    public Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = metadataInputBuffer.data;
        return decode(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public Metadata decode(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
        Id3Header decodeHeader = decodeHeader(parsableByteArray);
        if (decodeHeader == null) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        int i2 = decodeHeader.majorVersion == 2 ? 6 : 10;
        int i3 = decodeHeader.framesSize;
        if (decodeHeader.isUnsynchronized) {
            i3 = removeUnsynchronization(parsableByteArray, decodeHeader.framesSize);
        }
        parsableByteArray.setLimit(position + i3);
        boolean z = false;
        if (!validateFrames(parsableByteArray, decodeHeader.majorVersion, i2, false)) {
            if (decodeHeader.majorVersion != 4 || !validateFrames(parsableByteArray, 4, i2, true)) {
                int i4 = decodeHeader.majorVersion;
                StringBuilder sb = new StringBuilder(56);
                sb.append("Failed to validate ID3 tag with majorVersion=");
                sb.append(i4);
                Log.m37483w(TAG, sb.toString());
                return null;
            }
            z = true;
        }
        while (parsableByteArray.bytesLeft() >= i2) {
            Id3Frame decodeFrame = decodeFrame(decodeHeader.majorVersion, parsableByteArray, z, i2, this.framePredicate);
            if (decodeFrame != null) {
                arrayList.add(decodeFrame);
            }
        }
        return new Metadata(arrayList);
    }
}
