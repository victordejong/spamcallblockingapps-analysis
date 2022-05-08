package kotlin.coroutines.intrinsics;

import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aF\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0083\b¢\u0006\u0002\b\b\u001aD\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\n\u001a]\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007ø\u0001��¢\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u001aA\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0003*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0012\u001aZ\u0010\u0011\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010\u0003*#\b\u0001\u0012\u0004\u0012\u0002H\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0087\bø\u0001��¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, m254d2 = {"createCoroutineFromSuspendFunction", "Lkotlin/coroutines/Continuation;", "", "T", "completion", BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, "Lkotlin/Function1;", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt.class */
public class IntrinsicsKt__IntrinsicsJvmKt {
    @SinceKotlin(version = "1.3")
    private static final <T> Continuation<Unit> createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt(final Continuation<? super T> continuation, final Function1<? super Continuation<? super T>, ? extends Object> function1) {
        ContinuationImpl continuationImpl;
        final CoroutineContext context = continuation.getContext();
        if (context == EmptyCoroutineContext.INSTANCE) {
            if (continuation == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }
            continuationImpl = new RestrictedContinuationImpl(continuation) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$1
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    switch (this.label) {
                        case 0:
                            this.label = 1;
                            ResultKt.throwOnFailure(obj);
                            obj = Function1.this.invoke(this);
                            break;
                        case 1:
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            break;
                        default:
                            throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    return obj;
                }
            };
        } else if (continuation == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        } else {
            continuationImpl = new ContinuationImpl(continuation, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2
                private int label;

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                protected Object invokeSuspend(@NotNull Object obj) {
                    switch (this.label) {
                        case 0:
                            this.label = 1;
                            ResultKt.throwOnFailure(obj);
                            obj = Function1.this.invoke(this);
                            break;
                        case 1:
                            this.label = 2;
                            ResultKt.throwOnFailure(obj);
                            break;
                        default:
                            throw new IllegalStateException("This coroutine had already completed".toString());
                    }
                    return obj;
                }
            };
        }
        return continuationImpl;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> Continuation<Unit> createCoroutineUnintercepted(@NotNull final Function1<? super Continuation<? super T>, ? extends Object> receiver$0, @NotNull Continuation<? super T> completion) {
        ContinuationImpl continuationImpl;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (receiver$0 instanceof BaseContinuationImpl) {
            continuationImpl = ((BaseContinuationImpl) receiver$0).create(probeCoroutineCreated);
        } else {
            final CoroutineContext context = probeCoroutineCreated.getContext();
            if (context == EmptyCoroutineContext.INSTANCE) {
                if (probeCoroutineCreated == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }
                continuationImpl = new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1
                    private int label;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        switch (this.label) {
                            case 0:
                                this.label = 1;
                                ResultKt.throwOnFailure(obj);
                                C2011xa50de660 intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1 = this;
                                Function1 function1 = receiver$0;
                                if (function1 != null) {
                                    obj = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1);
                                    break;
                                } else {
                                    throw new TypeCastException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            case 1:
                                this.label = 2;
                                ResultKt.throwOnFailure(obj);
                                break;
                            default:
                                throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            } else if (probeCoroutineCreated == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            } else {
                continuationImpl = new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2
                    private int label;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        switch (this.label) {
                            case 0:
                                this.label = 1;
                                ResultKt.throwOnFailure(obj);
                                C2012xa50de661 intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2 = this;
                                Function1 function1 = receiver$0;
                                if (function1 != null) {
                                    obj = ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2);
                                    break;
                                } else {
                                    throw new TypeCastException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            case 1:
                                this.label = 2;
                                ResultKt.throwOnFailure(obj);
                                break;
                            default:
                                throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            }
        }
        return continuationImpl;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <R, T> Continuation<Unit> createCoroutineUnintercepted(@NotNull final Function2<? super R, ? super Continuation<? super T>, ? extends Object> receiver$0, final R r, @NotNull Continuation<? super T> completion) {
        ContinuationImpl continuationImpl;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        final Continuation<?> probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(completion);
        if (receiver$0 instanceof BaseContinuationImpl) {
            continuationImpl = ((BaseContinuationImpl) receiver$0).create(r, probeCoroutineCreated);
        } else {
            final CoroutineContext context = probeCoroutineCreated.getContext();
            if (context == EmptyCoroutineContext.INSTANCE) {
                if (probeCoroutineCreated == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }
                continuationImpl = new RestrictedContinuationImpl(probeCoroutineCreated) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3
                    private int label;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        switch (this.label) {
                            case 0:
                                this.label = 1;
                                ResultKt.throwOnFailure(obj);
                                C2013xa50de662 intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3 = this;
                                Function2 function2 = receiver$0;
                                if (function2 != null) {
                                    obj = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3);
                                    break;
                                } else {
                                    throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            case 1:
                                this.label = 2;
                                ResultKt.throwOnFailure(obj);
                                break;
                            default:
                                throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            } else if (probeCoroutineCreated == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            } else {
                continuationImpl = new ContinuationImpl(probeCoroutineCreated, context) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4
                    private int label;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        switch (this.label) {
                            case 0:
                                this.label = 1;
                                ResultKt.throwOnFailure(obj);
                                C2014xa50de663 intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4 = this;
                                Function2 function2 = receiver$0;
                                if (function2 != null) {
                                    obj = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, intrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4);
                                    break;
                                } else {
                                    throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            case 1:
                                this.label = 2;
                                ResultKt.throwOnFailure(obj);
                                break;
                            default:
                                throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            }
        }
        return continuationImpl;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final <T> Continuation<T> intercepted(@NotNull Continuation<? super T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationImpl continuationImpl = (ContinuationImpl) (!(receiver$0 instanceof ContinuationImpl) ? null : receiver$0);
        Continuation<T> continuation = (Continuation<T>) receiver$0;
        if (continuationImpl != null) {
            Continuation<Object> intercepted = continuationImpl.intercepted();
            continuation = (Continuation<T>) receiver$0;
            if (intercepted != null) {
                continuation = (Continuation<T>) intercepted;
            }
        }
        return continuation;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <T> Object startCoroutineUninterceptedOrReturn(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        if (function1 != null) {
            return ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1)).invoke(continuation);
        }
        throw new TypeCastException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <R, T> Object startCoroutineUninterceptedOrReturn(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        if (function2 != null) {
            return ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(r, continuation);
        }
        throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }
}
