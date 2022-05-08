package com.privacystar.core.p011ui.report;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportGenericEndBuilder$setButtonEnabled$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportGenericEndBuilder$setButtonEnabled$1.class */
final class ReportGenericEndBuilder$setButtonEnabled$1 extends MutablePropertyReference0 {
    ReportGenericEndBuilder$setButtonEnabled$1(ReportGenericEndBuilder reportGenericEndBuilder) {
        super(reportGenericEndBuilder);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return ReportGenericEndBuilder.access$getSubmitButton$p((ReportGenericEndBuilder) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "submitButton";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(ReportGenericEndBuilder.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getSubmitButton()Ljava/lang/ref/WeakReference;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ReportGenericEndBuilder reportGenericEndBuilder = (ReportGenericEndBuilder) this.receiver;
        ReportGenericEndBuilder.submitButton = (WeakReference) obj;
    }
}
