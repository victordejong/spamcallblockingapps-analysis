package com.hiya.stingray.p030ui.premium.upsell;

import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.manager.n4;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$h.class */
final class c$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ c f4856f;

    c$h(c cVar) {
        this.f4856f = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n4 i1 = this.f4856f.i1();
        e activity = this.f4856f.getActivity();
        if (activity == null) {
            k.o();
            throw null;
        }
        k.c(activity, "activity!!");
        i1.a(activity);
        this.f4856f.g1().m1112c();
    }
}
