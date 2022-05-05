package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.circularreveal.AbstractC2987d;
import com.google.android.material.circularreveal.C2985c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/cardview/CircularRevealCardView.class */
public class CircularRevealCardView extends CardView implements AbstractC2987d {

    /* renamed from: e */
    private final C2985c f18184e = new C2985c(this);

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1207a() {
        this.f18184e.m1221a();
    }

    @Override // com.google.android.material.circularreveal.C2985c.AbstractC2986a
    /* renamed from: a */
    public final void mo1209a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1206a(Drawable drawable) {
        this.f18184e.m1218a(drawable);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1205a(AbstractC2987d.C2991d dVar) {
        this.f18184e.m1217a(dVar);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a_ */
    public final void mo1204a_(int i) {
        this.f18184e.m1220a(i);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: b */
    public final void mo1203b() {
        this.f18184e.m1216b();
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: d */
    public final int mo1202d() {
        return this.f18184e.m1213d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C2985c cVar = this.f18184e;
        if (cVar != null) {
            cVar.m1219a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.C2985c.AbstractC2986a
    /* renamed from: e */
    public final boolean mo1208e() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        C2985c cVar = this.f18184e;
        return cVar != null ? cVar.m1212e() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: l_ */
    public final AbstractC2987d.C2991d mo1201l_() {
        return this.f18184e.m1214c();
    }
}
