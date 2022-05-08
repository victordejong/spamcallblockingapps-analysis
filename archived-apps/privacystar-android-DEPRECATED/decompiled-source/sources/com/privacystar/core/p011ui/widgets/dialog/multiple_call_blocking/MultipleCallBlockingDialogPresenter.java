package com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingContract;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u001f\u0010\u0005\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00030\u00030\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogPresenter;", "", "viewRef", "Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingContract$View;", "(Lcom/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingContract$View;)V", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "getView", "()Ljava/lang/ref/WeakReference;", "onViewCreated", "", "secondAlert", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.multiple_call_blocking.MultipleCallBlockingDialogPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/multiple_call_blocking/MultipleCallBlockingDialogPresenter.class */
public final class MultipleCallBlockingDialogPresenter {
    @NotNull
    private final WeakReference<MultipleCallBlockingContract.View> view;

    public MultipleCallBlockingDialogPresenter(@NotNull MultipleCallBlockingContract.View viewRef) {
        Intrinsics.checkParameterIsNotNull(viewRef, "viewRef");
        this.view = new WeakReference<>(viewRef);
    }

    @NotNull
    public final WeakReference<MultipleCallBlockingContract.View> getView() {
        return this.view;
    }

    public final void onViewCreated(boolean z) {
        Timber.m37d("View created with secondAlert == " + z, new Object[0]);
        if (z) {
            MultipleCallBlockingContract.View view = this.view.get();
            if (view != null) {
                view.setupAppClosingAlert();
                return;
            }
            return;
        }
        MultipleCallBlockingContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.setupUninstallAlert();
        }
    }
}
