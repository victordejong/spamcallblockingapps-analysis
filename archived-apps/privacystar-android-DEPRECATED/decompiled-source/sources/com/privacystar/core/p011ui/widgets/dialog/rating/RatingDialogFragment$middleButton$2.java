package com.privacystar.core.p011ui.widgets.dialog.rating;

import android.widget.TextView;
import com.privacystar.core.C1566R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.dialog.rating.RatingDialogFragment$middleButton$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment$middleButton$2.class */
public final class RatingDialogFragment$middleButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ RatingDialogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RatingDialogFragment$middleButton$2(RatingDialogFragment ratingDialogFragment) {
        super(0);
        this.this$0 = ratingDialogFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        return (TextView) this.this$0._$_findCachedViewById(C1566R.C1569id.dialog_rate_app_middle_btn);
    }
}
