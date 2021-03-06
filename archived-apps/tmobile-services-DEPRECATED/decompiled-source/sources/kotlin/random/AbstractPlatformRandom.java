package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lkotlin/random/AbstractPlatformRandom;", "Lkotlin/random/Random;", "", "bitCount", "nextBits", "(I)I", "", "nextBoolean", "()Z", "", "array", "nextBytes", "([B)[B", "", "nextDouble", "()D", "", "nextFloat", "()F", "nextInt", "()I", "until", "", "nextLong", "()J", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/AbstractPlatformRandom.class */
public abstract class AbstractPlatformRandom extends Random {
    @Override // kotlin.random.Random
    /* renamed from: b */
    public int mo1755b(int i) {
        return RandomKt.m1756d(mo1752l().nextInt(), i);
    }

    @Override // kotlin.random.Random
    /* renamed from: c */
    public boolean mo1766c() {
        return mo1752l().nextBoolean();
    }

    @Override // kotlin.random.Random
    @NotNull
    /* renamed from: d */
    public byte[] mo1765d(@NotNull byte[] array) {
        Intrinsics.m1830e(array, "array");
        mo1752l().nextBytes(array);
        return array;
    }

    @Override // kotlin.random.Random
    /* renamed from: f */
    public double mo1763f() {
        return mo1752l().nextDouble();
    }

    @Override // kotlin.random.Random
    /* renamed from: g */
    public float mo1762g() {
        return mo1752l().nextFloat();
    }

    @Override // kotlin.random.Random
    /* renamed from: h */
    public int mo1754h() {
        return mo1752l().nextInt();
    }

    @Override // kotlin.random.Random
    /* renamed from: i */
    public int mo1761i(int i) {
        return mo1752l().nextInt(i);
    }

    @Override // kotlin.random.Random
    /* renamed from: k */
    public long mo1760k() {
        return mo1752l().nextLong();
    }

    @NotNull
    /* renamed from: l */
    public abstract Random mo1752l();
}
