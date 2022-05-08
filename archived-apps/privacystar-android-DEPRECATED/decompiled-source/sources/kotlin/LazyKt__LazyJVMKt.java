package kotlin;

import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\u001a \u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a*\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a(\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\t"}, m254d2 = {"lazy", "Lkotlin/Lazy;", "T", "initializer", "Lkotlin/Function0;", "lock", "", "mode", "Lkotlin/LazyThreadSafetyMode;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/LazyKt")
/* loaded from: classes2-dex2jar.jar:kotlin/LazyKt__LazyJVMKt.class */
public class LazyKt__LazyJVMKt {
    @NotNull
    public static final <T> Lazy<T> lazy(@Nullable Object obj, @NotNull Function0<? extends T> initializer) {
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, obj);
    }

    @NotNull
    public static final <T> Lazy<T> lazy(@NotNull LazyThreadSafetyMode mode, @NotNull Function0<? extends T> initializer) {
        SynchronizedLazyImpl synchronizedLazyImpl;
        Intrinsics.checkParameterIsNotNull(mode, "mode");
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        switch (LazyKt.WhenMappings.$EnumSwitchMapping$0[mode.ordinal()]) {
            case 1:
                synchronizedLazyImpl = new SynchronizedLazyImpl(initializer, null, 2, null);
                break;
            case 2:
                synchronizedLazyImpl = new SafePublicationLazyImpl(initializer);
                break;
            case 3:
                synchronizedLazyImpl = new UnsafeLazyImpl(initializer);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return synchronizedLazyImpl;
    }

    @NotNull
    public static final <T> Lazy<T> lazy(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }
}
