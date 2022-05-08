package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\f\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B)\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011J5\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0002\u0010\u00042\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00060\u0005H��¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\u000bR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlin/sequences/TransformingSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "E", "Lkotlin/Function1;", "", "iterator", "flatten$kotlin_stdlib", "(Lkotlin/Function1;)Lkotlin/sequences/Sequence;", "flatten", "()Ljava/util/Iterator;", "sequence", "Lkotlin/sequences/Sequence;", "transformer", "Lkotlin/Function1;", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingSequence.class */
public final class TransformingSequence<T, R> implements Sequence<R> {

    /* renamed from: a */
    private final Sequence<T> f21007a;

    /* renamed from: b */
    private final Function1<T, R> f21008b;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformingSequence(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transformer) {
        Intrinsics.m1830e(sequence, "sequence");
        Intrinsics.m1830e(transformer, "transformer");
        this.f21007a = sequence;
        this.f21008b = transformer;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<R> iterator() {
        return new TransformingSequence$iterator$1(this);
    }
}
