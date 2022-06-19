package p193e.p194a.p673d0;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.FeedbackDialogActivity;
import com.truecaller.p183ui.components.FeedbackItemView;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.d0.r */
/* loaded from: classes6-dex2jar.jar:e/a/d0/r.class */
public final class C12542r implements AbstractC12540q {

    /* renamed from: a */
    public final Context f36649a;

    @Inject
    public C12542r(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f36649a = context;
    }

    @Override // p193e.p194a.p673d0.AbstractC12540q
    /* renamed from: a */
    public void mo22884a(C12560v c12560v) {
        l.e(c12560v, "callState");
        FeedbackItemView.FeedbackItem m34530c = FeedbackItemView.m34530c(FeedbackItemView.DisplaySource.BLOCKED_CALL, this.f36649a);
        if (m34530c != null) {
            Context context = this.f36649a;
            FeedbackItemView.DisplaySource displaySource = m34530c.f15759k;
            FeedbackItemView.FeedbackItem.FeedbackItemState feedbackItemState = m34530c.f15758j;
            int i = FeedbackDialogActivity.f15550d;
            Intent putExtra = new Intent(context, FeedbackDialogActivity.class).putExtra("FeedbackDialogActivity.EXTRA_SOURCE", displaySource.ordinal()).putExtra("FeedbackDialogActivity.EXTRA_STATE", feedbackItemState.ordinal());
            putExtra.setFlags(268435456);
            context.startActivity(putExtra);
        }
    }
}
