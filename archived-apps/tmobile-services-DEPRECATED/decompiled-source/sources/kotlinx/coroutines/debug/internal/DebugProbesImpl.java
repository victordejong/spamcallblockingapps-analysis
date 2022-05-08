package kotlinx.coroutines.debug.internal;

import java.text.SimpleDateFormat;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ð\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\bÀ\u0002\u0018��:\u0002\u008d\u0001B\n\b\u0002¢\u0006\u0005\b\u008c\u0001\u0010:J3\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0002\"\u0004\b��\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u000f\u0010\u0010J>\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\r\"\b\b��\u0010\u0012*\u00020\u00112\u001c\u0010\u0016\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00028��0\u0013H\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\fJ\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\r¢\u0006\u0004\b\u001b\u0010\u0010J)\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001d0\r2\u0006\u0010\u001c\u001a\u00020\u000e2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\r¢\u0006\u0004\b\u001f\u0010 J5\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001d0\r2\u0006\u0010\"\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010#2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\rH\u0002¢\u0006\u0004\b%\u0010&J?\u0010-\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020,0+2\u0006\u0010(\u001a\u00020'2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0)2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\rH\u0002¢\u0006\u0004\b-\u0010.J3\u00100\u001a\u00020'2\u0006\u0010/\u001a\u00020'2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001d0)2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\rH\u0002¢\u0006\u0004\b0\u00101J\u001d\u00103\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\n\u0018\u000102H\u0002¢\u0006\u0004\b3\u00104J\u0015\u00107\u001a\u00020!2\u0006\u00106\u001a\u000205¢\u0006\u0004\b7\u00108J\r\u00109\u001a\u00020\n¢\u0006\u0004\b9\u0010:J%\u0010<\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u001d0\rH\u0002¢\u0006\u0004\b<\u0010=J\u001b\u0010?\u001a\u00020\n2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0002¢\u0006\u0004\b?\u0010@J)\u0010C\u001a\b\u0012\u0004\u0012\u00028��0\u0002\"\u0004\b��\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H��¢\u0006\u0004\bA\u0010BJ\u001b\u0010F\u001a\u00020\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H��¢\u0006\u0004\bD\u0010EJ\u001b\u0010H\u001a\u00020\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H��¢\u0006\u0004\bG\u0010EJ'\u0010K\u001a\b\u0012\u0004\u0012\u00020\u001d0\r\"\b\b��\u0010\u0001*\u00020I2\u0006\u0010J\u001a\u00028��H\u0002¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\nH\u0002¢\u0006\u0004\bM\u0010:J\u000f\u0010N\u001a\u00020\nH\u0002¢\u0006\u0004\bN\u0010:J\r\u0010O\u001a\u00020\n¢\u0006\u0004\bO\u0010:J\u001f\u0010Q\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020P2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\bQ\u0010RJ#\u0010S\u001a\u00020\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\bS\u0010TJ/\u0010S\u001a\u00020\n2\n\u0010>\u001a\u0006\u0012\u0002\b\u00030\u00142\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\bS\u0010UJ;\u0010]\u001a\u00020\n*\u0002052\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020W0V2\n\u0010[\u001a\u00060Yj\u0002`Z2\u0006\u0010\\\u001a\u00020!H\u0002¢\u0006\u0004\b]\u0010^J\u001d\u0010>\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014*\u0006\u0012\u0002\b\u00030\u0002H\u0002¢\u0006\u0004\b>\u0010_J\u001a\u0010>\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0014*\u00020PH\u0082\u0010¢\u0006\u0004\b>\u0010`J\u0016\u0010a\u001a\u0004\u0018\u00010P*\u00020PH\u0082\u0010¢\u0006\u0004\ba\u0010bJ\u001b\u0010c\u001a\u0004\u0018\u00010\u0004*\b\u0012\u0004\u0012\u00020\u001d0\rH\u0002¢\u0006\u0004\bc\u0010dR\u0016\u0010e\u001a\u00020!8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\be\u0010fR\"\u0010h\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020W0g8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR \u0010m\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140j8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bk\u0010lR&\u0010n\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0014\u0012\u0004\u0012\u00020,0g8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010iR\u0016\u0010p\u001a\u00020o8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010s\u001a\u00020r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR$\u0010u\u001a\u0010\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\n\u0018\u0001028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010vR\"\u0010w\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u0016\u0010}\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0017\u0010\u0080\u0001\u001a\u00020,8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010zR&\u0010\u0081\u0001\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0081\u0001\u0010x\u001a\u0005\b\u0082\u0001\u0010z\"\u0005\b\u0083\u0001\u0010|R\u001b\u0010\u0084\u0001\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R$\u0010\u0089\u0001\u001a\u00020!*\u0002058B@\u0002X\u0082\u0004¢\u0006\u000f\u0012\u0006\b\u0087\u0001\u0010\u0088\u0001\u001a\u0005\b\u0086\u0001\u00108R\u001d\u0010\u008a\u0001\u001a\u00020,*\u00020\u001d8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001¨\u0006\u008e\u0001"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "T", "Lkotlin/coroutines/Continuation;", "completion", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "frame", "createOwner", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;", "Ljava/io/PrintStream;", "out", "", "dumpCoroutines", "(Ljava/io/PrintStream;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "dumpCoroutinesInfo", "()Ljava/util/List;", "", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "Lkotlin/coroutines/CoroutineContext;", "create", "dumpCoroutinesInfoImpl", "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "dumpCoroutinesSynchronized", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "info", "Ljava/lang/StackTraceElement;", "coroutineTrace", "enhanceStackTraceWithThreadDump", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;", "", "state", "Ljava/lang/Thread;", "thread", "enhanceStackTraceWithThreadDumpImpl", "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;", "", "indexOfResumeWith", "", "actualTrace", "Lkotlin/Pair;", "", "findContinuationStartIndex", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", "findIndexOfFrame", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/Function1;", "getDynamicAttach", "()Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/Job;", "job", "hierarchyToString", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "install", "()V", "frames", "printStackTrace", "(Ljava/io/PrintStream;Ljava/util/List;)V", "owner", "probeCoroutineCompleted", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", "", "throwable", "sanitizeStackTrace", "(Ljava/lang/Throwable;)Ljava/util/List;", "startWeakRefCleanerThread", "stopWeakRefCleanerThread", "uninstall", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "updateRunningState", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V", "updateState", "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "map", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "indent", "build", "(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "realCaller", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "toStackTraceFrame", "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "ARTIFICIAL_FRAME_MESSAGE", "Ljava/lang/String;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "callerInfoCache", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "getCapturedCoroutines", "()Ljava/util/Set;", "capturedCoroutines", "capturedCoroutinesMap", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "coroutineStateLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/text/SimpleDateFormat;", "dynamicAttach", "Lkotlin/jvm/functions/Function1;", "enableCreationStackTraces", "Z", "getEnableCreationStackTraces", "()Z", "setEnableCreationStackTraces", "(Z)V", "installations", "I", "isInstalled$kotlinx_coroutines_core", "isInstalled", "sanitizeStackTraces", "getSanitizeStackTraces", "setSanitizeStackTraces", "weakRefCleanerThread", "Ljava/lang/Thread;", "getDebugString", "getDebugString$annotations", "(Lkotlinx/coroutines/Job;)V", "debugString", "isInternalMethod", "(Ljava/lang/StackTraceElement;)Z", "<init>", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugProbesImpl.class */
public final class DebugProbesImpl {

    /* renamed from: a */
    private static final ConcurrentWeakMap<CoroutineOwner<?>, Boolean> f22276a = new ConcurrentWeakMap<>(false, 1, null);

    /* renamed from: b */
    private static boolean f22277b = true;

    /* renamed from: c */
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> f22278c = new ConcurrentWeakMap<>(true);

    /* renamed from: d */
    public static final DebugProbesImpl f22279d;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B'\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0016ø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "delegate", "Lkotlin/coroutines/Continuation;", "frame", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "info", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner.class */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {
        @JvmField
        @NotNull

        /* renamed from: f */
        public final Continuation<T> f22280f;
        @JvmField
        @NotNull

        /* renamed from: g */
        public final DebugCoroutineInfoImpl f22281g;

        /* renamed from: h */
        private final CoroutineStackFrame f22282h;

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.f22282h;
            return coroutineStackFrame != null ? coroutineStackFrame.getCallerFrame() : null;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.f22280f.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.f22282h;
            return coroutineStackFrame != null ? coroutineStackFrame.getStackTraceElement() : null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            DebugProbesImpl.f22279d.m749e(this);
            this.f22280f.resumeWith(obj);
        }

        @NotNull
        public String toString() {
            return this.f22280f.toString();
        }
    }

    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        f22279d = debugProbesImpl;
        new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        new ReentrantReadWriteLock();
        debugProbesImpl.m751c();
        AtomicLongFieldUpdater.newUpdater(DebugProbesImplSequenceNumberRefVolatile.class, "sequenceNumber");
    }

    private DebugProbesImpl() {
    }

    /* renamed from: c */
    private final Function1<Boolean, Unit> m751c() {
        Object obj;
        Object newInstance;
        try {
            Result.Companion companion = Result.f20418g;
            newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th);
            Result.m2481b(obj);
        }
        if (newInstance != null) {
            TypeIntrinsics.m1785b(newInstance, 1);
            obj = (Function1) newInstance;
            Result.m2481b(obj);
            Object obj2 = obj;
            if (Result.m2477f(obj)) {
                obj2 = null;
            }
            return (Function1) obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type (kotlin.Boolean) -> kotlin.Unit");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final void m749e(CoroutineOwner<?> coroutineOwner) {
        CoroutineStackFrame f;
        f22276a.remove(coroutineOwner);
        CoroutineStackFrame b = coroutineOwner.f22281g.m756b();
        if (b != null && (f = m748f(b)) != null) {
            f22278c.remove(f);
        }
    }

    /* renamed from: f */
    private final CoroutineStackFrame m748f(CoroutineStackFrame coroutineStackFrame) {
        CoroutineStackFrame callerFrame;
        do {
            callerFrame = coroutineStackFrame.getCallerFrame();
            if (callerFrame == null) {
                return null;
            }
            coroutineStackFrame = callerFrame;
        } while (callerFrame.getStackTraceElement() == null);
        return callerFrame;
    }

    /* renamed from: d */
    public final boolean m750d() {
        return f22277b;
    }
}
