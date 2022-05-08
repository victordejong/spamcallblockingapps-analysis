package com.privacystar.core.p011ui.intro.intro_core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u0015\u0010\u0002\u001a\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006¢\u0006\u0002\b\u0007"}, m254d2 = {"<anonymous>", "", "p1", "", "Lkotlin/ParameterName;", "name", "shouldTransition", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroPresenter$onCreated$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroPresenter$onCreated$2.class */
public final class IntroPresenter$onCreated$2 extends FunctionReference implements Function1<Boolean, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public IntroPresenter$onCreated$2(IntroPresenter introPresenter) {
        super(1, introPresenter);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "processSpinnerTransition";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(IntroPresenter.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "processSpinnerTransition(Z)V";
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(boolean z) {
        ((IntroPresenter) this.receiver).processSpinnerTransition(z);
    }
}
