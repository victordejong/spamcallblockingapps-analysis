package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrn.class */
public enum zzdrn {
    DOUBLE(0, aib.SCALAR, zzdsg.DOUBLE),
    FLOAT(1, aib.SCALAR, zzdsg.FLOAT),
    INT64(2, aib.SCALAR, zzdsg.LONG),
    UINT64(3, aib.SCALAR, zzdsg.LONG),
    INT32(4, aib.SCALAR, zzdsg.INT),
    FIXED64(5, aib.SCALAR, zzdsg.LONG),
    FIXED32(6, aib.SCALAR, zzdsg.INT),
    BOOL(7, aib.SCALAR, zzdsg.BOOLEAN),
    STRING(8, aib.SCALAR, zzdsg.STRING),
    MESSAGE(9, aib.SCALAR, zzdsg.MESSAGE),
    BYTES(10, aib.SCALAR, zzdsg.BYTE_STRING),
    UINT32(11, aib.SCALAR, zzdsg.INT),
    ENUM(12, aib.SCALAR, zzdsg.ENUM),
    SFIXED32(13, aib.SCALAR, zzdsg.INT),
    SFIXED64(14, aib.SCALAR, zzdsg.LONG),
    SINT32(15, aib.SCALAR, zzdsg.INT),
    SINT64(16, aib.SCALAR, zzdsg.LONG),
    GROUP(17, aib.SCALAR, zzdsg.MESSAGE),
    DOUBLE_LIST(18, aib.VECTOR, zzdsg.DOUBLE),
    FLOAT_LIST(19, aib.VECTOR, zzdsg.FLOAT),
    INT64_LIST(20, aib.VECTOR, zzdsg.LONG),
    UINT64_LIST(21, aib.VECTOR, zzdsg.LONG),
    INT32_LIST(22, aib.VECTOR, zzdsg.INT),
    FIXED64_LIST(23, aib.VECTOR, zzdsg.LONG),
    FIXED32_LIST(24, aib.VECTOR, zzdsg.INT),
    BOOL_LIST(25, aib.VECTOR, zzdsg.BOOLEAN),
    STRING_LIST(26, aib.VECTOR, zzdsg.STRING),
    MESSAGE_LIST(27, aib.VECTOR, zzdsg.MESSAGE),
    BYTES_LIST(28, aib.VECTOR, zzdsg.BYTE_STRING),
    UINT32_LIST(29, aib.VECTOR, zzdsg.INT),
    ENUM_LIST(30, aib.VECTOR, zzdsg.ENUM),
    SFIXED32_LIST(31, aib.VECTOR, zzdsg.INT),
    SFIXED64_LIST(32, aib.VECTOR, zzdsg.LONG),
    SINT32_LIST(33, aib.VECTOR, zzdsg.INT),
    SINT64_LIST(34, aib.VECTOR, zzdsg.LONG),
    DOUBLE_LIST_PACKED(35, aib.PACKED_VECTOR, zzdsg.DOUBLE),
    FLOAT_LIST_PACKED(36, aib.PACKED_VECTOR, zzdsg.FLOAT),
    INT64_LIST_PACKED(37, aib.PACKED_VECTOR, zzdsg.LONG),
    UINT64_LIST_PACKED(38, aib.PACKED_VECTOR, zzdsg.LONG),
    INT32_LIST_PACKED(39, aib.PACKED_VECTOR, zzdsg.INT),
    FIXED64_LIST_PACKED(40, aib.PACKED_VECTOR, zzdsg.LONG),
    FIXED32_LIST_PACKED(41, aib.PACKED_VECTOR, zzdsg.INT),
    BOOL_LIST_PACKED(42, aib.PACKED_VECTOR, zzdsg.BOOLEAN),
    UINT32_LIST_PACKED(43, aib.PACKED_VECTOR, zzdsg.INT),
    ENUM_LIST_PACKED(44, aib.PACKED_VECTOR, zzdsg.ENUM),
    SFIXED32_LIST_PACKED(45, aib.PACKED_VECTOR, zzdsg.INT),
    SFIXED64_LIST_PACKED(46, aib.PACKED_VECTOR, zzdsg.LONG),
    SINT32_LIST_PACKED(47, aib.PACKED_VECTOR, zzdsg.INT),
    SINT64_LIST_PACKED(48, aib.PACKED_VECTOR, zzdsg.LONG),
    GROUP_LIST(49, aib.VECTOR, zzdsg.MESSAGE),
    MAP(50, aib.MAP, zzdsg.VOID);
    

    /* renamed from: ac */
    private static final zzdrn[] f14522ac;

    /* renamed from: ad */
    private static final Type[] f14523ad = new Type[0];

    /* renamed from: X */
    private final zzdsg f14550X;

    /* renamed from: Y */
    private final int f14551Y;

    /* renamed from: Z */
    private final aib f14552Z;

    /* renamed from: aa */
    private final Class<?> f14553aa;

    /* renamed from: ab */
    private final boolean f14554ab;

    static {
        zzdrn[] values = values();
        f14522ac = new zzdrn[values.length];
        for (zzdrn zzdrnVar : values) {
            f14522ac[zzdrnVar.f14551Y] = zzdrnVar;
        }
    }

    zzdrn(int i, aib aibVar, zzdsg zzdsgVar) {
        this.f14551Y = i;
        this.f14552Z = aibVar;
        this.f14550X = zzdsgVar;
        int i2 = aic.f7407a[aibVar.ordinal()];
        this.f14553aa = (i2 == 1 || i2 == 2) ? zzdsgVar.zzbat() : null;
        boolean z = false;
        if (aibVar == aib.SCALAR) {
            int i3 = aic.f7408b[zzdsgVar.ordinal()];
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
        this.f14554ab = z;
    }

    /* renamed from: id */
    public final int m3378id() {
        return this.f14551Y;
    }
}
