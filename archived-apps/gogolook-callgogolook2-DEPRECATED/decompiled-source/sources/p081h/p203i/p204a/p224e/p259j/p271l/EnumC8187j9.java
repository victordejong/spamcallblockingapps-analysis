package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.j9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j9.class */
public enum EnumC8187j9 {
    DOUBLE(0, EnumC8210k9.SCALAR, EnumC8429w9.DOUBLE),
    FLOAT(1, EnumC8210k9.SCALAR, EnumC8429w9.FLOAT),
    INT64(2, EnumC8210k9.SCALAR, EnumC8429w9.LONG),
    UINT64(3, EnumC8210k9.SCALAR, EnumC8429w9.LONG),
    INT32(4, EnumC8210k9.SCALAR, EnumC8429w9.INT),
    FIXED64(5, EnumC8210k9.SCALAR, EnumC8429w9.LONG),
    FIXED32(6, EnumC8210k9.SCALAR, EnumC8429w9.INT),
    BOOL(7, EnumC8210k9.SCALAR, EnumC8429w9.BOOLEAN),
    STRING(8, EnumC8210k9.SCALAR, EnumC8429w9.STRING),
    MESSAGE(9, EnumC8210k9.SCALAR, EnumC8429w9.MESSAGE),
    BYTES(10, EnumC8210k9.SCALAR, EnumC8429w9.BYTE_STRING),
    UINT32(11, EnumC8210k9.SCALAR, EnumC8429w9.INT),
    ENUM(12, EnumC8210k9.SCALAR, EnumC8429w9.ENUM),
    SFIXED32(13, EnumC8210k9.SCALAR, EnumC8429w9.INT),
    SFIXED64(14, EnumC8210k9.SCALAR, EnumC8429w9.LONG),
    SINT32(15, EnumC8210k9.SCALAR, EnumC8429w9.INT),
    SINT64(16, EnumC8210k9.SCALAR, EnumC8429w9.LONG),
    GROUP(17, EnumC8210k9.SCALAR, EnumC8429w9.MESSAGE),
    DOUBLE_LIST(18, EnumC8210k9.VECTOR, EnumC8429w9.DOUBLE),
    FLOAT_LIST(19, EnumC8210k9.VECTOR, EnumC8429w9.FLOAT),
    INT64_LIST(20, EnumC8210k9.VECTOR, EnumC8429w9.LONG),
    UINT64_LIST(21, EnumC8210k9.VECTOR, EnumC8429w9.LONG),
    INT32_LIST(22, EnumC8210k9.VECTOR, EnumC8429w9.INT),
    FIXED64_LIST(23, EnumC8210k9.VECTOR, EnumC8429w9.LONG),
    FIXED32_LIST(24, EnumC8210k9.VECTOR, EnumC8429w9.INT),
    BOOL_LIST(25, EnumC8210k9.VECTOR, EnumC8429w9.BOOLEAN),
    STRING_LIST(26, EnumC8210k9.VECTOR, EnumC8429w9.STRING),
    MESSAGE_LIST(27, EnumC8210k9.VECTOR, EnumC8429w9.MESSAGE),
    BYTES_LIST(28, EnumC8210k9.VECTOR, EnumC8429w9.BYTE_STRING),
    UINT32_LIST(29, EnumC8210k9.VECTOR, EnumC8429w9.INT),
    ENUM_LIST(30, EnumC8210k9.VECTOR, EnumC8429w9.ENUM),
    SFIXED32_LIST(31, EnumC8210k9.VECTOR, EnumC8429w9.INT),
    SFIXED64_LIST(32, EnumC8210k9.VECTOR, EnumC8429w9.LONG),
    SINT32_LIST(33, EnumC8210k9.VECTOR, EnumC8429w9.INT),
    SINT64_LIST(34, EnumC8210k9.VECTOR, EnumC8429w9.LONG),
    DOUBLE_LIST_PACKED(35, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.DOUBLE),
    FLOAT_LIST_PACKED(36, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.FLOAT),
    INT64_LIST_PACKED(37, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.LONG),
    UINT64_LIST_PACKED(38, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.LONG),
    INT32_LIST_PACKED(39, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.INT),
    FIXED64_LIST_PACKED(40, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.LONG),
    FIXED32_LIST_PACKED(41, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.INT),
    BOOL_LIST_PACKED(42, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.BOOLEAN),
    UINT32_LIST_PACKED(43, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.INT),
    ENUM_LIST_PACKED(44, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.ENUM),
    SFIXED32_LIST_PACKED(45, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.INT),
    SFIXED64_LIST_PACKED(46, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.LONG),
    SINT32_LIST_PACKED(47, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.INT),
    SINT64_LIST_PACKED(48, EnumC8210k9.PACKED_VECTOR, EnumC8429w9.LONG),
    GROUP_LIST(49, EnumC8210k9.VECTOR, EnumC8429w9.MESSAGE),
    MAP(50, EnumC8210k9.MAP, EnumC8429w9.VOID);
    

    /* renamed from: b0 */
    public static final EnumC8187j9[] f18965b0;

    /* renamed from: a */
    public final int f18991a;

    static {
        EnumC8187j9[] values = values();
        f18965b0 = new EnumC8187j9[values.length];
        for (EnumC8187j9 j9Var : values) {
            f18965b0[j9Var.f18991a] = j9Var;
        }
    }

    EnumC8187j9(int i, EnumC8210k9 k9Var, EnumC8429w9 w9Var) {
        int i2;
        this.f18991a = i;
        int i3 = C8168i9.f18916a[k9Var.ordinal()];
        if (i3 == 1) {
            w9Var.m18103W();
        } else if (i3 == 2) {
            w9Var.m18103W();
        }
        if (!(k9Var == EnumC8210k9.SCALAR && (i2 = C8168i9.f18917b[w9Var.ordinal()]) != 1 && i2 == 2)) {
        }
    }

    /* renamed from: a */
    public final int m18448a() {
        return this.f18991a;
    }
}
