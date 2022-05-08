package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugProbesImpl$startWeakRefCleanerThread$1.class */
final class DebugProbesImpl$startWeakRefCleanerThread$1 extends Lambda implements Function0<Unit> {
    static {
        new DebugProbesImpl$startWeakRefCleanerThread$1();
    }

    DebugProbesImpl$startWeakRefCleanerThread$1() {
        super(0);
    }

    /* renamed from: b */
    public final void m747b() {
        ConcurrentWeakMap concurrentWeakMap;
        DebugProbesImpl debugProbesImpl = DebugProbesImpl.f22279d;
        concurrentWeakMap = DebugProbesImpl.f22278c;
        concurrentWeakMap.m776l();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        m747b();
        return Unit.f20447a;
    }
}
