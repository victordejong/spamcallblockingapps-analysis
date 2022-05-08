package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u001a\u000f\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0001\u0010\u0002\u001a6\u0010\n\u001a\u00028��\"\u0004\b��\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u001b\u0010\r\u001a\u00020\u0004*\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000e\"\u0016\u0010\u0010\u001a\u00020\u000f8��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011\"\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011\"\u001c\u0010\u0014\u001a\u00020\u00138��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000f*\u00020\u00048@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "createDefaultDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "T", "Lkotlin/coroutines/CoroutineContext;", "context", "", "countOrElement", "Lkotlin/Function0;", "block", "withCoroutineContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlinx/coroutines/CoroutineScope;", "newCoroutineContext", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;", "", "COROUTINES_SCHEDULER_PROPERTY_NAME", "Ljava/lang/String;", "DEBUG_THREAD_NAME_SEPARATOR", "", "useCoroutinesScheduler", "Z", "getUseCoroutinesScheduler", "()Z", "getCoroutineName", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "coroutineName", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineContextKt.class */
public final class CoroutineContextKt {

    /* renamed from: a */
    private static final boolean f21132a;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r0.equals("on") != false) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (r0.equals("") != false) goto L_0x0046;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.SystemPropsKt.m440d(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000d
            goto L_0x0046
        L_0x000d:
            r0 = r4
            int r0 = r0.hashCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003d
            r0 = r5
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L_0x0031
            r0 = r5
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 != r1) goto L_0x004d
            r0 = r4
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
            r0 = 0
            r6 = r0
            goto L_0x0048
        L_0x0031:
            r0 = r4
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
            goto L_0x0046
        L_0x003d:
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
        L_0x0046:
            r0 = 1
            r6 = r0
        L_0x0048:
            r0 = r6
            kotlinx.coroutines.CoroutineContextKt.f21132a = r0
            return
        L_0x004d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CoroutineContextKt.m24467clinit():void");
    }

    @NotNull
    /* renamed from: a */
    public static final CoroutineDispatcher m1325a() {
        return f21132a ? DefaultScheduler.f23990m : CommonPool.f21119i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        if (r4 != null) goto L_0x0039;
     */
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m1324b(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r4) {
        /*
            boolean r0 = kotlinx.coroutines.DebugKt.m1306c()
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            kotlinx.coroutines.CoroutineId$Key r1 = kotlinx.coroutines.CoroutineId.f21139g
            kotlin.coroutines.CoroutineContext$Element r0 = r0.get(r1)
            kotlinx.coroutines.CoroutineId r0 = (kotlinx.coroutines.CoroutineId) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005c
            r0 = r4
            kotlinx.coroutines.CoroutineName$Key r1 = kotlinx.coroutines.CoroutineName.f21141g
            kotlin.coroutines.CoroutineContext$Element r0 = r0.get(r1)
            kotlinx.coroutines.CoroutineName r0 = (kotlinx.coroutines.CoroutineName) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            java.lang.String r0 = r0.m1313t()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            goto L_0x0039
        L_0x0036:
            java.lang.String r0 = "coroutine"
            r4 = r0
        L_0x0039:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            long r1 = r1.m1314t()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            return r0
        L_0x005c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CoroutineContextKt.m1324b(kotlin.coroutines.CoroutineContext):java.lang.String");
    }

    @ExperimentalCoroutinesApi
    @NotNull
    /* renamed from: c */
    public static final CoroutineContext m1323c(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext) {
        CoroutineContext plus = coroutineScope.mo567u().plus(coroutineContext);
        CoroutineContext plus2 = DebugKt.m1306c() ? plus.plus(new CoroutineId(DebugKt.m1307b().incrementAndGet())) : plus;
        CoroutineContext coroutineContext2 = plus2;
        if (plus != Dispatchers.m1268a()) {
            coroutineContext2 = plus2;
            if (plus.get(ContinuationInterceptor.f20640b) == null) {
                coroutineContext2 = plus2.plus(Dispatchers.m1268a());
            }
        }
        return coroutineContext2;
    }
}
