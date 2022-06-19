package com.hiya.stingray.p030ui.local.location;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.C0241e;
import com.hiya.stingray.o;
import com.hiya.stingray.t.h1.i;
import com.hiya.stingray.util.C1808e0;
import com.hiya.stingray.util.C1843t;
import java.util.HashMap;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.LocationSelectorView */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/LocationSelectorView.class */
public final class LocationSelectorView extends LinearLayout {

    /* renamed from: f */
    private i f4731f;

    /* renamed from: g */
    private HashMap f4732g;

    public LocationSelectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(context, 2131493052, this);
    }

    /* renamed from: b */
    private final void m1336b() {
        i iVar = this.f4731f;
        if (iVar == null) {
            Context context = getContext();
            k.c(context, "context");
            int m952g = C1808e0.m952g(context, 2131099884);
            LinearLayout linearLayout = (LinearLayout) m1337a(o.f0);
            k.c(linearLayout, "container");
            linearLayout.setBackground(getContext().getDrawable(2131231154));
            int i = o.p4;
            ((TextView) m1337a(i)).setTextColor(m952g);
            int i2 = o.C1;
            ((ImageView) m1337a(i2)).setImageResource(2131231095);
            C0241e.m5890c((ImageView) m1337a(i2), ColorStateList.valueOf(m952g));
            TextView textView = (TextView) m1337a(i);
            k.c(textView, "text");
            textView.setText(getContext().getString(2131820972));
            return;
        }
        Context context2 = getContext();
        k.c(context2, "context");
        int m952g2 = C1808e0.m952g(context2, 2131099690);
        LinearLayout linearLayout2 = (LinearLayout) m1337a(o.f0);
        k.c(linearLayout2, "container");
        linearLayout2.setBackground(getContext().getDrawable(2131231153));
        int i3 = o.p4;
        ((TextView) m1337a(i3)).setTextColor(m952g2);
        int i4 = o.C1;
        ((ImageView) m1337a(i4)).setImageResource(2131231010);
        C0241e.m5890c((ImageView) m1337a(i4), ColorStateList.valueOf(m952g2));
        TextView textView2 = (TextView) m1337a(i3);
        k.c(textView2, "text");
        i.a f = iVar.f();
        i.a aVar = i.a.GPS;
        textView2.setText(f == aVar ? getContext().getString(2131820967) : C1843t.m847b(iVar.e()) ? iVar.e() : iVar.f() == aVar ? getContext().getString(2131820962) : getContext().getString(2131820972));
    }

    /* renamed from: a */
    public View m1337a(int i) {
        if (this.f4732g == null) {
            this.f4732g = new HashMap();
        }
        View view = (View) this.f4732g.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f4732g.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    public final i getPlace() {
        return this.f4731f;
    }

    public final void setPlace(i iVar) {
        this.f4731f = iVar;
        m1336b();
    }
}
