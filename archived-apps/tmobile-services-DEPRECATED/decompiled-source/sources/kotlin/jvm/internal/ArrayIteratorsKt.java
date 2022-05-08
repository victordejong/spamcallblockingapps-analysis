package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.collections.BooleanIterator;
import kotlin.collections.ByteIterator;
import kotlin.collections.CharIterator;
import kotlin.collections.DoubleIterator;
import kotlin.collections.FloatIterator;
import kotlin.collections.IntIterator;
import kotlin.collections.LongIterator;
import kotlin.collections.ShortIterator;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0010\u0018\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0015\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0005¢\u0006\u0004\b\u0003\u0010\u0007\u001a\u0015\u0010\u0003\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\b¢\u0006\u0004\b\u0003\u0010\n\u001a\u0015\u0010\u0003\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\u000b¢\u0006\u0004\b\u0003\u0010\r\u001a\u0015\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0001\u001a\u00020\u000e¢\u0006\u0004\b\u0003\u0010\u0010\u001a\u0015\u0010\u0003\u001a\u00020\u00122\u0006\u0010\u0001\u001a\u00020\u0011¢\u0006\u0004\b\u0003\u0010\u0013\u001a\u0015\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0001\u001a\u00020\u0014¢\u0006\u0004\b\u0003\u0010\u0016\u001a\u0015\u0010\u0003\u001a\u00020\u00182\u0006\u0010\u0001\u001a\u00020\u0017¢\u0006\u0004\b\u0003\u0010\u0019¨\u0006\u001a"}, d2 = {"", "array", "Lkotlin/collections/BooleanIterator;", "iterator", "([Z)Lkotlin/collections/BooleanIterator;", "", "Lkotlin/collections/ByteIterator;", "([B)Lkotlin/collections/ByteIterator;", "", "Lkotlin/collections/CharIterator;", "([C)Lkotlin/collections/CharIterator;", "", "Lkotlin/collections/DoubleIterator;", "([D)Lkotlin/collections/DoubleIterator;", "", "Lkotlin/collections/FloatIterator;", "([F)Lkotlin/collections/FloatIterator;", "", "Lkotlin/collections/IntIterator;", "([I)Lkotlin/collections/IntIterator;", "", "Lkotlin/collections/LongIterator;", "([J)Lkotlin/collections/LongIterator;", "", "Lkotlin/collections/ShortIterator;", "([S)Lkotlin/collections/ShortIterator;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ArrayIteratorsKt.class */
public final class ArrayIteratorsKt {
    @NotNull
    /* renamed from: a */
    public static final BooleanIterator m1859a(@NotNull boolean[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayBooleanIterator(array);
    }

    @NotNull
    /* renamed from: b */
    public static final ByteIterator m1858b(@NotNull byte[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayByteIterator(array);
    }

    @NotNull
    /* renamed from: c */
    public static final CharIterator m1857c(@NotNull char[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayCharIterator(array);
    }

    @NotNull
    /* renamed from: d */
    public static final DoubleIterator m1856d(@NotNull double[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayDoubleIterator(array);
    }

    @NotNull
    /* renamed from: e */
    public static final FloatIterator m1855e(@NotNull float[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayFloatIterator(array);
    }

    @NotNull
    /* renamed from: f */
    public static final IntIterator m1854f(@NotNull int[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayIntIterator(array);
    }

    @NotNull
    /* renamed from: g */
    public static final LongIterator m1853g(@NotNull long[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayLongIterator(array);
    }

    @NotNull
    /* renamed from: h */
    public static final ShortIterator m1852h(@NotNull short[] array) {
        Intrinsics.m1830e(array, "array");
        return new ArrayShortIterator(array);
    }
}
