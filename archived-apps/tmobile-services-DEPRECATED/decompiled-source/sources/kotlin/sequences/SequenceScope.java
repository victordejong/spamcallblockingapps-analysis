package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.RestrictsSuspension;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@RestrictsSuspension
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018��*\u0006\b��\u0010\u0001 ��B\t\b��¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H¦@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\b\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0006H\u0086@ø\u0001��¢\u0006\u0004\b\b\u0010\tJ!\u0010\b\u001a\u00020\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\nH¦@ø\u0001��¢\u0006\u0004\b\b\u0010\fJ!\u0010\b\u001a\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\rH\u0086@ø\u0001��¢\u0006\u0004\b\b\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlin/sequences/SequenceScope;", "T", FirebaseAnalytics.Param.VALUE, "", "yield", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "elements", "yieldAll", "(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "iterator", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/sequences/Sequence;", "sequence", "(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequenceScope.class */
public abstract class SequenceScope<T> {
    @Nullable
    /* renamed from: a */
    public abstract Object mo1645a(T t, @NotNull Continuation<? super Unit> continuation);

    @Nullable
    /* renamed from: b */
    public abstract Object mo1644b(@NotNull Iterator<? extends T> it, @NotNull Continuation<? super Unit> continuation);

    @Nullable
    /* renamed from: e */
    public final Object m1643e(@NotNull Sequence<? extends T> sequence, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object b = mo1644b(sequence.iterator(), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return b == d ? b : Unit.f20447a;
    }
}
