package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u0004\u0018\u00018��8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "calcNext", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "nextItem", "Ljava/lang/Object;", "getNextItem", "setNextItem", "(Ljava/lang/Object;)V", "", "nextState", "I", "getNextState", "()I", "setNextState", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/GeneratorSequence$iterator$1.class */
public final class GeneratorSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @Nullable

    /* renamed from: f */
    private T f20874f;

    /* renamed from: g */
    private int f20875g = -2;

    /* renamed from: h */
    final /* synthetic */ GeneratorSequence f20876h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeneratorSequence$iterator$1(GeneratorSequence generatorSequence) {
        this.f20876h = generatorSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private final void m1654a() {
        T t;
        Function1 function1;
        Function0 function0;
        if (this.f20875g == -2) {
            function0 = this.f20876h.f20872a;
            t = function0.invoke();
        } else {
            function1 = this.f20876h.f20873b;
            T t2 = this.f20874f;
            Intrinsics.m1832c(t2);
            t = function1.invoke(t2);
        }
        this.f20874f = t;
        this.f20875g = t == 0 ? 0 : 1;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f20875g < 0) {
            m1654a();
        }
        boolean z = true;
        if (this.f20875g != 1) {
            z = false;
        }
        return z;
    }

    @Override // java.util.Iterator
    @NotNull
    public T next() {
        if (this.f20875g < 0) {
            m1654a();
        }
        if (this.f20875g != 0) {
            T t = this.f20874f;
            if (t != 0) {
                this.f20875g = -1;
                return t;
            }
            throw new NullPointerException("null cannot be cast to non-null type T");
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
