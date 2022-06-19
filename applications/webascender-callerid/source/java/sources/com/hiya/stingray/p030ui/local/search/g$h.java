package com.hiya.stingray.p030ui.local.search;

import android.view.View;
import androidx.fragment.app.e;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.search.g$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/search/g$h.class */
final class g$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ g f4753f;

    g$h(g gVar) {
        this.f4753f = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f4753f.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        } else {
            k.o();
            throw null;
        }
    }
}
