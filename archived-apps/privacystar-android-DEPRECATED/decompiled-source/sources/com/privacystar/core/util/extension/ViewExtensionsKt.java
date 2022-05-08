package com.privacystar.core.util.extension;

import android.view.View;
import android.view.animation.OvershootInterpolator;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\u0014\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0007*\u00020\u0002\u001a\u001c\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\f\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000b\u001a\u001c\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0012\u001a\u00020\u0007*\u00020\u0002¨\u0006\u0013"}, m254d2 = {"fadeIn", "Lio/reactivex/Completable;", "Landroid/view/View;", "duration", "", "fadeOut", "gone", "", "invisible", "rotate", "degree", "", "showIf", "show", "", "slideIn", "offset", "slideOut", "visible", "app-core"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/ViewExtensionsKt.class */
public final class ViewExtensionsKt {
    @NotNull
    public static final Completable fadeIn(@NotNull final View receiver$0, final long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$fadeIn$1

            @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
            /* renamed from: com.privacystar.core.util.extension.ViewExtensionsKt$fadeIn$1$1 */
            /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/ViewExtensionsKt$fadeIn$1$1.class */
            static final class C16801 extends FunctionReference implements Function0<Unit> {
                C16801(CompletableEmitter completableEmitter) {
                    super(0, completableEmitter);
                }

                @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
                public final String getName() {
                    return "onComplete";
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final KDeclarationContainer getOwner() {
                    return Reflection.getOrCreateKotlinClass(CompletableEmitter.class);
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final String getSignature() {
                    return "onComplete()V";
                }

                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((CompletableEmitter) this.receiver).onComplete();
                }
            }

            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(@NotNull CompletableEmitter it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                receiver$0.setVisibility(0);
                receiver$0.setAlpha(0.0f);
                receiver$0.animate().alpha(1.0f).setDuration(j).withEndAction(new ViewExtensionsKt$sam$java_lang_Runnable$0(new C16801(it)));
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   …ction(it::onComplete)\n  }");
        return create;
    }

    @NotNull
    public static /* synthetic */ Completable fadeIn$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 200;
        }
        return fadeIn(view, j);
    }

    @NotNull
    public static final Completable fadeOut(@NotNull final View receiver$0, final long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$fadeOut$1
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(@NotNull final CompletableEmitter it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                receiver$0.animate().setDuration(j).alpha(0.0f).withEndAction(new Runnable() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$fadeOut$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        receiver$0.setVisibility(8);
                        it.onComplete();
                    }
                });
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   ….onComplete()\n      }\n  }");
        return create;
    }

    @NotNull
    public static /* synthetic */ Completable fadeOut$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 30;
        }
        return fadeOut(view, j);
    }

    public static final void gone(@NotNull View receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.setVisibility(8);
    }

    public static final void invisible(@NotNull View receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.setVisibility(4);
    }

    @NotNull
    public static final Completable rotate(@NotNull final View receiver$0, final float f, final long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$rotate$1

            @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
            /* renamed from: com.privacystar.core.util.extension.ViewExtensionsKt$rotate$1$1 */
            /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/ViewExtensionsKt$rotate$1$1.class */
            static final class C16821 extends FunctionReference implements Function0<Unit> {
                C16821(CompletableEmitter completableEmitter) {
                    super(0, completableEmitter);
                }

                @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
                public final String getName() {
                    return "onComplete";
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final KDeclarationContainer getOwner() {
                    return Reflection.getOrCreateKotlinClass(CompletableEmitter.class);
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final String getSignature() {
                    return "onComplete()V";
                }

                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((CompletableEmitter) this.receiver).onComplete();
                }
            }

            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(@NotNull CompletableEmitter it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                receiver$0.animate().rotation(f).setDuration(j).withEndAction(new ViewExtensionsKt$sam$java_lang_Runnable$0(new C16821(it)));
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   …ction(it::onComplete)\n  }");
        return create;
    }

    @NotNull
    public static /* synthetic */ Completable rotate$default(View view, float f, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 200;
        }
        return rotate(view, f, j);
    }

    public static final void showIf(@NotNull View receiver$0, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        if (z) {
            visible(receiver$0);
        } else {
            gone(receiver$0);
        }
    }

    @NotNull
    public static final Completable slideIn(@NotNull final View receiver$0, final float f) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$slideIn$1

            @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
            /* renamed from: com.privacystar.core.util.extension.ViewExtensionsKt$slideIn$1$1 */
            /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/ViewExtensionsKt$slideIn$1$1.class */
            static final class C16831 extends FunctionReference implements Function0<Unit> {
                C16831(CompletableEmitter completableEmitter) {
                    super(0, completableEmitter);
                }

                @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
                public final String getName() {
                    return "onComplete";
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final KDeclarationContainer getOwner() {
                    return Reflection.getOrCreateKotlinClass(CompletableEmitter.class);
                }

                @Override // kotlin.jvm.internal.CallableReference
                public final String getSignature() {
                    return "onComplete()V";
                }

                @Override // kotlin.jvm.functions.Function0
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((CompletableEmitter) this.receiver).onComplete();
                }
            }

            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(@NotNull CompletableEmitter it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                receiver$0.setVisibility(0);
                receiver$0.setAlpha(0.0f);
                receiver$0.setScaleX(0.0f);
                receiver$0.setScaleY(0.0f);
                receiver$0.setTranslationY(f);
                receiver$0.animate().alpha(1.0f).translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new OvershootInterpolator()).withEndAction(new ViewExtensionsKt$sam$java_lang_Runnable$0(new C16831(it)));
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   …ction(it::onComplete)\n  }");
        return create;
    }

    @NotNull
    public static final Completable slideOut(@NotNull final View receiver$0, final float f, final long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Completable create = Completable.create(new CompletableOnSubscribe() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$slideOut$1
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(@NotNull final CompletableEmitter it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                receiver$0.animate().alpha(0.0f).scaleX(0.0f).scaleY(0.0f).translationY(f).setDuration(j).withEndAction(new Runnable() { // from class: com.privacystar.core.util.extension.ViewExtensionsKt$slideOut$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        receiver$0.setVisibility(8);
                        it.onComplete();
                    }
                });
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(create, "Completable.create {\n   ….onComplete()\n      }\n  }");
        return create;
    }

    @NotNull
    public static /* synthetic */ Completable slideOut$default(View view, float f, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 200;
        }
        return slideOut(view, f, j);
    }

    public static final void visible(@NotNull View receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        receiver$0.setVisibility(0);
    }
}
