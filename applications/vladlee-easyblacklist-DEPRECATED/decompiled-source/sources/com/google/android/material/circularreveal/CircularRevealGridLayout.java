package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.google.android.material.circularreveal.AbstractC2987d;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealGridLayout.class */
public class CircularRevealGridLayout extends GridLayout implements AbstractC2987d {

    /* renamed from: a */
    private final C2985c f18170a = new C2985c(this);

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1207a() {
        this.f18170a.m1221a();
    }

    @Override // com.google.android.material.circularreveal.C2985c.AbstractC2986a
    /* renamed from: a */
    public final void mo1209a(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1206a(Drawable drawable) {
        this.f18170a.m1218a(drawable);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a */
    public final void mo1205a(AbstractC2987d.C2991d dVar) {
        this.f18170a.m1217a(dVar);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: a_ */
    public final void mo1204a_(int i) {
        this.f18170a.m1220a(i);
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: b */
    public final void mo1203b() {
        this.f18170a.m1216b();
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: d */
    public final int mo1202d() {
        return this.f18170a.m1213d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C2985c cVar = this.f18170a;
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
        C2985c cVar = this.f18170a;
        return cVar != null ? cVar.m1212e() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.AbstractC2987d
    /* renamed from: l_ */
    public final AbstractC2987d.C2991d mo1201l_() {
        return this.f18170a.m1214c();
    }
}
