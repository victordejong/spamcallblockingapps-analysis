package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\bÇ\u0002\u0018��2\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b \u0010!J7\u0010\b\u001a\u00028��\"\u0004\b��\u0010\u00032\u0006\u0010\u0004\u001a\u00028��2\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028��0\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ*\u0010\r\u001a\u0004\u0018\u00018��\"\b\b��\u0010\n*\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\u00012\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lkotlin/coroutines/EmptyCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "", "hashCode", "()I", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "context", "plus", "(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;", "", "readResolve", "()Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/EmptyCoroutineContext.class */
public final class EmptyCoroutineContext implements CoroutineContext, Serializable {

    /* renamed from: f */
    public static final EmptyCoroutineContext f20645f = new EmptyCoroutineContext();
    private static final long serialVersionUID = 0;

    private EmptyCoroutineContext() {
    }

    private final Object readResolve() {
        return f20645f;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.m1830e(operation, "operation");
        return r;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        Intrinsics.m1830e(key, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.m1830e(key, "key");
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext context) {
        Intrinsics.m1830e(context, "context");
        return context;
    }

    @NotNull
    public String toString() {
        return "EmptyCoroutineContext";
    }
}
