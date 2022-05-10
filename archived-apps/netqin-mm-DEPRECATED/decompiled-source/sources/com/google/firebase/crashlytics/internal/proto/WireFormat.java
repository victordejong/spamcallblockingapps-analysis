package com.google.firebase.crashlytics.internal.proto;

import p131c.p161d.p282e.p289l.p290d.p299m.C5406a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/proto/WireFormat.class */
public final class WireFormat {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/proto/WireFormat$FieldType.class */
    public enum FieldType {
        DOUBLE(JavaType.DOUBLE, 1),
        FLOAT(JavaType.FLOAT, 5),
        INT64(JavaType.LONG, 0),
        UINT64(JavaType.LONG, 0),
        INT32(JavaType.INT, 0),
        FIXED64(JavaType.LONG, 1),
        FIXED32(JavaType.INT, 5),
        BOOL(JavaType.BOOLEAN, 0),
        STRING(JavaType.STRING, 2) { // from class: com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType.1
            @Override // com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        GROUP(JavaType.MESSAGE, 3) { // from class: com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType.2
            @Override // com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        MESSAGE(JavaType.MESSAGE, 2) { // from class: com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType.3
            @Override // com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        BYTES(JavaType.BYTE_STRING, 2) { // from class: com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType.4
            @Override // com.google.firebase.crashlytics.internal.proto.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        UINT32(JavaType.INT, 0),
        ENUM(JavaType.ENUM, 0),
        SFIXED32(JavaType.INT, 5),
        SFIXED64(JavaType.LONG, 1),
        SINT32(JavaType.INT, 0),
        SINT64(JavaType.LONG, 0);
        
        public final JavaType javaType;
        public final int wireType;

        FieldType(JavaType javaType, int i) {
            this.javaType = javaType;
            this.wireType = i;
        }

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/proto/WireFormat$JavaType.class */
    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(false),
        STRING(""),
        BYTE_STRING(C5406a.f18333c),
        ENUM(null),
        MESSAGE(null);
        
        public final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        public Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    static {
        m7366a(1, 3);
        m7366a(1, 4);
        m7366a(2, 0);
        m7366a(3, 2);
    }

    /* renamed from: a */
    public static int m7366a(int i, int i2) {
        return (i << 3) | i2;
    }
}
