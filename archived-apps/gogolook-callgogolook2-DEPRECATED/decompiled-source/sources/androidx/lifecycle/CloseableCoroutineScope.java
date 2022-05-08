package androidx.lifecycle;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.Closeable;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\b��\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0006\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m815d2 = {"Landroidx/lifecycle/CloseableCoroutineScope;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/CoroutineScope;", "context", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/coroutines/CoroutineContext;)V", "coroutineContext", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", MraidParser.MRAID_COMMAND_CLOSE, "", "lifecycle-viewmodel-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CloseableCoroutineScope.class */
public final class CloseableCoroutineScope implements Closeable, CoroutineScope {
    public final AbstractC15049g coroutineContext;

    public CloseableCoroutineScope(AbstractC15049g gVar) {
        C15149k.m377b(gVar, "context");
        this.coroutineContext = gVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JobKt__JobKt.cancel$default(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public AbstractC15049g getCoroutineContext() {
        return this.coroutineContext;
    }
}
