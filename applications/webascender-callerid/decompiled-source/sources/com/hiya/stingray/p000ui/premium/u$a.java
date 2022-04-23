package com.hiya.stingray.p000ui.premium;

import android.view.View;
import androidx.fragment.app.e;
/* renamed from: com.hiya.stingray.ui.premium.u$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/u$a.class */
final class u$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ u f167f;

    u$a(u uVar) {
        this.f167f = uVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f167f.getActivity();
        if (activity != null) {
            activity.setResult(-1);
        }
        e activity2 = this.f167f.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }
}
