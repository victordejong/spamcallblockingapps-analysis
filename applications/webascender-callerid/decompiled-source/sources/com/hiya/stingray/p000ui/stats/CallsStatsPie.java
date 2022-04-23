package com.hiya.stingray.p000ui.stats;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.hiya.stingray.util.C0146e0;
import g.e.a.a.a.b;
import g.e.a.a.c.f;
import g.e.a.a.d.c;
import g.e.a.a.d.e;
import g.e.a.a.e.n;
import g.e.a.a.e.o;
import g.e.a.a.e.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.stats.CallsStatsPie */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/CallsStatsPie.class */
public final class CallsStatsPie extends FrameLayout {

    /* renamed from: f */
    private final f f244f;

    /* renamed from: g */
    private final View f245g;

    /* renamed from: h */
    private c$a f246h = new c$a(null, 0, 0, 0, 0, null, 63, null);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallsStatsPie(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        k.g(context, "context");
        k.g(attributeSet, "attributeSet");
        f fVar = new f(context);
        this.f244f = fVar;
        View inflate = View.inflate(context, 2131492922, null);
        this.f245g = inflate;
        addView((View) fVar, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -1));
        fVar.setTouchEnabled(false);
        c description = fVar.getDescription();
        k.c(description, "pieChart.description");
        description.g(false);
        e legend = fVar.getLegend();
        k.c(legend, "pieChart.legend");
        legend.g(false);
        fVar.setDrawSlicesUnderHole(false);
        fVar.setHoleRadius(66.0f);
        fVar.setTransparentCircleAlpha(0);
        fVar.setHoleColor(Color.argb(1, 0, 0, 0));
        addView(inflate, new FrameLayout.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public final void m1037a() {
        this.f244f.f(400, b.a);
    }

    public final c$a getData() {
        return this.f246h;
    }

    public final void setData(c$a c_a) {
        k.g(c_a, "value");
        this.f246h = c_a;
        List<Number> j = kotlin.s.k.j(new Integer[]{Integer.valueOf(c_a.m1029e()), Integer.valueOf(c_a.m1031c()), Integer.valueOf(c_a.m1033a()), Integer.valueOf(c_a.m1030d())});
        ArrayList arrayList = new ArrayList(kotlin.s.k.q(j, 10));
        for (Number number : j) {
            arrayList.add(new p(number.intValue()));
        }
        o oVar = new o(arrayList, "");
        View view = this.f245g;
        k.c(view, "totalLayout");
        TextView textView = (TextView) view.findViewById(com.hiya.stingray.o.B4);
        k.c(textView, "totalLayout.totalCallsNumber");
        textView.setText(String.valueOf(kotlin.s.k.e0(j)));
        oVar.J0(false);
        oVar.u0(false);
        Context context = getContext();
        k.c(context, "context");
        int g = C0146e0.m952g(context, 2131099984);
        Context context2 = getContext();
        k.c(context2, "context");
        int g2 = C0146e0.m952g(context2, 2131100023);
        Context context3 = getContext();
        k.c(context3, "context");
        int g3 = C0146e0.m952g(context3, 2131099891);
        Context context4 = getContext();
        k.c(context4, "context");
        oVar.I0(new int[]{g, g2, g3, C0146e0.m952g(context4, 2131099713)});
        this.f244f.setData(new n(oVar));
        this.f244f.invalidate();
    }
}
