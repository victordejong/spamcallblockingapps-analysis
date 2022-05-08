package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u001a\u001e\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010��H\u0081\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u000f\u0010\u0006\u001a\u00020\u0003H��¢\u0006\u0004\b\u0006\u0010\u0007\"\u001c\u0010\b\u001a\u00020\u00018��@��X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u001c\u0010\r\u001a\u00020\f8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u001c\u0010\u0011\u001a\u00020\u00018��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010\t\u001a\u0004\b\u0012\u0010\u000b\"\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015\"\u0016\u0010\u0017\u001a\u00020\u00138\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015\"\u0016\u0010\u0018\u001a\u00020\u00138\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015\"\u001c\u0010\u0019\u001a\u00020\u00018��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\t\u001a\u0004\b\u001a\u0010\u000b\"\u0016\u0010\u001b\u001a\u00020\u00138��@��X\u0080T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015¨\u0006\u001c"}, d2 = {"Lkotlin/Function0;", "", FirebaseAnalytics.Param.VALUE, "", "assert", "(Lkotlin/Function0;)V", "resetCoroutineId", "()V", "ASSERTIONS_ENABLED", "Z", "getASSERTIONS_ENABLED", "()Z", "Ljava/util/concurrent/atomic/AtomicLong;", "COROUTINE_ID", "Ljava/util/concurrent/atomic/AtomicLong;", "getCOROUTINE_ID", "()Ljava/util/concurrent/atomic/AtomicLong;", "DEBUG", "getDEBUG", "", "DEBUG_PROPERTY_NAME", "Ljava/lang/String;", "DEBUG_PROPERTY_VALUE_AUTO", "DEBUG_PROPERTY_VALUE_OFF", "DEBUG_PROPERTY_VALUE_ON", "RECOVER_STACK_TRACES", "getRECOVER_STACK_TRACES", "STACKTRACE_RECOVERY_PROPERTY_NAME", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DebugKt.class */
public final class DebugKt {

    /* renamed from: a */
    private static final boolean f21145a = CoroutineId.class.desiredAssertionStatus();

    /* renamed from: b */
    private static final boolean f21146b;

    /* renamed from: c */
    private static final boolean f21147c;
    @NotNull

    /* renamed from: d */
    private static final AtomicLong f21148d;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if (r0.equals("auto") != false) goto L_0x003c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r0.equals("on") != false) goto L_0x0066;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        if (r0.equals("") != false) goto L_0x0066;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
        r8 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
    static {
        /*
            java.lang.Class<kotlinx.coroutines.CoroutineId> r0 = kotlinx.coroutines.CoroutineId.class
            boolean r0 = r0.desiredAssertionStatus()
            kotlinx.coroutines.DebugKt.f21145a = r0
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.SystemPropsKt.m440d(r0)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0017
            goto L_0x003c
        L_0x0017:
            r0 = r5
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x005d
            r0 = r7
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L_0x0051
            r0 = r7
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 == r1) goto L_0x0043
            r0 = r7
            r1 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r0 != r1) goto L_0x0093
            r0 = r5
            java.lang.String r1 = "auto"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
        L_0x003c:
            boolean r0 = kotlinx.coroutines.DebugKt.f21145a
            r8 = r0
            goto L_0x0068
        L_0x0043:
            r0 = r5
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            r0 = 0
            r8 = r0
            goto L_0x0068
        L_0x0051:
            r0 = r5
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
            goto L_0x0066
        L_0x005d:
            r0 = r5
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0093
        L_0x0066:
            r0 = 1
            r8 = r0
        L_0x0068:
            r0 = r8
            kotlinx.coroutines.DebugKt.f21146b = r0
            r0 = r6
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0082
            r0 = r6
            r9 = r0
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            r1 = 1
            boolean r0 = kotlinx.coroutines.internal.SystemPropsKt.m439e(r0, r1)
            if (r0 == 0) goto L_0x0082
            r0 = 1
            r9 = r0
        L_0x0082:
            r0 = r9
            kotlinx.coroutines.DebugKt.f21147c = r0
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            kotlinx.coroutines.DebugKt.f21148d = r0
            return
        L_0x0093:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DebugKt.m24477clinit():void");
    }

    /* renamed from: a */
    public static final boolean m1308a() {
        return f21145a;
    }

    @NotNull
    /* renamed from: b */
    public static final AtomicLong m1307b() {
        return f21148d;
    }

    /* renamed from: c */
    public static final boolean m1306c() {
        return f21146b;
    }

    /* renamed from: d */
    public static final boolean m1305d() {
        return f21147c;
    }
}
