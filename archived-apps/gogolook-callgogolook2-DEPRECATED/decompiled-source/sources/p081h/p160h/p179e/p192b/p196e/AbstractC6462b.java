package p081h.p160h.p179e.p192b.p196e;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/dispatcher/DispatcherProvider;", "", "default", "Lkotlinx/coroutines/CoroutineDispatcher;", "io", "main", "unconfined", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.e.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/e/b.class */
public interface AbstractC6462b {

    /* renamed from: h.h.e.b.e.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/e/b$a.class */
    public static final class C6463a {
        /* renamed from: a */
        public static CoroutineDispatcher m22523a(AbstractC6462b bVar) {
            return Dispatchers.getIO();
        }

        /* renamed from: b */
        public static CoroutineDispatcher m22522b(AbstractC6462b bVar) {
            return Dispatchers.getMain();
        }
    }

    /* renamed from: a */
    CoroutineDispatcher mo22525a();

    /* renamed from: b */
    CoroutineDispatcher mo22524b();
}
