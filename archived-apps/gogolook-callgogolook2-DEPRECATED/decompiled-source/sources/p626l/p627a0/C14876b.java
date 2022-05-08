package p626l.p627a0;

import java.util.Random;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003*\u0001\b\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\n"}, m815d2 = {"Lkotlin/random/FallbackThreadLocalRandom;", "Lkotlin/random/AbstractPlatformRandom;", "()V", "impl", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "implStorage", "kotlin/random/FallbackThreadLocalRandom$implStorage$1", "Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.a0.b */
/* loaded from: classes3-dex2jar.jar:l/a0/b.class */
public final class C14876b extends AbstractC14875a {

    /* renamed from: c */
    public final C14877a f32931c = new C14877a();

    /* renamed from: l.a0.b$a */
    /* loaded from: classes3-dex2jar.jar:l/a0/b$a.class */
    public static final class C14877a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // p626l.p627a0.AbstractC14875a
    /* renamed from: c */
    public Random mo807c() {
        Random random = this.f32931c.get();
        C15149k.m383a((Object) random, "implStorage.get()");
        return random;
    }
}
