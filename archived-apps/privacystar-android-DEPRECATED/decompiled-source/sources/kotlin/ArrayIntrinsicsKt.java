package kotlin;

import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000b\b��\u0010\u0002\u0018\u0001¢\u0006\u0002\b\u0003H\u0086\b¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"emptyArray", "", "T", "Lkotlin/internal/PureReifiable;", "()[Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/ArrayIntrinsicsKt.class */
public final class ArrayIntrinsicsKt {
    private static final <T> T[] emptyArray() {
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) new Object[0];
    }
}
