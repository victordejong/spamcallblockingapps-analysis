package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0010\u001c\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\u001a5\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��2\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0019\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��¢\u0006\u0004\b\u0007\u0010\b\u001ai\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\t\"\u0004\b\u0002\u0010\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\u00042\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\f2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00020\u000fH��¢\u0006\u0004\b\u0010\u0010\u0011\u001a-\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\b\b��\u0010��*\u00020\u00122\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0001¢\u0006\u0004\b\u0014\u0010\u0006\u001aC\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\b\b��\u0010��*\u00020\u00122\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00012\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u000f¢\u0006\u0004\b\u0014\u0010\u0016\u001a?\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\b\b��\u0010��*\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00018��2\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u000fH\u0007¢\u0006\u0004\b\u0014\u0010\u0018\u001a-\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��2\u0012\u0010\u001a\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0019\"\u00028��¢\u0006\u0004\b\u001b\u0010\u001c\u001a#\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0004\b\u001d\u0010\u001e\u001a#\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\b\u001f\u0010 \u001aE\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u00028��0\u00042\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00020\u000fH\u0002¢\u0006\u0004\b!\u0010\"\u001a+\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0$0\u0004H\u0007¢\u0006\u0004\b%\u0010 \u001a)\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0004¢\u0006\u0004\b#\u0010 \u001a9\u0010'\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00042\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0001H\u0007¢\u0006\u0004\b'\u0010(\u001a(\u0010)\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0004H\u0087\b¢\u0006\u0004\b)\u0010 \u001a%\u0010*\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0004H\u0007¢\u0006\u0004\b*\u0010 \u001a-\u0010*\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00042\u0006\u0010,\u001a\u00020+H\u0007¢\u0006\u0004\b*\u0010-\u001aG\u00100\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0/\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010/0.\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\n*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010.0\u0004¢\u0006\u0004\b0\u00101\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00062"}, d2 = {"T", "Lkotlin/Function0;", "", "iterator", "Lkotlin/sequences/Sequence;", "Sequence", "(Lkotlin/Function0;)Lkotlin/sequences/Sequence;", "emptySequence", "()Lkotlin/sequences/Sequence;", "C", "R", "source", "Lkotlin/Function2;", "", "transform", "Lkotlin/Function1;", "flatMapIndexed", "(Lkotlin/sequences/Sequence;Lkotlin/Function2;Lkotlin/Function1;)Lkotlin/sequences/Sequence;", "", "nextFunction", "generateSequence", "seedFunction", "(Lkotlin/Function0;Lkotlin/Function1;)Lkotlin/sequences/Sequence;", "seed", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "", "elements", "sequenceOf", "([Ljava/lang/Object;)Lkotlin/sequences/Sequence;", "asSequence", "(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;", "constrainOnce", "(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;", "flatten$SequencesKt__SequencesKt", "(Lkotlin/sequences/Sequence;Lkotlin/Function1;)Lkotlin/sequences/Sequence;", "flatten", "", "flattenSequenceOfIterable", "defaultValue", "ifEmpty", "(Lkotlin/sequences/Sequence;Lkotlin/Function0;)Lkotlin/sequences/Sequence;", "orEmpty", "shuffled", "Lkotlin/random/Random;", "random", "(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;", "Lkotlin/Pair;", "", "unzip", "(Lkotlin/sequences/Sequence;)Lkotlin/Pair;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/sequences/SequencesKt")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt.class */
public class SequencesKt__SequencesKt extends SequencesKt__SequencesJVMKt {
    @NotNull
    /* renamed from: b */
    public static <T> Sequence<T> m1631b(@NotNull final Iterator<? extends T> asSequence) {
        Intrinsics.m1830e(asSequence, "$this$asSequence");
        return m1630c(new Sequence<T>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            @NotNull
            public Iterator<T> iterator() {
                return asSequence;
            }
        });
    }

    @NotNull
    /* renamed from: c */
    public static final <T> Sequence<T> m1630c(@NotNull Sequence<? extends T> constrainOnce) {
        Intrinsics.m1830e(constrainOnce, "$this$constrainOnce");
        return constrainOnce instanceof ConstrainedOnceSequence ? (ConstrainedOnceSequence) constrainOnce : new ConstrainedOnceSequence(constrainOnce);
    }

    @NotNull
    /* renamed from: d */
    public static final <T> Sequence<T> m1629d() {
        return EmptySequence.f20858a;
    }

    @LowPriorityInOverloadResolution
    @NotNull
    /* renamed from: e */
    public static <T> Sequence<T> m1628e(@Nullable T t, @NotNull Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.m1830e(nextFunction, "nextFunction");
        return t == null ? EmptySequence.f20858a : new GeneratorSequence<>(new SequencesKt__SequencesKt$generateSequence$2(t), nextFunction);
    }
}
