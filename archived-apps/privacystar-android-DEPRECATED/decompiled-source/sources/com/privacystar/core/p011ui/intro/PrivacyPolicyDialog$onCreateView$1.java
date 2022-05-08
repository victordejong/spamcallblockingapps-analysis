package com.privacystar.core.p011ui.intro;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PrivacyPolicyDialog$onCreateView$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyPolicyDialog$onCreateView$1.class */
final class PrivacyPolicyDialog$onCreateView$1 extends MutablePropertyReference0 {
    PrivacyPolicyDialog$onCreateView$1(PrivacyPolicyDialog privacyPolicyDialog) {
        super(privacyPolicyDialog);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return ((PrivacyPolicyDialog) this.receiver).getContinueListener();
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "continueListener";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(PrivacyPolicyDialog.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getContinueListener()Landroid/view/View$OnClickListener;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ((PrivacyPolicyDialog) this.receiver).setContinueListener((View.OnClickListener) obj);
    }
}
