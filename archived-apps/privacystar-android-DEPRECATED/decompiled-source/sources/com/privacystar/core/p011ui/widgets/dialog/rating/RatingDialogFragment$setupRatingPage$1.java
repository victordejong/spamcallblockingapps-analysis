package com.privacystar.core.p011ui.widgets.dialog.rating;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0007\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", FirebaseAnalytics.Param.SCORE, "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment$setupRatingPage$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment$setupRatingPage$1.class */
final class RatingDialogFragment$setupRatingPage$1 extends Lambda implements Function1<Float, Unit> {
    final /* synthetic */ RatingDialogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RatingDialogFragment$setupRatingPage$1(RatingDialogFragment ratingDialogFragment) {
        super(1);
        this.this$0 = ratingDialogFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
        invoke(f.floatValue());
        return Unit.INSTANCE;
    }

    public final void invoke(float f) {
        this.this$0.getPresenter().onRatingSelected((int) f);
    }
}
