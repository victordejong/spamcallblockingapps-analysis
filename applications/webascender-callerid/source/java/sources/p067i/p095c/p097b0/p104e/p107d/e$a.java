package p067i.p095c.p097b0.p104e.p107d;

import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
/* renamed from: i.c.b0.e.d.e$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/d/e$a.class */
final class e$a<T> extends AtomicReference<BiConsumer<T, Throwable>> implements BiConsumer<T, Throwable> {
    e$a() {
    }

    /* renamed from: a */
    public void accept(T t, Throwable th) {
        BiConsumer<T, Throwable> biConsumer = get();
        if (biConsumer != null) {
            biConsumer.accept(t, th);
        }
    }
}
