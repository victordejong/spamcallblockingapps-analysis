package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/i.class */
public final class C0023i {
    /* renamed from: a */
    public static final void m1356a(AbstractC0022g gVar, boolean z) {
        k.g(gVar, "$this$setIsLoading");
        ProgressBar progressBar = (ProgressBar) gVar.m1357k().findViewById(o.Y2);
        k.c(progressBar, "getItemView().progressBar");
        progressBar.setVisibility(z ? 0 : 8);
    }

    /* renamed from: b */
    public static final void m1355b(AbstractC0022g gVar, int i) {
        k.g(gVar, "$this$setMainIcon");
        ((ImageView) gVar.m1357k().findViewById(o.O1)).setImageResource(i);
    }

    /* renamed from: c */
    public static final void m1354c(AbstractC0022g gVar, int i) {
        k.g(gVar, "$this$setName");
        ((TextView) gVar.m1357k().findViewById(o.P1)).setText(i);
        TextView textView = (TextView) gVar.m1357k().findViewById(o.Q1);
        k.c(textView, "getItemView().itemSubtextTv");
        textView.setVisibility(8);
    }

    /* renamed from: d */
    public static final void m1353d(AbstractC0022g gVar, String str) {
        k.g(gVar, "$this$setName");
        k.g(str, "name");
        TextView textView = (TextView) gVar.m1357k().findViewById(o.P1);
        k.c(textView, "getItemView().itemNameTv");
        textView.setText(str);
        TextView textView2 = (TextView) gVar.m1357k().findViewById(o.Q1);
        k.c(textView2, "getItemView().itemSubtextTv");
        textView2.setVisibility(8);
    }

    /* renamed from: e */
    public static final void m1352e(AbstractC0022g gVar, int i) {
        k.g(gVar, "$this$setSubtext");
        View k = gVar.m1357k();
        int i2 = o.Q1;
        ((TextView) k.findViewById(i2)).setText(i);
        TextView textView = (TextView) gVar.m1357k().findViewById(i2);
        k.c(textView, "getItemView().itemSubtextTv");
        textView.setVisibility(0);
    }

    /* renamed from: f */
    public static final void m1351f(AbstractC0022g gVar, int i) {
        k.g(gVar, "$this$setSupplementaryIcon");
        ((TextView) gVar.m1357k().findViewById(o.P1)).setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
    }
}
