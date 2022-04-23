package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzex.class */
public enum zzex {
    DOUBLE(0, EnumC2533co.SCALAR, zzfq.DOUBLE),
    FLOAT(1, EnumC2533co.SCALAR, zzfq.FLOAT),
    INT64(2, EnumC2533co.SCALAR, zzfq.LONG),
    UINT64(3, EnumC2533co.SCALAR, zzfq.LONG),
    INT32(4, EnumC2533co.SCALAR, zzfq.INT),
    FIXED64(5, EnumC2533co.SCALAR, zzfq.LONG),
    FIXED32(6, EnumC2533co.SCALAR, zzfq.INT),
    BOOL(7, EnumC2533co.SCALAR, zzfq.BOOLEAN),
    STRING(8, EnumC2533co.SCALAR, zzfq.STRING),
    MESSAGE(9, EnumC2533co.SCALAR, zzfq.MESSAGE),
    BYTES(10, EnumC2533co.SCALAR, zzfq.BYTE_STRING),
    UINT32(11, EnumC2533co.SCALAR, zzfq.INT),
    ENUM(12, EnumC2533co.SCALAR, zzfq.ENUM),
    SFIXED32(13, EnumC2533co.SCALAR, zzfq.INT),
    SFIXED64(14, EnumC2533co.SCALAR, zzfq.LONG),
    SINT32(15, EnumC2533co.SCALAR, zzfq.INT),
    SINT64(16, EnumC2533co.SCALAR, zzfq.LONG),
    GROUP(17, EnumC2533co.SCALAR, zzfq.MESSAGE),
    DOUBLE_LIST(18, EnumC2533co.VECTOR, zzfq.DOUBLE),
    FLOAT_LIST(19, EnumC2533co.VECTOR, zzfq.FLOAT),
    INT64_LIST(20, EnumC2533co.VECTOR, zzfq.LONG),
    UINT64_LIST(21, EnumC2533co.VECTOR, zzfq.LONG),
    INT32_LIST(22, EnumC2533co.VECTOR, zzfq.INT),
    FIXED64_LIST(23, EnumC2533co.VECTOR, zzfq.LONG),
    FIXED32_LIST(24, EnumC2533co.VECTOR, zzfq.INT),
    BOOL_LIST(25, EnumC2533co.VECTOR, zzfq.BOOLEAN),
    STRING_LIST(26, EnumC2533co.VECTOR, zzfq.STRING),
    MESSAGE_LIST(27, EnumC2533co.VECTOR, zzfq.MESSAGE),
    BYTES_LIST(28, EnumC2533co.VECTOR, zzfq.BYTE_STRING),
    UINT32_LIST(29, EnumC2533co.VECTOR, zzfq.INT),
    ENUM_LIST(30, EnumC2533co.VECTOR, zzfq.ENUM),
    SFIXED32_LIST(31, EnumC2533co.VECTOR, zzfq.INT),
    SFIXED64_LIST(32, EnumC2533co.VECTOR, zzfq.LONG),
    SINT32_LIST(33, EnumC2533co.VECTOR, zzfq.INT),
    SINT64_LIST(34, EnumC2533co.VECTOR, zzfq.LONG),
    DOUBLE_LIST_PACKED(35, EnumC2533co.PACKED_VECTOR, zzfq.DOUBLE),
    FLOAT_LIST_PACKED(36, EnumC2533co.PACKED_VECTOR, zzfq.FLOAT),
    INT64_LIST_PACKED(37, EnumC2533co.PACKED_VECTOR, zzfq.LONG),
    UINT64_LIST_PACKED(38, EnumC2533co.PACKED_VECTOR, zzfq.LONG),
    INT32_LIST_PACKED(39, EnumC2533co.PACKED_VECTOR, zzfq.INT),
    FIXED64_LIST_PACKED(40, EnumC2533co.PACKED_VECTOR, zzfq.LONG),
    FIXED32_LIST_PACKED(41, EnumC2533co.PACKED_VECTOR, zzfq.INT),
    BOOL_LIST_PACKED(42, EnumC2533co.PACKED_VECTOR, zzfq.BOOLEAN),
    UINT32_LIST_PACKED(43, EnumC2533co.PACKED_VECTOR, zzfq.INT),
    ENUM_LIST_PACKED(44, EnumC2533co.PACKED_VECTOR, zzfq.ENUM),
    SFIXED32_LIST_PACKED(45, EnumC2533co.PACKED_VECTOR, zzfq.INT),
    SFIXED64_LIST_PACKED(46, EnumC2533co.PACKED_VECTOR, zzfq.LONG),
    SINT32_LIST_PACKED(47, EnumC2533co.PACKED_VECTOR, zzfq.INT),
    SINT64_LIST_PACKED(48, EnumC2533co.PACKED_VECTOR, zzfq.LONG),
    GROUP_LIST(49, EnumC2533co.VECTOR, zzfq.MESSAGE),
    MAP(50, EnumC2533co.MAP, zzfq.VOID);
    

    /* renamed from: ac */
    private static final zzex[] f16246ac;

    /* renamed from: ad */
    private static final Type[] f16247ad = new Type[0];

    /* renamed from: X */
    private final zzfq f16274X;

    /* renamed from: Y */
    private final int f16275Y;

    /* renamed from: Z */
    private final EnumC2533co f16276Z;

    /* renamed from: aa */
    private final Class<?> f16277aa;

    /* renamed from: ab */
    private final boolean f16278ab;

    static {
        zzex[] values = values();
        f16246ac = new zzex[values.length];
        for (zzex zzexVar : values) {
            f16246ac[zzexVar.f16275Y] = zzexVar;
        }
    }

    zzex(int i, EnumC2533co coVar, zzfq zzfqVar) {
        this.f16275Y = i;
        this.f16276Z = coVar;
        this.f16274X = zzfqVar;
        int i2 = C2534cp.f15944a[coVar.ordinal()];
        this.f16277aa = (i2 == 1 || i2 == 2) ? zzfqVar.zza() : null;
        boolean z = false;
        if (coVar == EnumC2533co.SCALAR) {
            int i3 = C2534cp.f15945b[zzfqVar.ordinal()];
            z = false;
            if (i3 != 1) {
                z = false;
                if (i3 != 2) {
                    z = false;
                    if (i3 != 3) {
                        z = true;
                    }
                }
            }
        }
        this.f16278ab = z;
    }

    public final int zza() {
        return this.f16275Y;
    }
}
