package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0001\u0006\b��\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/random/FallbackThreadLocalRandom;", "Lkotlin/random/AbstractPlatformRandom;", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "kotlin/random/FallbackThreadLocalRandom$implStorage$1", "implStorage", "Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/FallbackThreadLocalRandom.class */
public final class FallbackThreadLocalRandom extends AbstractPlatformRandom {

    /* renamed from: c */
    private final FallbackThreadLocalRandom$implStorage$1 f20769c = new ThreadLocal<Random>() { // from class: kotlin.random.FallbackThreadLocalRandom$implStorage$1
        /* JADX INFO: Access modifiers changed from: protected */
        @NotNull
        /* renamed from: a */
        public Random initialValue() {
            return new Random();
        }
    };

    @Override // kotlin.random.AbstractPlatformRandom
    @NotNull
    /* renamed from: l */
    public Random mo1752l() {
        Random random = get();
        Intrinsics.m1831d(random, "implStorage.get()");
        return random;
    }
}
