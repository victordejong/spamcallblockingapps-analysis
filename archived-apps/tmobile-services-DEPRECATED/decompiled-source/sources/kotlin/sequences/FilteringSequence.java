package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B3\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\"\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/sequences/FilteringSequence;", "T", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "Lkotlin/Function1;", "", "predicate", "Lkotlin/Function1;", "sendWhen", "Z", "sequence", "Lkotlin/sequences/Sequence;", "<init>", "(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/FilteringSequence.class */
public final class FilteringSequence<T> implements Sequence<T> {

    /* renamed from: a */
    private final Sequence<T> f20859a;

    /* renamed from: b */
    private final boolean f20860b;

    /* renamed from: c */
    private final Function1<T, Boolean> f20861c;

    /* JADX WARN: Multi-variable type inference failed */
    public FilteringSequence(@NotNull Sequence<? extends T> sequence, boolean z, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.m1830e(sequence, "sequence");
        Intrinsics.m1830e(predicate, "predicate");
        this.f20859a = sequence;
        this.f20860b = z;
        this.f20861c = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new FilteringSequence$iterator$1(this);
    }
}
