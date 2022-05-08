package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u0017\u0010\u0004\u001a\u00020\u0001*\u00020��8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/LifecycleOwner;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "getLifecycleScope", "(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;", "lifecycleScope", "lifecycle-runtime-ktx_release"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleOwnerKt.class */
public final class LifecycleOwnerKt {
    @NotNull
    /* renamed from: a */
    public static final LifecycleCoroutineScope m18232a(@NotNull LifecycleOwner lifecycleScope) {
        Intrinsics.m1829f(lifecycleScope, "$this$lifecycleScope");
        Lifecycle lifecycle = lifecycleScope.getLifecycle();
        Intrinsics.m1833b(lifecycle, "lifecycle");
        return LifecycleKt.m18233a(lifecycle);
    }
}
