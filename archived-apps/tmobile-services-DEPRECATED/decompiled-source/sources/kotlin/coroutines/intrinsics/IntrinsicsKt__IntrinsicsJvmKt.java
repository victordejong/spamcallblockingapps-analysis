package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aH\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u00012\u001c\b\u0004\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u0083\b¢\u0006\u0004\b\u0007\u0010\b\u001aF\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H\u0007ø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u001a_\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001\"\u0004\b��\u0010\f\"\u0004\b\u0001\u0010��*#\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\r¢\u0006\u0002\b\u000e2\u0006\u0010\u000f\u001a\u00028��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0007ø\u0001��¢\u0006\u0004\b\n\u0010\u0010\u001a%\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0001H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001aC\u0010\u0013\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014\u001a\\\u0010\u0013\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\f\"\u0004\b\u0001\u0010��*#\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\r¢\u0006\u0002\b\u000e2\u0006\u0010\u000f\u001a\u00028��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\u0013\u0010\u0015\u001ap\u0010\u0013\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\f\"\u0004\b\u0001\u0010\u0016\"\u0004\b\u0002\u0010��*)\b\u0001\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0017¢\u0006\u0002\b\u000e2\u0006\u0010\u000f\u001a\u00028��2\u0006\u0010\u0018\u001a\u00028\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00020\u0001H\u0081\bø\u0001��¢\u0006\u0004\b\u0013\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"T", "Lkotlin/coroutines/Continuation;", "completion", "Lkotlin/Function1;", "", "block", "", "createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt", "(Lkotlin/coroutines/Continuation;Lkotlin/Function1;)Lkotlin/coroutines/Continuation;", "createCoroutineFromSuspendFunction", "createCoroutineUnintercepted", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "intercepted", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "startCoroutineUninterceptedOrReturn", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "P", "Lkotlin/Function3;", "param", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/coroutines/intrinsics/IntrinsicsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt.class */
public class IntrinsicsKt__IntrinsicsJvmKt {
    @SinceKotlin
    @NotNull
    /* renamed from: a */
    public static <T> Continuation<Unit> m1923a(@NotNull final Function1<? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, @NotNull final Continuation<? super T> completion) {
        Continuation<Unit> continuation;
        Intrinsics.m1830e(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Intrinsics.m1830e(completion, "completion");
        DebugProbesKt.m1906a(completion);
        if (createCoroutineUnintercepted instanceof BaseContinuationImpl) {
            continuation = ((BaseContinuationImpl) createCoroutineUnintercepted).create(completion);
        } else {
            final CoroutineContext context = completion.getContext();
            if (context == EmptyCoroutineContext.f20645f) {
                if (completion != null) {
                    continuation = new RestrictedContinuationImpl(completion, completion, createCoroutineUnintercepted) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$1

                        /* renamed from: f */
                        private int f20648f;

                        /* renamed from: g */
                        final /* synthetic */ Function1 f20649g;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(completion);
                            this.f20649g = createCoroutineUnintercepted;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @Nullable
                        protected Object invokeSuspend(@NotNull Object obj) {
                            int i = this.f20648f;
                            if (i == 0) {
                                this.f20648f = 1;
                                ResultKt.m2472b(obj);
                                Function1 function1 = this.f20649g;
                                if (function1 != null) {
                                    TypeIntrinsics.m1785b(function1, 1);
                                    obj = function1.invoke(this);
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            } else if (i == 1) {
                                this.f20648f = 2;
                                ResultKt.m2472b(obj);
                            } else {
                                throw new IllegalStateException("This coroutine had already completed".toString());
                            }
                            return obj;
                        }
                    };
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }
            } else if (completion != null) {
                continuation = new ContinuationImpl(completion, context, completion, context, createCoroutineUnintercepted) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2

                    /* renamed from: f */
                    private int f20650f;

                    /* renamed from: g */
                    final /* synthetic */ Function1 f20651g;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(completion, context);
                        this.f20651g = createCoroutineUnintercepted;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        int i = this.f20650f;
                        if (i == 0) {
                            this.f20650f = 1;
                            ResultKt.m2472b(obj);
                            Function1 function1 = this.f20651g;
                            if (function1 != null) {
                                TypeIntrinsics.m1785b(function1, 1);
                                obj = function1.invoke(this);
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                            }
                        } else if (i == 1) {
                            this.f20650f = 2;
                            ResultKt.m2472b(obj);
                        } else {
                            throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }
        }
        return continuation;
    }

    @SinceKotlin
    @NotNull
    /* renamed from: b */
    public static <R, T> Continuation<Unit> m1922b(@NotNull final Function2<? super R, ? super Continuation<? super T>, ? extends Object> createCoroutineUnintercepted, final R r, @NotNull final Continuation<? super T> completion) {
        Continuation<Unit> continuation;
        Intrinsics.m1830e(createCoroutineUnintercepted, "$this$createCoroutineUnintercepted");
        Intrinsics.m1830e(completion, "completion");
        DebugProbesKt.m1906a(completion);
        if (createCoroutineUnintercepted instanceof BaseContinuationImpl) {
            continuation = ((BaseContinuationImpl) createCoroutineUnintercepted).create(r, completion);
        } else {
            final CoroutineContext context = completion.getContext();
            if (context == EmptyCoroutineContext.f20645f) {
                if (completion != null) {
                    continuation = new RestrictedContinuationImpl(completion, completion, createCoroutineUnintercepted, r) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3

                        /* renamed from: f */
                        private int f20652f;

                        /* renamed from: g */
                        final /* synthetic */ Function2 f20653g;

                        /* renamed from: h */
                        final /* synthetic */ Object f20654h;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(completion);
                            this.f20653g = createCoroutineUnintercepted;
                            this.f20654h = r;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @Nullable
                        protected Object invokeSuspend(@NotNull Object obj) {
                            int i = this.f20652f;
                            if (i == 0) {
                                this.f20652f = 1;
                                ResultKt.m2472b(obj);
                                Function2 function2 = this.f20653g;
                                if (function2 != null) {
                                    TypeIntrinsics.m1785b(function2, 2);
                                    obj = function2.mo422o(this.f20654h, this);
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                                }
                            } else if (i == 1) {
                                this.f20652f = 2;
                                ResultKt.m2472b(obj);
                            } else {
                                throw new IllegalStateException("This coroutine had already completed".toString());
                            }
                            return obj;
                        }
                    };
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }
            } else if (completion != null) {
                continuation = new ContinuationImpl(completion, context, completion, context, createCoroutineUnintercepted, r) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4

                    /* renamed from: f */
                    private int f20655f;

                    /* renamed from: g */
                    final /* synthetic */ Function2 f20656g;

                    /* renamed from: h */
                    final /* synthetic */ Object f20657h;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(completion, context);
                        this.f20656g = createCoroutineUnintercepted;
                        this.f20657h = r;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    protected Object invokeSuspend(@NotNull Object obj) {
                        int i = this.f20655f;
                        if (i == 0) {
                            this.f20655f = 1;
                            ResultKt.m2472b(obj);
                            Function2 function2 = this.f20656g;
                            if (function2 != null) {
                                TypeIntrinsics.m1785b(function2, 2);
                                obj = function2.mo422o(this.f20657h, this);
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                            }
                        } else if (i == 1) {
                            this.f20655f = 2;
                            ResultKt.m2472b(obj);
                        } else {
                            throw new IllegalStateException("This coroutine had already completed".toString());
                        }
                        return obj;
                    }
                };
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }
        }
        return continuation;
    }

    @SinceKotlin
    @NotNull
    /* renamed from: c */
    public static <T> Continuation<T> m1921c(@NotNull Continuation<? super T> intercepted) {
        Intrinsics.m1830e(intercepted, "$this$intercepted");
        ContinuationImpl continuationImpl = (ContinuationImpl) (!(intercepted instanceof ContinuationImpl) ? null : intercepted);
        Continuation<T> continuation = (Continuation<T>) intercepted;
        if (continuationImpl != null) {
            Continuation<Object> intercepted2 = continuationImpl.intercepted();
            continuation = (Continuation<T>) intercepted;
            if (intercepted2 != null) {
                continuation = (Continuation<T>) intercepted2;
            }
        }
        return continuation;
    }
}
