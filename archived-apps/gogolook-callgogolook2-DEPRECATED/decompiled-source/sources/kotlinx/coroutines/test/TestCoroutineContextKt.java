package kotlinx.coroutines.test;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a+\u0010��\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0007¨\u0006\u0007"}, m815d2 = {"withTestContext", "", "testContext", "Lkotlinx/coroutines/test/TestCoroutineContext;", "testBody", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContextKt.class */
public final class TestCoroutineContextKt {
    public static final void withTestContext(TestCoroutineContext testCoroutineContext, AbstractC15118l<? super TestCoroutineContext, C14989s> lVar) {
        boolean z;
        lVar.invoke(testCoroutineContext);
        List<Throwable> exceptions = testCoroutineContext.getExceptions();
        if (!(exceptions instanceof Collection) || !exceptions.isEmpty()) {
            Iterator<T> it = exceptions.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!(((Throwable) it.next()) instanceof CancellationException)) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        if (!z) {
            throw new AssertionError("Coroutine encountered unhandled exceptions:\n" + testCoroutineContext.getExceptions());
        }
    }

    public static /* synthetic */ void withTestContext$default(TestCoroutineContext testCoroutineContext, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            testCoroutineContext = new TestCoroutineContext(null, 1, null);
        }
        withTestContext(testCoroutineContext, lVar);
    }
}
