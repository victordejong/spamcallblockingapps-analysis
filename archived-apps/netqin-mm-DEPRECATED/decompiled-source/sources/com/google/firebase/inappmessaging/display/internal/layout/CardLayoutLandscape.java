package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5627b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape.class */
public class CardLayoutLandscape extends BaseModalLayout {

    /* renamed from: i */
    public static double f30974i = 0.6d;

    /* renamed from: e */
    public View f30975e;

    /* renamed from: f */
    public View f30976f;

    /* renamed from: g */
    public View f30977g;

    /* renamed from: h */
    public View f30978h;

    public CardLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        C5562j.m23515a("Layout image");
        int b = m7300b(this.f30975e);
        m7302a(this.f30975e, 0, 0, b, m7304a(this.f30975e));
        C5562j.m23515a("Layout title");
        int a = m7304a(this.f30976f);
        m7302a(this.f30976f, b, 0, measuredWidth, a);
        C5562j.m23515a("Layout scroll");
        m7302a(this.f30977g, b, a, measuredWidth, a + m7304a(this.f30977g));
        C5562j.m23515a("Layout action bar");
        m7302a(this.f30978h, b, measuredHeight - m7304a(this.f30978h), measuredWidth, measuredHeight);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f30975e = m7297d(C5539f.image_view);
        this.f30976f = m7297d(C5539f.message_title);
        this.f30977g = m7297d(C5539f.body_scroll);
        View d = m7297d(C5539f.action_bar);
        this.f30978h = d;
        int i3 = 0;
        List<View> asList = Arrays.asList(this.f30976f, this.f30977g, d);
        int b = m7301b(i);
        int a = m7306a(i2);
        double d2 = f30974i;
        double d3 = b;
        Double.isNaN(d3);
        int a2 = m7305a((int) (d2 * d3), 4);
        C5562j.m23515a("Measuring image");
        C5627b.m23383b(this.f30975e, b, a);
        if (m7300b(this.f30975e) > a2) {
            C5562j.m23515a("Image exceeded maximum width, remeasuring image");
            C5627b.m23382c(this.f30975e, a2, a);
        }
        int a3 = m7304a(this.f30975e);
        int b2 = m7300b(this.f30975e);
        int i4 = b - b2;
        float f = b2;
        C5562j.m23513a("Max col widths (l, r)", f, i4);
        C5562j.m23515a("Measuring title");
        C5627b.m23385a(this.f30976f, i4, a3);
        C5562j.m23515a("Measuring action bar");
        C5627b.m23385a(this.f30978h, i4, a3);
        C5562j.m23515a("Measuring scroll view");
        C5627b.m23383b(this.f30977g, i4, (a3 - m7304a(this.f30976f)) - m7304a(this.f30978h));
        for (View view : asList) {
            i3 = Math.max(m7300b(view), i3);
        }
        C5562j.m23513a("Measured columns (l, r)", f, i3);
        int i5 = b2 + i3;
        C5562j.m23513a("Measured dims", i5, a3);
        setMeasuredDimension(i5, a3);
    }
}
