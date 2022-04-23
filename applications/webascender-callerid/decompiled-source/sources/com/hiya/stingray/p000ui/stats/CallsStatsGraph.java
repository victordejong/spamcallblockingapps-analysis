package com.hiya.stingray.p000ui.stats;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.hiya.stingray.util.C0146e0;
import com.hiya.stingray.util.C0176o;
import g.e.a.a.a.b;
import g.e.a.a.c.e;
import g.e.a.a.d.c;
import g.e.a.a.d.h;
import g.e.a.a.e.i;
import g.e.a.a.e.j;
import g.e.a.a.e.k;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.t.a;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.stats.CallsStatsGraph */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/CallsStatsGraph.class */
public final class CallsStatsGraph extends FrameLayout {

    /* renamed from: f */
    private final e f241f;

    /* renamed from: g */
    private final SimpleDateFormat f242g = new SimpleDateFormat("d MMM");

    /* renamed from: h */
    private List<Integer> f243h;

    /* renamed from: com.hiya.stingray.ui.stats.CallsStatsGraph$c */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/CallsStatsGraph$c.class */
    public static final class C0115c<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return a.a(Float.valueOf(((i) t).f()), Float.valueOf(((i) t2).f()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallsStatsGraph(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        k.g(context, "context");
        k.g(attributeSet, "attributeSet");
        e eVar = new e(context);
        this.f241f = eVar;
        addView((View) eVar, (ViewGroup.LayoutParams) new FrameLayout.LayoutParams(-1, -1));
        eVar.setTouchEnabled(false);
        c description = eVar.getDescription();
        k.c(description, "lineChart.description");
        description.g(false);
        g.e.a.a.d.e legend = eVar.getLegend();
        k.c(legend, "lineChart.legend");
        legend.g(false);
        g.e.a.a.d.i axisRight = eVar.getAxisRight();
        k.c(axisRight, "lineChart.axisRight");
        axisRight.g(false);
        g.e.a.a.d.i axisLeft = eVar.getAxisLeft();
        k.c(axisLeft, "lineChart.axisLeft");
        axisLeft.E(0.0f);
        g.e.a.a.d.i axisLeft2 = eVar.getAxisLeft();
        k.c(axisLeft2, "lineChart.axisLeft");
        axisLeft2.f0(0.0f);
        g.e.a.a.d.i axisLeft3 = eVar.getAxisLeft();
        k.c(axisLeft3, "lineChart.axisLeft");
        axisLeft3.g0(0.0f);
        g.e.a.a.d.i axisLeft4 = eVar.getAxisLeft();
        k.c(axisLeft4, "lineChart.axisLeft");
        axisLeft4.I(1.0f);
        g.e.a.a.d.i axisLeft5 = eVar.getAxisLeft();
        k.c(axisLeft5, "lineChart.axisLeft");
        axisLeft5.J(C0146e0.m952g(context, C0176o.m882b(context) ? 2131099710 : 2131099709));
        g.e.a.a.d.i axisLeft6 = eVar.getAxisLeft();
        k.c(axisLeft6, "lineChart.axisLeft");
        axisLeft6.K(1.0f);
        eVar.getAxisLeft().G(false);
        g.e.a.a.d.i axisLeft7 = eVar.getAxisLeft();
        k.c(axisLeft7, "lineChart.axisLeft");
        axisLeft7.h(C0146e0.m952g(context, 2131099712));
        g.e.a.a.d.i axisLeft8 = eVar.getAxisLeft();
        k.c(axisLeft8, "lineChart.axisLeft");
        axisLeft8.P(new a());
        h xAxis = eVar.getXAxis();
        k.c(xAxis, "lineChart.xAxis");
        xAxis.E(0.0f);
        h xAxis2 = eVar.getXAxis();
        k.c(xAxis2, "lineChart.xAxis");
        xAxis2.D(29);
        h xAxis3 = eVar.getXAxis();
        k.c(xAxis3, "lineChart.xAxis");
        xAxis3.T(h.a.BOTTOM);
        eVar.getXAxis().H(false);
        h xAxis4 = eVar.getXAxis();
        k.c(xAxis4, "lineChart.xAxis");
        xAxis4.h(C0146e0.m952g(context, 2131099712));
        eVar.getXAxis().M(5, true);
        eVar.getXAxis().F(false);
        h xAxis5 = eVar.getXAxis();
        k.c(xAxis5, "lineChart.xAxis");
        xAxis5.P(new b(this));
        this.f243h = kotlin.s.k.g();
    }

    /* renamed from: b */
    public final void m1038b() {
        this.f241f.f(400, b.a);
    }

    public final List<Integer> getData() {
        return this.f243h;
    }

    public final void setData(List<Integer> list) {
        k.g(list, "value");
        this.f243h = list;
        List f0 = kotlin.s.k.f0(list, 30);
        ArrayList arrayList = new ArrayList(kotlin.s.k.q(f0, 10));
        int i = 0;
        for (Object obj : f0) {
            if (i >= 0) {
                arrayList.add(new i((30 - i) - 1, ((Number) obj).intValue()));
                i++;
            } else {
                kotlin.s.k.p();
                throw null;
            }
        }
        g.e.a.a.h.b.e kVar = new g.e.a.a.e.k(kotlin.s.k.k0(kotlin.s.k.d0(arrayList, new C0115c())), "");
        kVar.u0(false);
        kVar.V0(k.a.HORIZONTAL_BEZIER);
        kVar.T0(false);
        kVar.U0(false);
        kVar.Q0(true);
        Context context = getContext();
        kotlin.w.c.k.c(context, "context");
        kVar.H0(C0176o.m882b(context) ? -16777216 : -1);
        kVar.S0(1.0f);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        Context context2 = getContext();
        kotlin.w.c.k.c(context2, "context");
        int g = C0146e0.m952g(context2, 2131099711);
        Context context3 = getContext();
        kotlin.w.c.k.c(context3, "context");
        kVar.R0(new GradientDrawable(orientation, new int[]{g, C0146e0.m952g(context3, 2131099708)}));
        j jVar = new j(new g.e.a.a.h.b.e[]{kVar});
        jVar.t(false);
        this.f241f.setData(jVar);
        this.f241f.invalidate();
    }
}
