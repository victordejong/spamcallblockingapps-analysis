package com.google.common.primitives;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.class */
public enum UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator implements Comparator<byte[]> {
    INSTANCE;
    
    public static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
    public static final int BYTE_ARRAY_BASE_OFFSET;
    public static final Unsafe theUnsafe;

    /* renamed from: com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$a.class */
    public static final class C7714a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public Unsafe run() throws Exception {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    static {
        Unsafe unsafe = getUnsafe();
        theUnsafe = unsafe;
        BYTE_ARRAY_BASE_OFFSET = unsafe.arrayBaseOffset(byte[].class);
        if (!"64".equals(System.getProperty("sun.arch.data.model")) || BYTE_ARRAY_BASE_OFFSET % 8 != 0 || theUnsafe.arrayIndexScale(byte[].class) != 1) {
            throw new Error();
        }
    }

    public static Unsafe getUnsafe() {
        try {
            return Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                return (Unsafe) AccessController.doPrivileged(new C7714a());
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0087, code lost:
        if (r12 >= r0) goto L_0x00a5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008a, code lost:
        r0 = p131c.p161d.p266c.p273g.C5069b.m24559a(r8[r12], r9[r12]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0099, code lost:
        if (r0 == 0) goto L_0x009f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009e, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009f, code lost:
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00aa, code lost:
        return r8.length - r9.length;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compare(byte[] r8, byte[] r9) {
        /*
            r7 = this;
            r0 = r8
            int r0 = r0.length
            r1 = r9
            int r1 = r1.length
            int r0 = java.lang.Math.min(r0, r1)
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x000b:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = r10
            r2 = -8
            r1 = r1 & r2
            if (r0 >= r1) goto L_0x0084
            sun.misc.Unsafe r0 = com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.theUnsafe
            r13 = r0
            int r0 = com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.BYTE_ARRAY_BASE_OFFSET
            long r0 = (long) r0
            r14 = r0
            r0 = r11
            long r0 = (long) r0
            r16 = r0
            r0 = r13
            r1 = r8
            r2 = r14
            r3 = r16
            long r2 = r2 + r3
            long r0 = r0.getLong(r1, r2)
            r14 = r0
            sun.misc.Unsafe r0 = com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.theUnsafe
            r1 = r9
            int r2 = com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.BYTE_ARRAY_BASE_OFFSET
            long r2 = (long) r2
            r3 = r16
            long r2 = r2 + r3
            long r0 = r0.getLong(r1, r2)
            r16 = r0
            r0 = r14
            r1 = r16
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007e
            boolean r0 = com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.BIG_ENDIAN
            if (r0 == 0) goto L_0x005b
            r0 = r14
            r1 = r16
            int r0 = com.google.common.primitives.UnsignedLongs.m7779a(r0, r1)
            return r0
        L_0x005b:
            r0 = r14
            r1 = r16
            long r0 = r0 ^ r1
            int r0 = java.lang.Long.numberOfTrailingZeros(r0)
            r1 = -8
            r0 = r0 & r1
            r11 = r0
            r0 = r14
            r1 = r11
            long r0 = r0 >>> r1
            r1 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r1
            int r0 = (int) r0
            r1 = r16
            r2 = r11
            long r1 = r1 >>> r2
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            int r1 = (int) r1
            int r0 = r0 - r1
            return r0
        L_0x007e:
            int r11 = r11 + 8
            goto L_0x000b
        L_0x0084:
            r0 = r12
            r1 = r10
            if (r0 >= r1) goto L_0x00a5
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r1 = r9
            r2 = r12
            r1 = r1[r2]
            int r0 = p131c.p161d.p266c.p273g.C5069b.m24559a(r0, r1)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x009f
            r0 = r11
            return r0
        L_0x009f:
            int r12 = r12 + 1
            goto L_0x0084
        L_0x00a5:
            r0 = r8
            int r0 = r0.length
            r1 = r9
            int r1 = r1.length
            int r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator.compare(byte[], byte[]):int");
    }

    @Override // java.lang.Enum
    public String toString() {
        return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
    }
}
