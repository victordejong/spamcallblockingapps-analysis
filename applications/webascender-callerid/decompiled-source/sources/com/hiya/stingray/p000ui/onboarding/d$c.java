package com.hiya.stingray.p000ui.onboarding;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.onboarding.d$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/onboarding/d$c.class */
final class d$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ d f136f;

    d$c(d dVar) {
        this.f136f = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f136f.requireActivity().onBackPressed();
    }
}
