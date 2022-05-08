package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\r\b&\u0018��B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0006\u001a\u00020\u00052\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\b\u001a\u0004\u0018\u00010\u00032\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001H&¢\u0006\u0004\b\b\u0010\tR&\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00018\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/AtomicDesc;", "Lkotlinx/coroutines/internal/AtomicOp;", "op", "", "failure", "", "complete", "(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V", "prepare", "(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;", "atomicOp", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "setAtomicOp", "(Lkotlinx/coroutines/internal/AtomicOp;)V", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/AtomicDesc.class */
public abstract class AtomicDesc {
    @NotNull

    /* renamed from: a */
    public AtomicOp<?> f23889a;

    /* renamed from: a */
    public abstract void mo285a(@NotNull AtomicOp<?> atomicOp, @Nullable Object obj);

    @NotNull
    /* renamed from: b */
    public final AtomicOp<?> m583b() {
        AtomicOp<?> atomicOp = this.f23889a;
        if (atomicOp != null) {
            return atomicOp;
        }
        Intrinsics.m1814u("atomicOp");
        throw null;
    }

    @Nullable
    /* renamed from: c */
    public abstract Object mo284c(@NotNull AtomicOp<?> atomicOp);

    /* renamed from: d */
    public final void m582d(@NotNull AtomicOp<?> atomicOp) {
        this.f23889a = atomicOp;
    }
}
