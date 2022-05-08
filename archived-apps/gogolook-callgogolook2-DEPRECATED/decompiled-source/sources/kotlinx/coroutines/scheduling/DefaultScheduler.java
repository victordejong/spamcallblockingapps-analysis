package kotlinx.coroutines.scheduling;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchersKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import p626l.p628b0.C14896i;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m815d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "()V", "IO", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIO", "()Lkotlinx/coroutines/CoroutineDispatcher;", MraidParser.MRAID_COMMAND_CLOSE, "", "toDebugString", "", "toString", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/scheduling/DefaultScheduler.class */
public final class DefaultScheduler extends ExperimentalCoroutineDispatcher {
    public static final DefaultScheduler INSTANCE;

    /* renamed from: IO */
    public static final CoroutineDispatcher f32930IO;

    static {
        int systemProp$default;
        DefaultScheduler defaultScheduler = new DefaultScheduler();
        INSTANCE = defaultScheduler;
        systemProp$default = SystemPropsKt__SystemProps_commonKt.systemProp$default(DispatchersKt.IO_PARALLELISM_PROPERTY_NAME, C14896i.m796a(64, SystemPropsKt.getAVAILABLE_PROCESSORS()), 0, 0, 12, (Object) null);
        f32930IO = defaultScheduler.blocking(systemProp$default);
    }

    public DefaultScheduler() {
        super(0, 0, null, 7, null);
    }

    @Override // kotlinx.coroutines.scheduling.ExperimentalCoroutineDispatcher, kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("DefaultDispatcher cannot be closed");
    }

    public final CoroutineDispatcher getIO() {
        return f32930IO;
    }

    @InternalCoroutinesApi
    public final String toDebugString() {
        return super.toString();
    }

    @Override // kotlinx.coroutines.scheduling.ExperimentalCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return TasksKt.DEFAULT_SCHEDULER_NAME;
    }
}
