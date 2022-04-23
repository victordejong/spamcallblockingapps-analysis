package com.hiya.stingray.p000ui.login;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.hiya.stingray.util.C0182u;
/* renamed from: com.hiya.stingray.ui.login.MarketingFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/MarketingFragment$a.class */
class MarketingFragment$a extends ClickableSpan {

    /* renamed from: f */
    final /* synthetic */ URLSpan f112f;

    /* renamed from: g */
    final /* synthetic */ MarketingFragment f113g;

    MarketingFragment$a(MarketingFragment marketingFragment, URLSpan uRLSpan) {
        this.f113g = marketingFragment;
        this.f112f = uRLSpan;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        MarketingFragment.f1(this.f113g, this.f112f.getURL());
        C0182u.m834i(this.f113g.getActivity(), this.f112f.getURL());
    }
}
