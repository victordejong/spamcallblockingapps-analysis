package com.hiya.stingray.p030ui.p038w;

import android.view.View;
import androidx.fragment.app.e;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.w.h$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/h$j.class */
final class h$j implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ h f4967f;

    h$j(h hVar) {
        this.f4967f = hVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f4967f.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        } else {
            k.o();
            throw null;
        }
    }
}
