package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
/* loaded from: classes-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView {

    /* renamed from: e */
    private final C2974a f18076e;

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17444j);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17697ce, i, C2913a.C2923j.f17531n, new int[0]);
        this.f18076e = new C2974a(this);
        this.f18076e.m1317a(a);
        a.recycle();
    }
}
