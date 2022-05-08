package com.google.android.material.card;

import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import com.google.android.material.C2913a;
/* renamed from: com.google.android.material.card.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/card/a.class */
final class C2974a {

    /* renamed from: a */
    private final MaterialCardView f18077a;

    /* renamed from: b */
    private int f18078b;

    /* renamed from: c */
    private int f18079c;

    public C2974a(MaterialCardView materialCardView) {
        this.f18077a = materialCardView;
    }

    /* renamed from: a */
    public final void m1317a(TypedArray typedArray) {
        this.f18078b = typedArray.getColor(C2913a.C2924k.f17698cf, -1);
        this.f18079c = typedArray.getDimensionPixelSize(C2913a.C2924k.f17699cg, 0);
        MaterialCardView materialCardView = this.f18077a;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.f18077a.m8853f());
        int i = this.f18078b;
        if (i != -1) {
            gradientDrawable.setStroke(this.f18079c, i);
        }
        materialCardView.setForeground(gradientDrawable);
        this.f18077a.m8858a(this.f18077a.m8850n_() + this.f18079c, this.f18077a.m8849o_() + this.f18079c, this.f18077a.m8854c() + this.f18079c, this.f18077a.m8848p_() + this.f18079c);
    }
}
