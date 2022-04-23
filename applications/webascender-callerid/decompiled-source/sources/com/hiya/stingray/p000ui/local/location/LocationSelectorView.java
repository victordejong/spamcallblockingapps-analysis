package com.hiya.stingray.p000ui.local.location;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.e;
import com.hiya.stingray.o;
import com.hiya.stingray.t.h1.i;
import com.hiya.stingray.util.C0146e0;
import com.hiya.stingray.util.C0181t;
import java.util.HashMap;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.LocationSelectorView */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/LocationSelectorView.class */
public final class LocationSelectorView extends LinearLayout {

    /* renamed from: f */
    private i f52f;

    /* renamed from: g */
    private HashMap f53g;

    public LocationSelectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(context, 2131493052, this);
    }

    /* renamed from: b */
    private final void m1336b() {
        i iVar = this.f52f;
        if (iVar != null) {
            Context context = getContext();
            k.c(context, "context");
            int g = C0146e0.m952g(context, 2131099690);
            LinearLayout linearLayout = (LinearLayout) m1337a(o.f0);
            k.c(linearLayout, "container");
            linearLayout.setBackground(getContext().getDrawable(2131231153));
            int i = o.p4;
            ((TextView) m1337a(i)).setTextColor(g);
            int i2 = o.C1;
            ((ImageView) m1337a(i2)).setImageResource(2131231010);
            e.c((ImageView) m1337a(i2), ColorStateList.valueOf(g));
            TextView textView = (TextView) m1337a(i);
            k.c(textView, "text");
            i.a f = iVar.f();
            i.a aVar = i.a.GPS;
            textView.setText(f == aVar ? getContext().getString(2131820967) : C0181t.m847b(iVar.e()) ? iVar.e() : iVar.f() == aVar ? getContext().getString(2131820962) : getContext().getString(2131820972));
            return;
        }
        Context context2 = getContext();
        k.c(context2, "context");
        int g2 = C0146e0.m952g(context2, 2131099884);
        LinearLayout linearLayout2 = (LinearLayout) m1337a(o.f0);
        k.c(linearLayout2, "container");
        linearLayout2.setBackground(getContext().getDrawable(2131231154));
        int i3 = o.p4;
        ((TextView) m1337a(i3)).setTextColor(g2);
        int i4 = o.C1;
        ((ImageView) m1337a(i4)).setImageResource(2131231095);
        e.c((ImageView) m1337a(i4), ColorStateList.valueOf(g2));
        TextView textView2 = (TextView) m1337a(i3);
        k.c(textView2, "text");
        textView2.setText(getContext().getString(2131820972));
    }

    /* renamed from: a */
    public View m1337a(int i) {
        if (this.f53g == null) {
            this.f53g = new HashMap();
        }
        View view = (View) this.f53g.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f53g.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    public final i getPlace() {
        return this.f52f;
    }

    public final void setPlace(i iVar) {
        this.f52f = iVar;
        m1336b();
    }
}
