package io.realm;

import io.realm.internal.Keep;
import java.nio.ByteBuffer;
import java.util.Date;
@Keep
/* loaded from: classes2-dex2jar.jar:io/realm/RealmFieldType.class */
public enum RealmFieldType {
    INTEGER(0),
    BOOLEAN(1),
    STRING(2),
    BINARY(4),
    DATE(8),
    FLOAT(9),
    DOUBLE(10),
    OBJECT(12),
    LIST(13),
    LINKING_OBJECTS(14),
    INTEGER_LIST(128),
    BOOLEAN_LIST(129),
    STRING_LIST(130),
    BINARY_LIST(132),
    DATE_LIST(136),
    FLOAT_LIST(137),
    DOUBLE_LIST(138);
    
    private static final RealmFieldType[] basicTypes = new RealmFieldType[15];
    private static final RealmFieldType[] listTypes = new RealmFieldType[15];
    private final int nativeValue;

    static {
        RealmFieldType[] values;
        for (RealmFieldType realmFieldType : values()) {
            int i = realmFieldType.nativeValue;
            if (i < 128) {
                basicTypes[i] = realmFieldType;
            } else {
                listTypes[i - 128] = realmFieldType;
            }
        }
    }

    RealmFieldType(int i) {
        this.nativeValue = i;
    }

    public static RealmFieldType fromNativeValue(int i) {
        int i2;
        RealmFieldType realmFieldType;
        RealmFieldType realmFieldType2;
        if (i >= 0 && i < basicTypes.length && (realmFieldType2 = basicTypes[i]) != null) {
            return realmFieldType2;
        }
        if (128 <= i && (i2 = i - 128) < listTypes.length && (realmFieldType = listTypes[i2]) != null) {
            return realmFieldType;
        }
        throw new IllegalArgumentException("Invalid native Realm type: " + i);
    }

    public int getNativeValue() {
        return this.nativeValue;
    }

    public boolean isValid(Object obj) {
        int i = this.nativeValue;
        if (i == 4) {
            boolean z = true;
            if (!(obj instanceof byte[])) {
                z = obj instanceof ByteBuffer;
            }
            return z;
        } else if (i == 132) {
            return false;
        } else {
            switch (i) {
                case 0:
                    boolean z2 = true;
                    if (!(obj instanceof Long)) {
                        z2 = true;
                        if (!(obj instanceof Integer)) {
                            z2 = true;
                            if (!(obj instanceof Short)) {
                                z2 = obj instanceof Byte;
                            }
                        }
                    }
                    return z2;
                case 1:
                    return obj instanceof Boolean;
                case 2:
                    return obj instanceof String;
                default:
                    switch (i) {
                        case 8:
                            return obj instanceof Date;
                        case 9:
                            return obj instanceof Float;
                        case 10:
                            return obj instanceof Double;
                        default:
                            switch (i) {
                                case 12:
                                    return false;
                                case 13:
                                    return false;
                                case 14:
                                    return false;
                                default:
                                    switch (i) {
                                        case 128:
                                            return false;
                                        case 129:
                                            return false;
                                        case 130:
                                            return false;
                                        default:
                                            switch (i) {
                                                case 136:
                                                    return false;
                                                case 137:
                                                    return false;
                                                case 138:
                                                    return false;
                                                default:
                                                    throw new RuntimeException("Unsupported Realm type:  " + this);
                                            }
                                    }
                            }
                    }
            }
        }
    }
}
