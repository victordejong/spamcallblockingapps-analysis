package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n��\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0015\u0010��\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\b\u001a\r\u0010\b\u001a\u00020\t*\u00020\u0001H\u0087\b\u001a\r\u0010\b\u001a\u00020\t*\u00020\u0005H\u0087\b\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0001H\u0087\b\u001a\r\u0010\n\u001a\u00020\t*\u00020\u0005H\u0087\b\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0001H\u0087\b\u001a\r\u0010\u000b\u001a\u00020\t*\u00020\u0005H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0004*\u00020\u0001H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0007*\u00020\u0005H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0004*\u00020\u0001H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0007*\u00020\u0005H\u0087\b¨\u0006\u000e"}, m254d2 = {"fromBits", "", "Lkotlin/Double$Companion;", "bits", "", "", "Lkotlin/Float$Companion;", "", "isFinite", "", "isInfinite", "isNaN", "toBits", "toRawBits", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/MathKt")
/* loaded from: classes2-dex2jar.jar:kotlin/MathKt__NumbersKt.class */
class MathKt__NumbersKt extends MathKt__BigIntegersKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double fromBits(@NotNull DoubleCompanionObject doubleCompanionObject, long j) {
        return Double.longBitsToDouble(j);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float fromBits(@NotNull FloatCompanionObject floatCompanionObject, int i) {
        return Float.intBitsToFloat(i);
    }

    @InlineOnly
    private static final boolean isFinite(double d) {
        return !Double.isInfinite(d) && !Double.isNaN(d);
    }

    @InlineOnly
    private static final boolean isFinite(float f) {
        return !Float.isInfinite(f) && !Float.isNaN(f);
    }

    @InlineOnly
    private static final boolean isInfinite(double d) {
        return Double.isInfinite(d);
    }

    @InlineOnly
    private static final boolean isInfinite(float f) {
        return Float.isInfinite(f);
    }

    @InlineOnly
    private static final boolean isNaN(double d) {
        return Double.isNaN(d);
    }

    @InlineOnly
    private static final boolean isNaN(float f) {
        return Float.isNaN(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toBits(float f) {
        return Float.floatToIntBits(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toBits(double d) {
        return Double.doubleToLongBits(d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toRawBits(float f) {
        return Float.floatToRawIntBits(f);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toRawBits(double d) {
        return Double.doubleToRawLongBits(d);
    }
}
