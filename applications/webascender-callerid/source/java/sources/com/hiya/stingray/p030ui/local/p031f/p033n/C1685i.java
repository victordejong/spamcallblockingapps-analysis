package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/i.class */
public final class C1685i {
    /* renamed from: a */
    public static final void m1356a(AbstractC1684g abstractC1684g, boolean z) {
        k.g(abstractC1684g, "$this$setIsLoading");
        ProgressBar progressBar = (ProgressBar) abstractC1684g.m1357k().findViewById(o.Y2);
        k.c(progressBar, "getItemView().progressBar");
        progressBar.setVisibility(z ? 0 : 8);
    }

    /* renamed from: b */
    public static final void m1355b(AbstractC1684g abstractC1684g, int i) {
        k.g(abstractC1684g, "$this$setMainIcon");
        ((ImageView) abstractC1684g.m1357k().findViewById(o.O1)).setImageResource(i);
    }

    /* renamed from: c */
    public static final void m1354c(AbstractC1684g abstractC1684g, int i) {
        k.g(abstractC1684g, "$this$setName");
        ((TextView) abstractC1684g.m1357k().findViewById(o.P1)).setText(i);
        TextView textView = (TextView) abstractC1684g.m1357k().findViewById(o.Q1);
        k.c(textView, "getItemView().itemSubtextTv");
        textView.setVisibility(8);
    }

    /* renamed from: d */
    public static final void m1353d(AbstractC1684g abstractC1684g, String str) {
        k.g(abstractC1684g, "$this$setName");
        k.g(str, "name");
        TextView textView = (TextView) abstractC1684g.m1357k().findViewById(o.P1);
        k.c(textView, "getItemView().itemNameTv");
        textView.setText(str);
        TextView textView2 = (TextView) abstractC1684g.m1357k().findViewById(o.Q1);
        k.c(textView2, "getItemView().itemSubtextTv");
        textView2.setVisibility(8);
    }

    /* renamed from: e */
    public static final void m1352e(AbstractC1684g abstractC1684g, int i) {
        k.g(abstractC1684g, "$this$setSubtext");
        View m1357k = abstractC1684g.m1357k();
        int i2 = o.Q1;
        ((TextView) m1357k.findViewById(i2)).setText(i);
        TextView textView = (TextView) abstractC1684g.m1357k().findViewById(i2);
        k.c(textView, "getItemView().itemSubtextTv");
        textView.setVisibility(0);
    }

    /* renamed from: f */
    public static final void m1351f(AbstractC1684g abstractC1684g, int i) {
        k.g(abstractC1684g, "$this$setSupplementaryIcon");
        ((TextView) abstractC1684g.m1357k().findViewById(o.P1)).setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
    }
}
