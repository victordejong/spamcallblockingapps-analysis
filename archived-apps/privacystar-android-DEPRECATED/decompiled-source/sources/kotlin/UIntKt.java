package kotlin;

import kotlin.internal.InlineOnly;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\n\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0003\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0004H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0005\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u0006H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0007\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\bH\u0087\bø\u0001��¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, m254d2 = {"toUInt", "Lkotlin/UInt;", "", "(B)I", "", "(I)I", "", "(J)I", "", "(S)I", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/UIntKt.class */
public final class UIntKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int toUInt(byte b) {
        return UInt.m2894constructorimpl(b);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int toUInt(int i) {
        return UInt.m2894constructorimpl(i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int toUInt(long j) {
        return UInt.m2894constructorimpl((int) j);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    private static final int toUInt(short s) {
        return UInt.m2894constructorimpl(s);
    }
}
