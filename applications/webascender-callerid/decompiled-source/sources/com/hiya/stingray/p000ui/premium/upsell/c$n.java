package com.hiya.stingray.p000ui.premium.upsell;

import android.widget.LinearLayout;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$n */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$n.class */
final class c$n implements Runnable {

    /* renamed from: f */
    final /* synthetic */ c f185f;

    c$n(c cVar) {
        this.f185f = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f185f;
        int i = o.i2;
        LinearLayout linearLayout = (LinearLayout) cVar.f1(i);
        if (linearLayout != null) {
            LinearLayout linearLayout2 = (LinearLayout) this.f185f.f1(i);
            k.c(linearLayout2, "mainContent");
            int paddingLeft = linearLayout2.getPaddingLeft();
            LinearLayout linearLayout3 = (LinearLayout) this.f185f.f1(o.v1);
            k.c(linearLayout3, "header");
            int height = linearLayout3.getHeight();
            LinearLayout linearLayout4 = (LinearLayout) this.f185f.f1(i);
            k.c(linearLayout4, "mainContent");
            int paddingRight = linearLayout4.getPaddingRight();
            LinearLayout linearLayout5 = (LinearLayout) this.f185f.f1(i);
            k.c(linearLayout5, "mainContent");
            linearLayout.setPadding(paddingLeft, height, paddingRight, linearLayout5.getPaddingBottom());
        }
    }
}
