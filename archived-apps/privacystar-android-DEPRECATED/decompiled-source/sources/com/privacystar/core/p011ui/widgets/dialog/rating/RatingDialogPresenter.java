package com.privacystar.core.p011ui.widgets.dialog.rating;

import android.os.Handler;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogContract;
import com.privacystar.core.service.PreferenceUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogContract$View;", "(Ljava/lang/ref/WeakReference;)V", "getView", "()Ljava/lang/ref/WeakReference;", "onNotNowClicked", "", "onRatingSelected", "stars", "", "onReviewClicked", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogPresenter.class */
public final class RatingDialogPresenter {
    @NotNull
    private final WeakReference<RatingDialogContract.View> view;

    public RatingDialogPresenter(@NotNull WeakReference<RatingDialogContract.View> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    @NotNull
    public final WeakReference<RatingDialogContract.View> getView() {
        return this.view;
    }

    public final void onNotNowClicked() {
        RatingDialogContract.View view = this.view.get();
        if (view != null) {
            view.finishDialog(true);
        }
    }

    public final void onRatingSelected(final int i) {
        Timber.m37d("User selected " + i + " Stars from rating dialog", new Object[0]);
        PreferenceUtil.putLastRatedVersion(BuildConfig.VERSION_CODE);
        new Handler().postDelayed(new Runnable() { // from class: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogPresenter$onRatingSelected$1
            @Override // java.lang.Runnable
            public final void run() {
                if (i > 3) {
                    RatingDialogContract.View view = RatingDialogPresenter.this.getView().get();
                    if (view != null) {
                        view.setupGoodReviewThankYouPage();
                        return;
                    }
                    return;
                }
                RatingDialogContract.View view2 = RatingDialogPresenter.this.getView().get();
                if (view2 != null) {
                    view2.finishDialog(false);
                }
            }
        }, 300L);
    }

    public final void onReviewClicked() {
        RatingDialogContract.View view = this.view.get();
        if (view != null) {
            view.goToPlayStore();
        }
    }

    public final void viewCreated() {
        RatingDialogContract.View view = this.view.get();
        if (view != null) {
            view.setupRatingPage();
        }
    }
}
