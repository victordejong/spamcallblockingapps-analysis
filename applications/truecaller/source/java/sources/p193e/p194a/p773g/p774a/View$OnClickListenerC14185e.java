package p193e.p194a.p773g.p774a;

import android.view.View;
import com.truecaller.acs.p131ui.AcsSpamPremiumPromoView;
/* renamed from: e.a.g.a.e */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/e.class */
public final class View$OnClickListenerC14185e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AcsSpamPremiumPromoView f40933a;

    public View$OnClickListenerC14185e(AcsSpamPremiumPromoView acsSpamPremiumPromoView) {
        this.f40933a = acsSpamPremiumPromoView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Runnable runnable = this.f40933a.f9716v;
        if (runnable != null) {
            runnable.run();
        }
    }
}
