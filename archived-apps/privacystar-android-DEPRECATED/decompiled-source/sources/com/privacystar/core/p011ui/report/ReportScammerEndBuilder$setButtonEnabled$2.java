package com.privacystar.core.p011ui.report;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportScammerEndBuilder$setButtonEnabled$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportScammerEndBuilder$setButtonEnabled$2.class */
final class ReportScammerEndBuilder$setButtonEnabled$2 extends MutablePropertyReference0 {
    ReportScammerEndBuilder$setButtonEnabled$2(ReportScammerEndBuilder reportScammerEndBuilder) {
        super(reportScammerEndBuilder);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return ReportScammerEndBuilder.access$getSubmitNextButton$p((ReportScammerEndBuilder) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "submitNextButton";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(ReportScammerEndBuilder.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getSubmitNextButton()Ljava/lang/ref/WeakReference;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ReportScammerEndBuilder reportScammerEndBuilder = (ReportScammerEndBuilder) this.receiver;
        ReportScammerEndBuilder.submitNextButton = (WeakReference) obj;
    }
}
