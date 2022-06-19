package com.hiya.stingray.p030ui.submitreport;

import android.view.View;
import com.hiya.stingray.t.b1;
/* renamed from: com.hiya.stingray.ui.submitreport.g$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/g$a.class */
class g$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b1 f4940f;

    /* renamed from: g */
    final /* synthetic */ g f4941g;

    g$a(g gVar, b1 b1Var) {
        this.f4941g = gVar;
        this.f4940f = b1Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g.c(this.f4941g).onNext(this.f4940f);
    }
}
