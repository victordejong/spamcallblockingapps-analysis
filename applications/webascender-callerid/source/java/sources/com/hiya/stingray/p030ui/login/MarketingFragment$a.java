package com.hiya.stingray.p030ui.login;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.hiya.stingray.util.C1844u;
/* renamed from: com.hiya.stingray.ui.login.MarketingFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/MarketingFragment$a.class */
class MarketingFragment$a extends ClickableSpan {

    /* renamed from: f */
    final /* synthetic */ URLSpan f4791f;

    /* renamed from: g */
    final /* synthetic */ MarketingFragment f4792g;

    MarketingFragment$a(MarketingFragment marketingFragment, URLSpan uRLSpan) {
        this.f4792g = marketingFragment;
        this.f4791f = uRLSpan;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        MarketingFragment.f1(this.f4792g, this.f4791f.getURL());
        C1844u.m834i(this.f4792g.getActivity(), this.f4791f.getURL());
    }
}
