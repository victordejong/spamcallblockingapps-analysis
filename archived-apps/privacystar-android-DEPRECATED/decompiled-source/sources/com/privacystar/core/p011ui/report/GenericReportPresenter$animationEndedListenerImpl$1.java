package com.privacystar.core.p011ui.report;

import com.privacystar.core.p011ui.report.GenericReportContract;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��!\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, m254d2 = {"com/privacystar/core/ui/report/GenericReportPresenter$animationEndedListenerImpl$1", "Lcom/privacystar/core/ui/report/GenericReportContract$OnAnimationEnded;", "actualPage", "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;", "getActualPage", "()Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;", "setActualPage", "(Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;)V", "forward", "", "getForward", "()Z", "setForward", "(Z)V", "onAnimationEnded", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportPresenter$animationEndedListenerImpl$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportPresenter$animationEndedListenerImpl$1.class */
public final class GenericReportPresenter$animationEndedListenerImpl$1 implements GenericReportContract.OnAnimationEnded {
    @NotNull
    private GenericReportContract.ReportNavigation actualPage = GenericReportContract.ReportNavigation.NONE;
    private boolean forward = true;
    final /* synthetic */ GenericReportPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GenericReportPresenter$animationEndedListenerImpl$1(GenericReportPresenter genericReportPresenter) {
        this.this$0 = genericReportPresenter;
    }

    @NotNull
    public final GenericReportContract.ReportNavigation getActualPage() {
        return this.actualPage;
    }

    public final boolean getForward() {
        return this.forward;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.OnAnimationEnded
    public void onAnimationEnded() {
        WeakReference weakReference;
        GenericReportManagerImpl genericReportManagerImpl;
        weakReference = this.this$0.view;
        GenericReportContract.View view = (GenericReportContract.View) weakReference.get();
        if (view != null) {
            genericReportManagerImpl = this.this$0.manager;
            view.refreshMenuItem(!genericReportManagerImpl.shouldDynamicallyEnableDisableButtons());
        }
        this.this$0.goToView(this.actualPage, !this.forward);
    }

    public final void setActualPage(@NotNull GenericReportContract.ReportNavigation reportNavigation) {
        Intrinsics.checkParameterIsNotNull(reportNavigation, "<set-?>");
        this.actualPage = reportNavigation;
    }

    public final void setForward(boolean z) {
        this.forward = z;
    }
}
