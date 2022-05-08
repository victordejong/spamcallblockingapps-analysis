package androidx.media2.exoplayer.external.extractor.flv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/ScriptTagPayloadReader.class */
public final class ScriptTagPayloadReader extends TagPayloadReader {
    public static final int AMF_TYPE_BOOLEAN = 1;
    public static final int AMF_TYPE_DATE = 11;
    public static final int AMF_TYPE_ECMA_ARRAY = 8;
    public static final int AMF_TYPE_END_MARKER = 9;
    public static final int AMF_TYPE_NUMBER = 0;
    public static final int AMF_TYPE_OBJECT = 3;
    public static final int AMF_TYPE_STRICT_ARRAY = 10;
    public static final int AMF_TYPE_STRING = 2;
    public static final String KEY_DURATION = "duration";
    public static final String NAME_METADATA = "onMetaData";
    public long durationUs = C0463C.TIME_UNSET;

    public ScriptTagPayloadReader() {
        super(null);
    }

    public static Boolean readAmfBoolean(ParsableByteArray parsableByteArray) {
        boolean z = true;
        if (parsableByteArray.readUnsignedByte() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static Object readAmfData(ParsableByteArray parsableByteArray, int i) {
        if (i == 0) {
            return readAmfDouble(parsableByteArray);
        }
        if (i == 1) {
            return readAmfBoolean(parsableByteArray);
        }
        if (i == 2) {
            return readAmfString(parsableByteArray);
        }
        if (i == 3) {
            return readAmfObject(parsableByteArray);
        }
        if (i == 8) {
            return readAmfEcmaArray(parsableByteArray);
        }
        if (i == 10) {
            return readAmfStrictArray(parsableByteArray);
        }
        if (i != 11) {
            return null;
        }
        return readAmfDate(parsableByteArray);
    }

    public static Date readAmfDate(ParsableByteArray parsableByteArray) {
        Date date = new Date((long) readAmfDouble(parsableByteArray).doubleValue());
        parsableByteArray.skipBytes(2);
        return date;
    }

    public static Double readAmfDouble(ParsableByteArray parsableByteArray) {
        return Double.valueOf(Double.longBitsToDouble(parsableByteArray.readLong()));
    }

    public static HashMap<String, Object> readAmfEcmaArray(ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        HashMap<String, Object> hashMap = new HashMap<>(readUnsignedIntToInt);
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            hashMap.put(readAmfString(parsableByteArray), readAmfData(parsableByteArray, readAmfType(parsableByteArray)));
        }
        return hashMap;
    }

    public static HashMap<String, Object> readAmfObject(ParsableByteArray parsableByteArray) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String readAmfString = readAmfString(parsableByteArray);
            int readAmfType = readAmfType(parsableByteArray);
            if (readAmfType == 9) {
                return hashMap;
            }
            hashMap.put(readAmfString, readAmfData(parsableByteArray, readAmfType));
        }
    }

    public static ArrayList<Object> readAmfStrictArray(ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        ArrayList<Object> arrayList = new ArrayList<>(readUnsignedIntToInt);
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            arrayList.add(readAmfData(parsableByteArray, readAmfType(parsableByteArray)));
        }
        return arrayList;
    }

    public static String readAmfString(ParsableByteArray parsableByteArray) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(readUnsignedShort);
        return new String(parsableByteArray.data, position, readUnsignedShort);
    }

    public static int readAmfType(ParsableByteArray parsableByteArray) {
        return parsableByteArray.readUnsignedByte();
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    public boolean parseHeader(ParsableByteArray parsableByteArray) {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    public void parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException {
        if (readAmfType(parsableByteArray) != 2) {
            throw new ParserException();
        } else if (NAME_METADATA.equals(readAmfString(parsableByteArray)) && readAmfType(parsableByteArray) == 8) {
            HashMap<String, Object> readAmfEcmaArray = readAmfEcmaArray(parsableByteArray);
            if (readAmfEcmaArray.containsKey("duration")) {
                double doubleValue = ((Double) readAmfEcmaArray.get("duration")).doubleValue();
                if (doubleValue > 0.0d) {
                    this.durationUs = (long) (doubleValue * 1000000.0d);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    public void seek() {
    }
}
