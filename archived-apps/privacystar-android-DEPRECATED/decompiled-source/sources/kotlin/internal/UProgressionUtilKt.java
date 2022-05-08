package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010��\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001��¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m254d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/internal/UProgressionUtilKt.class */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m3185differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int i4 = UnsignedKt.m3091uintRemainderJ1ME1BU(i, i3);
        int i5 = UnsignedKt.m3091uintRemainderJ1ME1BU(i2, i3);
        return UInt.m2894constructorimpl(UnsignedKt.uintCompare(i4, i5) >= 0 ? i4 - i5 : UInt.m2894constructorimpl(i4 - i5) + i3);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m3186differenceModulosambcqE(long j, long j2, long j3) {
        long j4 = UnsignedKt.m3093ulongRemaindereb3DHEI(j, j3);
        long j5 = UnsignedKt.m3093ulongRemaindereb3DHEI(j2, j3);
        return ULong.m2962constructorimpl(UnsignedKt.ulongCompare(j4, j5) >= 0 ? j4 - j5 : ULong.m2962constructorimpl(j4 - j5) + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m3187getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            if (UnsignedKt.ulongCompare(j, j2) < 0) {
                j2 = ULong.m2962constructorimpl(j2 - m3186differenceModulosambcqE(j2, j, ULong.m2962constructorimpl(j3)));
            }
        } else if (i >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (UnsignedKt.ulongCompare(j, j2) > 0) {
            j2 = ULong.m2962constructorimpl(j2 + m3186differenceModulosambcqE(j, j2, ULong.m2962constructorimpl(-j3)));
        }
        return j2;
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m3188getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (UnsignedKt.uintCompare(i, i2) < 0) {
                i2 = UInt.m2894constructorimpl(i2 - m3185differenceModuloWZ9TVnA(i2, i, UInt.m2894constructorimpl(i3)));
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (UnsignedKt.uintCompare(i, i2) > 0) {
            i2 = UInt.m2894constructorimpl(i2 + m3185differenceModuloWZ9TVnA(i, i2, UInt.m2894constructorimpl(-i3)));
        }
        return i2;
    }
}
